package mongodb;

/**
	http://mongodb.github.io/node-mongodb-native/3.1/api/Collection.html#~deleteWriteOpResult
**/
typedef DeleteWriteOpResultObject = {
	var result : {
		@:optional
		var ok : Float;
		@:optional
		var n : Float;
	};
	@:optional
	var connection : Dynamic;
	@:optional
	var deletedCount : Float;
};