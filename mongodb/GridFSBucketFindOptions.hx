package mongodb;

/**
	http://mongodb.github.io/node-mongodb-native/3.1/api/GridFSBucket.html#find
**/
typedef GridFSBucketFindOptions = {
	@:optional
	var batchSize : Float;
	@:optional
	var limit : Float;
	@:optional
	var maxTimeMS : Float;
	@:optional
	var noCursorTimeout : Bool;
	@:optional
	var skip : Float;
	@:optional
	var sort : Dynamic;
};