package bson;

/**
	A class representation of the BSON Timestamp type.
**/
@:jsRequire("bson", "Timestamp") extern class Timestamp extends LongLike<Timestamp> {
	function new();
	static var prototype : Timestamp;
	static final MAX_VALUE : Timestamp;
	static final MIN_VALUE : Timestamp;
	static final NEG_ONE : Timestamp;
	static final ONE : Timestamp;
	static final ZERO : Timestamp;
	/**
		Returns a Timestamp represented by the given (32-bit) integer value
	**/
	static function fromInt(value:Float):Timestamp;
	/**
		Returns a Timestamp representing the given number value, provided that it is a finite number.
	**/
	static function fromNumber(value:Float):Timestamp;
	/**
		Returns a Timestamp for the given high and low bits. Each is assumed to use 32 bits.
	**/
	static function fromBits(lowBits:Float, highBits:Float):Timestamp;
	/**
		Returns a Timestamp from the given string.
	**/
	static function fromString(str:String, ?opt_radix:Float):Timestamp;
}