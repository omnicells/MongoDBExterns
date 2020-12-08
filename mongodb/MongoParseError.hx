package mongodb;

/**
	An error used when attempting to parse a value (like a connection string)
	see {@link https://mongodb.github.io/node-mongodb-native/3.5/api/MongoParseError.html}
**/
@:jsRequire("mongodb", "MongoParseError") extern class MongoParseError extends MongoError {
	function new(message:String);
	static var prototype : MongoParseError;
}