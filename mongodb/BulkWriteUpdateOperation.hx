package mongodb;

/**
	https://docs.mongodb.com/manual/reference/method/db.collection.bulkWrite/#updateone-and-updatemany
**/
typedef BulkWriteUpdateOperation<TSchema> = {
	@:optional
	var arrayFilters : Array<Dynamic>;
	@:optional
	var collation : Dynamic;
	@:optional
	var hint : ts.AnyOf2<String, Dynamic>;
	var filter : FilterQuery<TSchema>;
	var update : UpdateQuery<TSchema>;
	@:optional
	var upsert : Bool;
};