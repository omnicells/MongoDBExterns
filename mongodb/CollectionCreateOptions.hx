package mongodb;

/**
	http://mongodb.github.io/node-mongodb-native/3.1/api/Db.html#createCollection
**/
typedef CollectionCreateOptions = {
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
	var capped : Bool;
	@:optional
	var autoIndexId : Bool;
	@:optional
	var size : Float;
	@:optional
	var max : Float;
	@:optional
	var flags : Float;
	@:optional
	var storageEngine : Dynamic;
	@:optional
	var validator : Dynamic;
	@:optional
	var validationLevel : String;
	@:optional
	var validationAction : String;
	@:optional
	var indexOptionDefaults : Dynamic;
	@:optional
	var viewOn : String;
	@:optional
	var pipeline : Array<Dynamic>;
	@:optional
	var collation : CollationDocument;
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