package mongodb;

/**
	https://docs.mongodb.com/manual/reference/method/db.collection.bulkWrite/#deleteone-and-deletemany
**/
typedef BulkWriteDeleteOperation<TSchema> = {
	@:optional
	var collation : Dynamic;
	var filter : FilterQuery<TSchema>;
};