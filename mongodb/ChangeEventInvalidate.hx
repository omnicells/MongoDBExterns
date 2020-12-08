package mongodb;

typedef ChangeEventInvalidate<TSchema> = {
	var _id : ResumeToken;
	var operationType : String;
	var clusterTime : bson.Timestamp;
};