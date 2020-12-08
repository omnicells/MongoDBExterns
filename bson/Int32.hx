package bson;

/**
	A class representation of the BSON Int32 type.
**/
@:jsRequire("bson", "Int32") extern class Int32 {
	function new(value:Float);
	function valueOf():Float;
	static var prototype : Int32;
}