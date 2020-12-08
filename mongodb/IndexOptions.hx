package mongodb;

/**
	http://mongodb.github.io/node-mongodb-native/3.1/api/Db.html#createIndex
**/
typedef IndexOptions = {
	/**
		Creates an unique index.
	**/
	@:optional
	var unique : Bool;
	/**
		Creates a sparse index.
	**/
	@:optional
	var sparse : Bool;
	/**
		Creates the index in the background, yielding whenever possible.
	**/
	@:optional
	var background : Bool;
	/**
		A unique index cannot be created on a key that has pre-existing duplicate values.
		
		If you would like to create the index anyway, keeping the first document the database indexes and
		deleting all subsequent documents that have duplicate value
	**/
	@:optional
	var dropDups : Bool;
	/**
		For geo spatial indexes set the lower bound for the co-ordinates.
	**/
	@:optional
	var min : Float;
	/**
		For geo spatial indexes set the high bound for the co-ordinates.
	**/
	@:optional
	var max : Float;
	/**
		Specify the format version of the indexes.
	**/
	@:optional
	var v : Float;
	/**
		Allows you to expire data on indexes applied to a data (MongoDB 2.2 or higher)
	**/
	@:optional
	var expireAfterSeconds : Float;
	/**
		Override the auto generated index name (useful if the resulting name is larger than 128 bytes)
	**/
	@:optional
	var name : String;
	/**
		Creates a partial index based on the given filter object (MongoDB 3.2 or higher)
	**/
	@:optional
	var partialFilterExpression : Dynamic;
	@:optional
	var collation : CollationDocument;
	@:optional
	var default_language : String;
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