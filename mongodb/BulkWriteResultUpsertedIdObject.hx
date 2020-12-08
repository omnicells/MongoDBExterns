package mongodb;

/**
	https://docs.mongodb.com/manual/reference/method/BulkWriteResult/index.html#BulkWriteResult.upserted
**/
typedef BulkWriteResultUpsertedIdObject = {
	var index : Float;
	var _id : bson.ObjectId;
};