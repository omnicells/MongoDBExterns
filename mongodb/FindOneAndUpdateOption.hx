package mongodb;

/**
	http://mongodb.github.io/node-mongodb-native/3.6/api/Collection.html#findOneAndUpdate
**/
typedef FindOneAndUpdateOption<T> = {
	@:optional
	var arrayFilters : Array<Dynamic>;
	@:optional
	var projection : ts.AnyOf2<{ }, Dynamic>;
	@:optional
	var sort : ts.AnyOf2<{ }, Dynamic>;
	@:optional
	var maxTimeMS : Float;
	@:optional
	var upsert : Bool;
	@:optional
	var returnOriginal : Bool;
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