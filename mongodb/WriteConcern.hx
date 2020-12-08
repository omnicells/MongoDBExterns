package mongodb;

/**
	A MongoDB WriteConcern, which describes the level of acknowledgement
	requested from MongoDB for write operations.
	http://mongodb.github.io/node-mongodb-native/3.1/api/global.html#WriteConcern
**/
typedef WriteConcern = {
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