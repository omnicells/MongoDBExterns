package mongodb;

/**
	http://mongodb.github.io/node-mongodb-native/3.0/api/Collection.html#bulkWrite
**/
typedef BulkWriteOperation<TSchema> = ts.AnyOf6<BulkWriteInsertOneOperation<TSchema>, BulkWriteUpdateOneOperation<TSchema>, BulkWriteUpdateManyOperation<TSchema>, BulkWriteReplaceOneOperation<TSchema>, BulkWriteDeleteOneOperation<TSchema>, BulkWriteDeleteManyOperation<TSchema>>;