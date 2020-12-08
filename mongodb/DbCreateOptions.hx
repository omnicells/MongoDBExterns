package mongodb;

/**
	http://mongodb.github.io/node-mongodb-native/3.1/api/Db.html
**/
typedef DbCreateOptions = {
	/**
		If the database authentication is dependent on another databaseName.
	**/
	@:optional
	var authSource : String;
	/**
		Default: false; Force server to create _id fields instead of client.
	**/
	@:optional
	var forceServerObjectId : Bool;
	/**
		Default: false; Use c++ bson parser.
	**/
	@:optional
	var native_parser : Bool;
	/**
		Serialize functions on any object.
	**/
	@:optional
	var serializeFunctions : Bool;
	/**
		Specify if the BSON serializer should ignore undefined fields.
	**/
	@:optional
	var ignoreUndefined : Bool;
	/**
		Return document results as raw BSON buffers.
	**/
	@:optional
	var raw : Bool;
	/**
		Default: true; Promotes Long values to number if they fit inside the 53 bits resolution.
	**/
	@:optional
	var promoteLongs : Bool;
	/**
		Default: false; Promotes Binary BSON values to native Node Buffers
	**/
	@:optional
	var promoteBuffers : Bool;
	/**
		the prefered read preference. use 'ReadPreference' class.
	**/
	@:optional
	var readPreference : ReadPreferenceOrMode;
	/**
		Default: true; Promotes BSON values to native types where possible, set to false to only receive wrapper types.
	**/
	@:optional
	var promoteValues : Bool;
	/**
		Custom primary key factory to generate _id values (see Custom primary keys).
	**/
	@:optional
	var pkFactory : Dynamic;
	/**
		ES6 compatible promise constructor
	**/
	@:optional
	var promiseLibrary : js.lib.PromiseConstructor;
	/**
		https://docs.mongodb.com/manual/reference/read-concern/#read-concern
	**/
	@:optional
	var readConcern : ts.AnyOf2<String, ReadConcern>;
	/**
		Sets a cap on how many operations the driver will buffer up before giving up on getting a
		working connection, default is -1 which is unlimited.
	**/
	@:optional
	var bufferMaxEntries : Float;
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