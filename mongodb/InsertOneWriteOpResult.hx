package mongodb;

/**
	http://mongodb.github.io/node-mongodb-native/3.1/api/Collection.html#~insertOneWriteOpResult
**/
typedef InsertOneWriteOpResult<TSchema> = {
	var insertedCount : Float;
	var ops : Array<TSchema>;
	var insertedId : Dynamic;
	var connection : Dynamic;
	var result : {
		var ok : Float;
		var n : Float;
	};
};