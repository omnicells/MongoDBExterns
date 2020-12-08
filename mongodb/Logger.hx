package mongodb;

/**
	http://mongodb.github.io/node-mongodb-native/3.1/api/Logger.html
**/
@:jsRequire("mongodb", "Logger") extern class Logger {
	function new(className:String, ?options:LoggerOptions);
	/**
		Log a message at the debug level
	**/
	function debug(message:String, state:LoggerState):Void;
	/**
		Log a message at the warn level
	**/
	function warn(message:String, state:LoggerState):Void;
	/**
		Log a message at the info level
	**/
	function info(message:String, state:LoggerState):Void;
	/**
		Log a message at the error level
	**/
	function error(message:String, state:LoggerState):Void;
	/**
		Is the logger set at info level
	**/
	function isInfo():Bool;
	/**
		Is the logger set at error level
	**/
	function isError():Bool;
	/**
		Is the logger set at error level
	**/
	function isWarn():Bool;
	/**
		Is the logger set at debug level
	**/
	function isDebug():Bool;
	static var prototype : Logger;
	/**
		Resets the logger to default settings, error and no filtered classes
	**/
	static function reset():Void;
	/**
		Get the current logger function
	**/
	static function currentLogger():Log;
	static function setCurrentLogger(log:Log):Void;
	/**
		Set what classes to log.
	**/
	static function filter(type:String, values:Array<String>):Void;
	/**
		Set the current log level
	**/
	static function setLevel(level:String):Void;
}