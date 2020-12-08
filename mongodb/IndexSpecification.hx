package mongodb;

/**
	https://docs.mongodb.com/manual/reference/command/createIndexes/
**/
typedef IndexSpecification = {
	var key : Dynamic;
	@:optional
	var name : String;
	@:optional
	var background : Bool;
	@:optional
	var unique : Bool;
	@:optional
	var partialFilterExpression : Dynamic;
	@:optional
	var sparse : Bool;
	@:optional
	var expireAfterSeconds : Float;
	@:optional
	var storageEngine : Dynamic;
	@:optional
	var weights : Dynamic;
	@:optional
	var default_language : String;
	@:optional
	var language_override : String;
	@:optional
	var textIndexVersion : Float;
	@:optional
	@:native("2dsphereIndexVersion")
	var TwoDsphereIndexVersion : Float;
	@:optional
	var bits : Float;
	@:optional
	var min : Float;
	@:optional
	var max : Float;
	@:optional
	var bucketSize : Float;
	@:optional
	var collation : CollationDocument;
};