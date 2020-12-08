package mongodb;

/**
	http://mongodb.github.io/node-mongodb-native/3.1/api/Cursor.html#count
**/
typedef CursorCommentOptions = {
	@:optional
	var skip : Float;
	@:optional
	var limit : Float;
	@:optional
	var maxTimeMS : Float;
	@:optional
	var hint : String;
	@:optional
	var readPreference : ReadPreferenceOrMode;
};