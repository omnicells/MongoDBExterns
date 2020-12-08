package bson;

/**
	A class representation of the BSON Long type, a 64-bit two's-complement
	integer value, which faithfully simulates the behavior of a Java "Long". This
	implementation is derived from LongLib in GWT.
**/
@:jsRequire("bson", "Long") extern class Long extends LongLike<Long> {
	function new();
	static var prototype : Long;
	static final MAX_VALUE : Long;
	static final MIN_VALUE : Long;
	static final NEG_ONE : Long;
	static final ONE : Long;
	static final ZERO : Long;
	/**
		Returns a Long representing the given (32-bit) integer value.
	**/
	static function fromInt(i:Float):Long;
	/**
		Returns a Long representing the given value, provided that it is a finite number. Otherwise, zero is returned.
	**/
	static function fromNumber(n:Float):Long;
	/**
		Returns a Long representing the 64-bit integer that comes by concatenating the given high and low bits. Each is assumed to use 32 bits.
	**/
	static function fromBits(lowBits:Float, highBits:Float):Long;
	/**
		Returns a Long representation of the given string
	**/
	static function fromString(s:String, ?opt_radix:Float):Long;
}