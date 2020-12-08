package mongodb;

/**
	http://mongodb.github.io/node-mongodb-native/3.1/api/Collection.html#insertMany
**/
typedef CollectionInsertManyOptions = {
	/**
		Serialize functions on any object.
	**/
	@:optional
	var serializeFunctions : Bool;
	/**
		Force server to assign _id values instead of driver.
	**/
	@:optional
	var forceServerObjectId : Bool;
	/**
		Allow driver to bypass schema validation in MongoDB 3.2 or higher.
	**/
	@:optional
	var bypassDocumentValidation : Bool;
	/**
		If true, when an insert fails, don't execute the remaining writes. If false, continue with remaining inserts when one fails.
	**/
	@:optional
	var ordered : Bool;
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