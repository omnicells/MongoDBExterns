package mongodb;

typedef LoggerOptions = {
	/**
		Custom logger function
	**/
	@:optional
	var loggerLevel : String;
	/**
		Override default global log level.
	**/
	@:optional
	dynamic function logger(?message:String, ?state:LoggerState):Void;
};