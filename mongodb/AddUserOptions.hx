package mongodb;

/**
	http://mongodb.github.io/node-mongodb-native/3.1/api/Admin.html#addUser
**/
typedef AddUserOptions = {
	var fsync : Bool;
	@:optional
	var customData : Dynamic;
	@:optional
	var roles : Array<Dynamic>;
	@:optional
	var session : ClientSession;
	/**
		requests acknowledgement that the write operation has
		propagated to a specified number of mongod hosts
	**/
	@:optional
	var w : ts.AnyOf2<String, Float>;
	/**
		requests acknowledgement from MongoDB that the write operation has
		been written to the journal
	**/
	@:optional
	var j : Bool;
	/**
		a time limit, in milliseconds, for the write concern
	**/
	@:optional
	var wtimeout : Float;
};