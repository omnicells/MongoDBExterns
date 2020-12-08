package bson;

/**
	A class representation of the BSON Decimal128 type.
**/
@:jsRequire("bson", "Decimal128") extern class Decimal128 {
	function new(bytes:global.Buffer);
	/**
		A buffer containing the raw Decimal128 bytes.
	**/
	final bytes : global.Buffer;
	function toJSON():String;
	function toString():String;
	static var prototype : Decimal128;
	/**
		Create a Decimal128 instance from a string representation.
	**/
	static function fromString(s:String):Decimal128;
}