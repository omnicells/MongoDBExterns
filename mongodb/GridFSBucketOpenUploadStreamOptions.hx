package mongodb;

/**
	https://mongodb.github.io/node-mongodb-native/3.1/api/GridFSBucket.html#openUploadStream
**/
typedef GridFSBucketOpenUploadStreamOptions = {
	@:optional
	var chunkSizeBytes : Float;
	@:optional
	var metadata : Dynamic;
	@:optional
	var contentType : String;
	@:optional
	var aliases : Array<String>;
};