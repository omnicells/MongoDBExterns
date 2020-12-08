package mongodb;

/**
	http://mongodb.github.io/node-mongodb-native/3.1/api/WriteError.html
**/
typedef WriteError = {
	var code : Float;
	var index : Float;
	var errmsg : String;
};