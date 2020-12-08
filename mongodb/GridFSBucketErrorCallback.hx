package mongodb;

/**
	http://mongodb.github.io/node-mongodb-native/3.6/api/GridFSBucket.html#~errorCallback
**/
typedef GridFSBucketErrorCallback = (error:MongoError, result:Void) -> Void;