package bson;

/**
	A class representation of the BSON Double type.
**/
@:jsRequire("bson", "Double") extern class Double {
	function new(value:Float);
	/**
		https://github.com/mongodb/js-bson/blob/master/lib/double.js#L17
	**/
	var value : Float;
	function valueOf():Float;
	static var prototype : Double;
}