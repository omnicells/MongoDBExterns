package mongodb;

/**
	http://mongodb.github.io/node-mongodb-native/3.1/api/Collection.html#~insertWriteOpResult
**/
typedef InsertWriteOpResult<TSchema> = {
	var insertedCount : Float;
	var ops : Array<TSchema>;
	var insertedIds : { };
	var connection : Dynamic;
	var result : {
		var ok : Float;
		var n : Float;
	};
};