package mongodb;

typedef BulkWriteUpdateManyOperation<TSchema> = {
	var updateMany : BulkWriteUpdateOperation<TSchema>;
};