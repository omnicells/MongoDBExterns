package mongodb;

/**
	An error indicating an issue with the network, including TCP errors and timeouts
	see {@link https://mongodb.github.io/node-mongodb-native/3.5/api/MongoNetworkError.html}
**/
@:jsRequire("mongodb", "MongoNetworkError") extern class MongoNetworkError extends MongoError {
	function new(message:String);
	var errorLabels : Array<String>;
	static var prototype : MongoNetworkError;
}