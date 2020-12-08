package mongodb;

/**
	https://docs.mongodb.com/manual/reference/method/db.collection.bulkWrite/#replaceone
**/
typedef BulkWriteReplaceOneOperation<TSchema> = {
	var replaceOne : {
		@:optional
		var collation : Dynamic;
		@:optional
		var hint : ts.AnyOf2<String, Dynamic>;
		var filter : FilterQuery<TSchema>;
		var replacement : TSchema;
		@:optional
		var upsert : Bool;
	};
};