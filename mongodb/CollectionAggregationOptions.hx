package mongodb;

/**
	http://mongodb.github.io/node-mongodb-native/3.1/api/Collection.html#aggregate
**/
typedef CollectionAggregationOptions = {
	@:optional
	var readPreference : ReadPreferenceOrMode;
	/**
		Return the query as cursor, on 2.6 > it returns as a real cursor
		on pre 2.6 it returns as an emulated cursor.
	**/
	@:optional
	var cursor : {
		@:optional
		var batchSize : Float;
	};
	/**
		Explain returns the aggregation execution plan (requires mongodb 2.6 >).
	**/
	@:optional
	var explain : Bool;
	/**
		Lets the server know if it can use disk to store
		temporary results for the aggregation (requires mongodb 2.6 >).
	**/
	@:optional
	var allowDiskUse : Bool;
	/**
		specifies a cumulative time limit in milliseconds for processing operations
		on the cursor. MongoDB interrupts the operation at the earliest following interrupt point.
	**/
	@:optional
	var maxTimeMS : Float;
	/**
		Allow driver to bypass schema validation in MongoDB 3.2 or higher.
	**/
	@:optional
	var bypassDocumentValidation : Bool;
	@:optional
	var hint : ts.AnyOf2<String, Dynamic>;
	@:optional
	var raw : Bool;
	@:optional
	var promoteLongs : Bool;
	@:optional
	var promoteValues : Bool;
	@:optional
	var promoteBuffers : Bool;
	@:optional
	var collation : CollationDocument;
	@:optional
	var comment : String;
	@:optional
	var session : ClientSession;
};