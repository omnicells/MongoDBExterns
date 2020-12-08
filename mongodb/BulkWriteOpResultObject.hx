package mongodb;

/**
	http://mongodb.github.io/node-mongodb-native/3.1/api/Collection.html#~BulkWriteOpResult
**/
typedef BulkWriteOpResultObject = {
	@:optional
	var insertedCount : Float;
	@:optional
	var matchedCount : Float;
	@:optional
	var modifiedCount : Float;
	@:optional
	var deletedCount : Float;
	@:optional
	var upsertedCount : Float;
	@:optional
	var insertedIds : { };
	@:optional
	var upsertedIds : { };
	@:optional
	var result : Dynamic;
};