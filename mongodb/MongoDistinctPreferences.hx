package mongodb;

/**
	http://mongodb.github.io/node-mongodb-native/3.1/api/Collection.html#distinct
**/
typedef MongoDistinctPreferences = {
	/**
		The preferred read preference
	**/
	@:optional
	var readPreference : ReadPreferenceOrMode;
	/**
		Number of miliseconds to wait before aborting the query.
	**/
	@:optional
	var maxTimeMS : Float;
	/**
		Optional session to use for this operation
	**/
	@:optional
	var session : ClientSession;
};