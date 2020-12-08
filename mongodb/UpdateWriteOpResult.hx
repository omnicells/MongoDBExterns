package mongodb;

/**
	http://mongodb.github.io/node-mongodb-native/3.1/api/Collection.html#~updateWriteOpResult
**/
typedef UpdateWriteOpResult = {
	var result : {
		var ok : Float;
		var n : Float;
		var nModified : Float;
	};
	var connection : Dynamic;
	var matchedCount : Float;
	var modifiedCount : Float;
	var upsertedCount : Float;
	var upsertedId : {
		var _id : bson.ObjectId;
	};
};