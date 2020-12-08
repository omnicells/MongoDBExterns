package mongodb;

/**
	http://mongodb.github.io/node-mongodb-native/3.1/api/Collection.html#parallelCollectionScan
**/
typedef ParallelCollectionScanOptions = {
	@:optional
	var readPreference : ReadPreferenceOrMode;
	@:optional
	var batchSize : Float;
	@:optional
	var numCursors : Float;
	@:optional
	var raw : Bool;
	@:optional
	var session : ClientSession;
};