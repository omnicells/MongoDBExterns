package mongodb;

typedef BulkWriteDeleteManyOperation<TSchema> = {
	var deleteMany : BulkWriteDeleteOperation<TSchema>;
};