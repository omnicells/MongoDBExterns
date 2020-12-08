package mongodb;

/**
	http://mongodb.github.io/node-mongodb-native/3.1/api/Db.html#collection
**/
typedef DbCollectionOptions = {
	@:optional
	var raw : Bool;
	@:optional
	var pkFactory : Dynamic;
	@:optional
	var readPreference : ReadPreferenceOrMode;
	@:optional
	var serializeFunctions : Bool;
	@:optional
	var strict : Bool;
	@:optional
	var readConcern : ReadConcern;
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