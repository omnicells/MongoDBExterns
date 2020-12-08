package mongodb;

typedef BulkWriteDeleteOneOperation<TSchema> = {
	var deleteOne : BulkWriteDeleteOperation<TSchema>;
};