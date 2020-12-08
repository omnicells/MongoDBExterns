package mongodb;

/**
	https://docs.mongodb.com/manual/reference/method/db.collection.bulkWrite/#insertone
**/
typedef BulkWriteInsertOneOperation<TSchema> = {
	var insertOne : {
		var document : OptionalId<TSchema>;
	};
};