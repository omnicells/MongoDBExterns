package mongodb;

/**
	http://mongodb.github.io/node-mongodb-native/3.1/api/Collection.html#~findAndModifyWriteOpResult
**/
typedef FindAndModifyWriteOpResultObject<TSchema> = {
	@:optional
	var value : TSchema;
	@:optional
	var lastErrorObject : Dynamic;
	@:optional
	var ok : Float;
};