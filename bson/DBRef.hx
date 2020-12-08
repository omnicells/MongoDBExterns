package bson;

/**
	A class representation of the BSON DBRef type.
**/
@:jsRequire("bson", "DBRef") extern class DBRef {
	function new(namespace:String, oid:ObjectId, ?db:String);
	var namespace : String;
	var oid : ObjectId;
	@:optional
	var db : String;
	static var prototype : DBRef;
}