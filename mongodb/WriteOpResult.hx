package mongodb;

/**
	http://mongodb.github.io/node-mongodb-native/3.1/api/Collection.html#~WriteOpResult
**/
typedef WriteOpResult = {
	var ops : Array<Dynamic>;
	var connection : Dynamic;
	var result : Dynamic;
};