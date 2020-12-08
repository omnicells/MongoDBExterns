package mongodb;

/**
	https://mongodb.github.io/node-mongodb-native/3.1/api/GridFSBucketReadStream.html
**/
typedef GridFSBucketReadStreamOptions = {
	@:optional
	var sort : Float;
	@:optional
	var skip : Float;
	@:optional
	var start : Float;
	@:optional
	var end : Float;
};