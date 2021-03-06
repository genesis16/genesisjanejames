<?php

function instant_ide_console_template() {
    
    /* Console Content Start */

// Web Console v0.9.7 (2016-11-05)
//
// Author: Nickolay Kovalev (http://nickola.ru)
// GitHub: https://github.com/nickola/web-console
// URL: http://web-console.org

// Include the necessary config files.
require_once( '../dev-path.php' );
require_once( 'includes/console-config.php' );

// Code below is automatically generated from different components
// For more information see: https://github.com/nickola/web-console
//
// Used components:
//   - jQuery JavaScript Library: https://github.com/jquery/jquery
//   - jQuery Terminal Emulator: https://github.com/jcubic/jquery.terminal
//   - jQuery Mouse Wheel Plugin: https://github.com/brandonaaron/jquery-mousewheel
//   - PHP JSON-RPC 2.0 Server/Client Implementation: https://github.com/sergeyfast/eazy-jsonrpc
//   - Normalize.css: https://github.com/necolas/normalize.css

/**
 * JSON RPC Server for Eaze
 *
 * Reads $_GET['rawRequest'] or php://input for Request Data
 * @link       http://www.jsonrpc.org/specification
 * @link       http://dojotoolkit.org/reference-guide/1.8/dojox/rpc/smd.html
 * @package    Eaze
 * @subpackage Model
 * @author     Sergeyfast
 */
class BaseJsonRpcServer {

    const ParseError = -32700,
        InvalidRequest = -32600,
        MethodNotFound = -32601,
        InvalidParams = -32602,
        InternalError = -32603;

    /**
     * Exposed Instances
     * @var object[]    namespace => method
     */
    protected $instances = array();

    /**
     * Decoded Json Request
     * @var object|array
     */
    protected $request;

    /**
     * Array of Received Calls
     * @var array
     */
    protected $calls = array();

    /**
     * Array of Responses for Calls
     * @var array
     */
    protected $response = array();

    /**
     * Has Calls Flag (not notifications)
     * @var bool
     */
    protected $hasCalls = false;

    /**
     * Is Batch Call in using
     * @var bool
     */
    private $isBatchCall = false;

    /**
     * Hidden Methods
     * @var array
     */
    protected $hiddenMethods = array(
        'execute', '__construct', 'registerinstance'
    );

    /**
     * Content Type
     * @var string
     */
    public $ContentType = 'application/json';

    /**
     * Allow Cross-Domain Requests
     * @var bool
     */
    public $IsXDR = true;

    /**
     * Max Batch Calls
     * @var int
     */
    public $MaxBatchCalls = 10;

    /**
     * Error Messages
     * @var array
     */
    protected $errorMessages = array(
        self::ParseError     => 'Parse error',
        self::InvalidRequest => 'Invalid Request',
        self::MethodNotFound => 'Method not found',
        self::InvalidParams  => 'Invalid params',
        self::InternalError  => 'Internal error',
    );


    /**
     * Cached Reflection Methods
     * @var ReflectionMethod[]
     */
    private $reflectionMethods = array();


    /**
     * Validate Request
     * @return int error
     */
    private function getRequest() {
        $error = null;

        do {
            if ( array_key_exists( 'REQUEST_METHOD', $_SERVER ) && $_SERVER['REQUEST_METHOD'] != 'POST' ) {
                $error = self::InvalidRequest;
                break;
            };

            $request       = !empty( $_GET['rawRequest'] ) ? $_GET['rawRequest'] : file_get_contents( 'php://input' );
            $this->request = json_decode( $request, false );
            if ( $this->request === null ) {
                $error = self::ParseError;
                break;
            }

            if ( $this->request === array() ) {
                $error = self::InvalidRequest;
                break;
            }

            // check for batch call
            if ( is_array( $this->request ) ) {
                if( count( $this->request ) > $this->MaxBatchCalls ) {
                    $error = self::InvalidRequest;
                    break;
                }

                $this->calls       = $this->request;
                $this->isBatchCall = true;
            } else {
                $this->calls[] = $this->request;
            }
        } while ( false );

        return $error;
    }


    /**
     * Get Error Response
     * @param int   $code
     * @param mixed $id
     * @param null  $data
     * @return array
     */
    private function getError( $code, $id = null, $data = null ) {
        return array(
            'jsonrpc' => '2.0',
            'id'      => $id,
            'error'   => array(
                'code'    => $code,
                'message' => isset( $this->errorMessages[$code] ) ? $this->errorMessages[$code] : $this->errorMessages[self::InternalError],
                'data'    => $data,
            ),
        );
    }


    /**
     * Check for jsonrpc version and correct method
     * @param object $call
     * @return array|null
     */
    private function validateCall( $call ) {
        $result = null;
        $error  = null;
        $data   = null;
        $id     = is_object( $call ) && property_exists( $call, 'id' ) ? $call->id : null;
        do {
            if ( !is_object( $call ) ) {
                $error = self::InvalidRequest;
                break;
            }

            // hack for inputEx smd tester
            if ( property_exists( $call, 'version' ) ) {
                if ( $call->version == 'json-rpc-2.0' ) {
                    $call->jsonrpc = '2.0';
                }
            }

            if ( !property_exists( $call, 'jsonrpc' ) || $call->jsonrpc != '2.0' ) {
                $error = self::InvalidRequest;
                break;
            }

            $fullMethod = property_exists( $call, 'method' ) ? $call->method : '';
            $methodInfo = explode( '.', $fullMethod, 2 );
            $namespace  = array_key_exists( 1, $methodInfo ) ? $methodInfo[0] : '';
            $method     = $namespace ? $methodInfo[1] : $fullMethod;
            if ( !$method || !array_key_exists( $namespace, $this->instances ) || !method_exists( $this->instances[$namespace], $method ) || in_array( strtolower( $method ), $this->hiddenMethods ) ) {
                $error = self::MethodNotFound;
                break;
            }

            if ( !array_key_exists( $fullMethod, $this->reflectionMethods ) ) {
                $this->reflectionMethods[$fullMethod] = new ReflectionMethod( $this->instances[$namespace], $method );
            }

            /** @var $params array */
            $params     = property_exists( $call, 'params' ) ? $call->params : null;
            $paramsType = gettype( $params );
            if ( $params !== null && $paramsType != 'array' && $paramsType != 'object' ) {
                $error = self::InvalidParams;
                break;
            }

            // check parameters
            switch ( $paramsType ) {
                case 'array':
                    $totalRequired = 0;
                    // doesn't hold required, null, required sequence of params
                    foreach ( $this->reflectionMethods[$fullMethod]->getParameters() as $param ) {
                        if ( !$param->isDefaultValueAvailable() ) {
                            $totalRequired++;
                        }
                    }

                    if ( count( $params ) < $totalRequired ) {
                        $error = self::InvalidParams;
                        $data  = sprintf( 'Check numbers of required params (got %d, expected %d)', count( $params ), $totalRequired );
                    }
                    break;
                case 'object':
                    foreach ( $this->reflectionMethods[$fullMethod]->getParameters() as $param ) {
                        if ( !$param->isDefaultValueAvailable() && !array_key_exists( $param->getName(), $params ) ) {
                            $error = self::InvalidParams;
                            $data  = $param->getName() . ' not found';

                            break 3;
                        }
                    }
                    break;
                case 'NULL':
                    if ( $this->reflectionMethods[$fullMethod]->getNumberOfRequiredParameters() > 0 ) {
                        $error = self::InvalidParams;
                        $data  = 'Empty required params';
                        break 2;
                    }
                    break;
            }

        } while ( false );

        if ( $error ) {
            $result = array( $error, $id, $data );
        }

        return $result;
    }


    /**
     * Process Call
     * @param $call
     * @return array|null
     */
    private function processCall( $call ) {
        $id        = property_exists( $call, 'id' ) ? $call->id : null;
        $params    = property_exists( $call, 'params' ) ? $call->params : array();
        $result    = null;
        $namespace = substr( $call->method, 0, strpos( $call->method, '.' ) );

        try {
            // set named parameters
            if ( is_object( $params ) ) {
                $newParams = array();
                foreach ( $this->reflectionMethods[$call->method]->getParameters() as $param ) {
                    $paramName    = $param->getName();
                    $defaultValue = $param->isDefaultValueAvailable() ? $param->getDefaultValue() : null;
                    $newParams[]  = property_exists( $params, $paramName ) ? $params->$paramName : $defaultValue;
                }

                $params = $newParams;
            }

            // invoke
            $result = $this->reflectionMethods[$call->method]->invokeArgs( $this->instances[$namespace], $params );
        } catch ( Exception $e ) {
            return $this->getError( $e->getCode(), $id, $e->getMessage() );
        }

        if ( !$id && $id !== 0 ) {
            return null;
        }

        return array(
            'jsonrpc' => '2.0',
            'result'  => $result,
            'id'      => $id,
        );
    }


    /**
     * Create new Instance
     * @param object $instance
     */
    public function __construct( $instance = null ) {
        if ( get_parent_class( $this ) ) {
            $this->RegisterInstance( $this, '' );
        } else if ( $instance ) {
            $this->RegisterInstance( $instance, '' );
        }
    }


    /**
     * Register Instance
     * @param object $instance
     * @param string $namespace default is empty string
     * @return $this
     */
    public function RegisterInstance( $instance, $namespace = '' ) {
        $this->instances[$namespace]                = $instance;
        $this->instances[$namespace]->errorMessages = $this->errorMessages;

        return $this;
    }


    /**
     * Handle Requests
     */
    public function Execute() {
        do {
            // check for SMD Discovery request
            if ( array_key_exists( 'smd', $_GET ) ) {
                $this->response[] = $this->getServiceMap();
                $this->hasCalls   = true;
                break;
            }

            $error = $this->getRequest();
            if ( $error ) {
                $this->response[] = $this->getError( $error );
                $this->hasCalls   = true;
                break;
            }

            foreach ( $this->calls as $call ) {
                $error = $this->validateCall( $call );
                if ( $error ) {
                    $this->response[] = $this->getError( $error[0], $error[1], $error[2] );
                    $this->hasCalls   = true;
                } else {
                    $result = $this->processCall( $call );
                    if ( $result ) {
                        $this->response[] = $result;
                        $this->hasCalls   = true;
                    }
                }
            }
        } while ( false );

        // flush response
        if ( $this->hasCalls ) {
            if ( !$this->isBatchCall ) {
                $this->response = reset( $this->response );
            }

            if ( !headers_sent() ) {
                // Set Content Type
                if ( $this->ContentType ) {
                    header( 'Content-Type: ' . $this->ContentType );
                }

                // Allow Cross Domain Requests
                if ( $this->IsXDR ) {
                    header( 'Access-Control-Allow-Origin: *' );
                    header( 'Access-Control-Allow-Headers: x-requested-with, content-type' );
                }
            }

            echo json_encode( $this->response );
            $this->resetVars();
        }
    }


    /**
     * Get Doc Comment
     * @param $comment
     * @return string|null
     */
    private function getDocDescription( $comment ) {
        $result = null;
        if ( preg_match( '/\*\s+([^@]*)\s+/s', $comment, $matches ) ) {
            $result = str_replace( '*', "\n", trim( trim( $matches[1], '*' ) ) );
        }

        return $result;
    }


    /**
     * Get Service Map
     * Maybe not so good realization of auto-discover via doc blocks
     * @return array
     */
    private function getServiceMap() {
        $result = array(
            'transport'   => 'POST',
            'envelope'    => 'JSON-RPC-2.0',
            'SMDVersion'  => '2.0',
            'contentType' => 'application/json',
            'target'      => !empty( $_SERVER['REQUEST_URI'] ) ? substr( $_SERVER['REQUEST_URI'], 0, strpos( $_SERVER['REQUEST_URI'], '?' ) ) : '',
            'services'    => array(),
            'description' => '',
        );

        foreach( $this->instances as $namespace => $instance ) {
            $rc = new ReflectionClass( $instance);

            // Get Class Description
            if ( $rcDocComment = $this->getDocDescription( $rc->getDocComment() ) ) {
                $result['description'] .= $rcDocComment . PHP_EOL;
            }

            foreach ( $rc->getMethods() as $method ) {
                /** @var ReflectionMethod $method */
                if ( !$method->isPublic() || in_array( strtolower( $method->getName() ), $this->hiddenMethods ) ) {
                    continue;
                }

                $methodName = ( $namespace ? $namespace . '.' : '' ) . $method->getName();
                $docComment = $method->getDocComment();

                $result['services'][$methodName] = array( 'parameters' => array() );

                // set description
                if ( $rmDocComment = $this->getDocDescription( $docComment ) ) {
                    $result['services'][$methodName]['description'] = $rmDocComment;
                }

                // @param\s+([^\s]*)\s+([^\s]*)\s*([^\s\*]*)
                $parsedParams = array();
                if ( preg_match_all( '/@param\s+([^\s]*)\s+([^\s]*)\s*([^\n\*]*)/', $docComment, $matches ) ) {
                    foreach ( $matches[2] as $number => $name ) {
                        $type = $matches[1][$number];
                        $desc = $matches[3][$number];
                        $name = trim( $name, '$' );

                        $param               = array( 'type' => $type, 'description' => $desc );
                        $parsedParams[$name] = array_filter( $param );
                    }
                };

                // process params
                foreach ( $method->getParameters() as $parameter ) {
                    $name  = $parameter->getName();
                    $param = array( 'name' => $name, 'optional' => $parameter->isDefaultValueAvailable() );
                    if ( array_key_exists( $name, $parsedParams ) ) {
                        $param += $parsedParams[$name];
                    }

                    if ( $param['optional'] ) {
                        $param['default'] = $parameter->getDefaultValue();
                    }

                    $result['services'][$methodName]['parameters'][] = $param;
                }

                // set return type
                if ( preg_match( '/@return\s+([^\s]+)\s*([^\n\*]+)/', $docComment, $matches ) ) {
                    $returns                                    = array( 'type' => $matches[1], 'description' => trim( $matches[2] ) );
                    $result['services'][$methodName]['returns'] = array_filter( $returns );
                }
            }
        }

        return $result;
    }


    /**
     * Reset Local Class Vars after Execute
     */
    private function resetVars() {
        $this->response = $this->calls = array();
        $this->hasCalls = $this->isBatchCall = false;
    }

}

// Initializing
if (!isset($NO_LOGIN)) $NO_LOGIN = false;
if (!isset($ACCOUNTS)) $ACCOUNTS = array();
if (null !== IIDE_CON_USER && null !== IIDE_CON_PASS && IIDE_CON_USER && IIDE_CON_PASS) $ACCOUNTS[IIDE_CON_USER] = IIDE_CON_PASS;
if (!isset($PASSWORD_HASH_ALGORITHM)) $PASSWORD_HASH_ALGORITHM = '';
if (!isset($HOME_DIRECTORY)) $HOME_DIRECTORY = '';
$IS_CONFIGURED = ($NO_LOGIN || count($ACCOUNTS) >= 1) ? true : false;

// Utilities
function is_empty_string($string) {
    return strlen($string) <= 0;
}

function is_equal_strings($string1, $string2) {
    return strcmp($string1, $string2) == 0;
}

function get_hash($algorithm, $string) {
    return hash($algorithm, trim((string) $string));
}

// Command execution
function execute_command($command) {
    $descriptors = array(
        0 => array('pipe', 'r'), // STDIN
        1 => array('pipe', 'w'), // STDOUT
        2 => array('pipe', 'w')  // STDERR
    );

    $process = proc_open($command . ' 2>&1', $descriptors, $pipes);
    if (!is_resource($process)) die("Can't execute command.");

    // Nothing to push to STDIN
    fclose($pipes[0]);

    $output = stream_get_contents($pipes[1]);
    fclose($pipes[1]);

    $error = stream_get_contents($pipes[2]);
    fclose($pipes[2]);

    // All pipes must be closed before "proc_close"
    $code = proc_close($process);

    return $output;
}

// Command parsing
function parse_command($command) {
    $value = ltrim((string) $command);

    if (!is_empty_string($value)) {
        $values = explode(' ', $value);
        $values_total = count($values);

        if ($values_total > 1) {
            $value = $values[$values_total - 1];

            for ($index = $values_total - 2; $index >= 0; $index--) {
                $value_item = $values[$index];

                if (substr($value_item, -1) == '\\') $value = $value_item . ' ' . $value;
                else break;
            }
        }
    }

    return $value;
}

// RPC Server
class WebConsoleRPCServer extends BaseJsonRpcServer {
    protected $home_directory = '';

    private function error($message) {
        throw new Exception($message);
    }

    // Authentication
    private function authenticate_user($user, $password) {
        $user = trim((string) $user);
        $password = trim((string) $password);

        if ($user && $password) {
            global $ACCOUNTS, $PASSWORD_HASH_ALGORITHM;

            if (isset($ACCOUNTS[$user]) && !is_empty_string($ACCOUNTS[$user])) {
                if ($PASSWORD_HASH_ALGORITHM) $password = get_hash($PASSWORD_HASH_ALGORITHM, $password);

                if (is_equal_strings($password, $ACCOUNTS[$user]))
                    return $user . ':' . get_hash('sha256', $password);
            }
        }

        throw new Exception("Incorrect user or password");
    }

    private function authenticate_token($token) {
        global $NO_LOGIN;
        if ($NO_LOGIN) return true;

        $token = trim((string) $token);
        $token_parts = explode(':', $token, 2);

        if (count($token_parts) == 2) {
            $user = trim((string) $token_parts[0]);
            $password_hash = trim((string) $token_parts[1]);

            if ($user && $password_hash) {
                global $ACCOUNTS;

                if (isset($ACCOUNTS[$user]) && !is_empty_string($ACCOUNTS[$user])) {
                    $real_password_hash = get_hash('sha256', $ACCOUNTS[$user]);
                    if (is_equal_strings($password_hash, $real_password_hash)) return $user;
                }
            }
        }

        throw new Exception("Incorrect user or password");
    }

    private function get_home_directory($user) {
        global $HOME_DIRECTORY;

        if (is_string($HOME_DIRECTORY)) {
            if (!is_empty_string($HOME_DIRECTORY)) return $HOME_DIRECTORY;
        }
        else if (is_string($user) && !is_empty_string($user) && isset($HOME_DIRECTORY[$user]) && !is_empty_string($HOME_DIRECTORY[$user]))
            return $HOME_DIRECTORY[$user];

        return getcwd();
    }

    // Environment
    private function get_environment() {
        $hostname = function_exists('gethostname') ? gethostname() : null;
        return array('path' => getcwd(), 'hostname' => $hostname);
    }

    private function set_environment($environment) {
        $environment = !empty($environment) ? (array) $environment : array();
        $path = (isset($environment['path']) && !is_empty_string($environment['path'])) ? $environment['path'] : $this->home_directory;

        if (!is_empty_string($path)) {
            if (is_dir($path)) {
                if (!@chdir($path)) return array('output' => "Unable to change directory to current working directory, updating current directory",
                                                 'environment' => $this->get_environment());
            }
            else return array('output' => "Current working directory not found, updating current directory",
                              'environment' => $this->get_environment());
        }
    }

    // Initialization
    private function initialize($token, $environment) {
        $user = $this->authenticate_token($token);
        $this->home_directory = $this->get_home_directory($user);
        $result = $this->set_environment($environment);

        if ($result) return $result;
    }

    // Methods
    public function login($user, $password) {
        $result = array('token' => $this->authenticate_user($user, $password),
                        'environment' => $this->get_environment());

        $home_directory = $this->get_home_directory($user);
        if (!is_empty_string($home_directory)) {
            if (is_dir($home_directory)) $result['environment']['path'] = $home_directory;
            else $result['output'] = "Home directory not found: ". $home_directory;
        }

        return $result;
    }

    public function cd($token, $environment, $path) {
        $result = $this->initialize($token, $environment);
        if ($result) return $result;

        $path = trim((string) $path);
        if (is_empty_string($path)) $path = $this->home_directory;

        if (!is_empty_string($path)) {
            if (is_dir($path)) {
                if (!@chdir($path)) return array('output' => "cd: ". $path . ": Unable to change directory");
            }
            else return array('output' => "cd: ". $path . ": No such directory");
        }

        return array('environment' => $this->get_environment());
    }

    public function completion($token, $environment, $pattern, $command) {
        $result = $this->initialize($token, $environment);
        if ($result) return $result;

        $scan_path = '';
        $completion_prefix = '';
        $completion = array();

        if (!empty($pattern)) {
            if (!is_dir($pattern)) {
                $pattern = dirname($pattern);
                if ($pattern == '.') $pattern = '';
            }

            if (!empty($pattern)) {
                if (is_dir($pattern)) {
                    $scan_path = $completion_prefix = $pattern;
                    if (substr($completion_prefix, -1) != '/') $completion_prefix .= '/';
                }
            }
            else $scan_path = getcwd();
        }
        else $scan_path = getcwd();

        if (!empty($scan_path)) {
            // Loading directory listing
            $completion = array_values(array_diff(scandir($scan_path), array('..', '.')));
            natsort($completion);

            // Prefix
            if (!empty($completion_prefix) && !empty($completion)) {
                foreach ($completion as &$value) $value = $completion_prefix . $value;
            }

            // Pattern
            if (!empty($pattern) && !empty($completion)) {
                // For PHP version that does not support anonymous functions (available since PHP 5.3.0)
                function filter_pattern($value) {
                    global $pattern;
                    return !strncmp($pattern, $value, strlen($pattern));
                }

                $completion = array_values(array_filter($completion, 'filter_pattern'));
            }
        }

        return array('completion' => $completion);
    }

    public function run($token, $environment, $command) {
        $result = $this->initialize($token, $environment);
        if ($result) return $result;

        $output = ($command && !is_empty_string($command)) ? execute_command($command) : '';
        if ($output && substr($output, -1) == "\n") $output = substr($output, 0, -1);

        return array('output' => $output);
    }
}

// Processing request
if (array_key_exists('REQUEST_METHOD', $_SERVER) && $_SERVER['REQUEST_METHOD'] == 'POST') {
    $rpc_server = new WebConsoleRPCServer();
    $rpc_server->Execute();
}
else if (!$IS_CONFIGURED) {
?>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <title>Console</title>
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <meta name="robots" content="noindex, nofollow">
        <link rel="stylesheet" href="assets/css/style.css">
    </head>
    <body class="instant-ide-theme-dark">
        <div class="configure">
            <p>The Console must be configured before use:</p>
            <p>Just edit the /instant-ide/console/console-config.php file, adding the appropriate values.</p>
        </div>
    </body>
</html>
<?php
}
else { ?>
<!DOCTYPE html>
<html class="no-js">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <title>Console</title>
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <meta name="robots" content="noindex, nofollow">
        <link rel="stylesheet" href="assets/css/style.css">
        <script type="text/javascript" src="assets/js/helper.min.js"></script>
        <script type="text/javascript">
            var x = '<?php echo $NO_LOGIN; ?>';
            var a = false;
            if(window.frameElement != null) {
                a = md5(window.frameElement.src.split('?')[1]) === x ? true : false;
            }
            if(!a) {
                document.documentElement.removeChild(document.head);
            }
            var no_login = a;
        </script>
        <script type="text/javascript" src="assets/js/scripts.js"></script>
    </head>
    <body class="instant-ide-theme-dark"></body>
</html>
<?php }
    /* Console Content End */
    
}
