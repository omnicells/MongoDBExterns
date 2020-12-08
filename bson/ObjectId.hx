package bson;

/**
	A class representation of the BSON ObjectId type.
**/
@:jsRequire("bson", "ObjectId") extern class ObjectId {
	/**
		Create a new ObjectId instance
	**/
	function new(?id:ts.AnyOf3<String, Float, ObjectId>);
	/**
		The generation time of this ObjectId instance
	**/
	var generationTime : Float;
	/**
		Compares the equality of this ObjectId with `otherID`.
	**/
	function equals(otherID:ts.AnyOf2<String, ObjectId>):Bool;
	/**
		Returns the generation date (accurate up to the second) that this ID was generated.
	**/
	function getTimestamp():js.lib.Date;
	/**
		Return the ObjectId id as a 24 byte hex string representation
	**/
	function toHexString():String;
	static var prototype : ObjectId;
	/**
		If true cache the hex string representation of ObjectId
	**/
	@:optional
	static var cacheHexString : Bool;
	/**
		Creates an ObjectId from a hex string representation of an ObjectId.
	**/
	static function createFromHexString(hexString:String):ObjectId;
	/**
		Creates an ObjectId from a second based number, with the rest of the ObjectId zeroed out. Used for comparisons or sorting the ObjectId.
	**/
	static function createFromTime(time:Float):ObjectId;
	/**
		Checks if a value is a valid bson ObjectId
	**/
	static function isValid(id:ts.AnyOf3<String, Float, ObjectId>):Bool;
	/**
		Generate a 12 byte id string used in ObjectId's
	**/
	static function generate(?time:Float):global.Buffer;
}