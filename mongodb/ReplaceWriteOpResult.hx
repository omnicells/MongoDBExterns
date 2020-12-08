package mongodb;

/**
	https://github.com/mongodb/node-mongodb-native/blob/2.2/lib/collection.js#L957
**/
typedef ReplaceWriteOpResult = {
	var ops : Array<Dynamic>;
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