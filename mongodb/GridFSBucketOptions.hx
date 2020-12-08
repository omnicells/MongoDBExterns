package mongodb;

/**
	http://mongodb.github.io/node-mongodb-native/3.1/api/GridFSBucket.html
**/
typedef GridFSBucketOptions = {
	@:optional
	var bucketName : String;
	@:optional
	var chunkSizeBytes : Float;
	@:optional
	var writeConcern : WriteConcern;
	@:optional
	var readPreference : ReadPreferenceOrMode;
};