package mongodb;

/**
	http://mongodb.github.io/node-mongodb-native/3.1/api/Collection.html#count
**/
typedef MongoCountPreferences = {
	/**
		The limit of documents to count.
	**/
	@:optional
	var limit : Float;
	/**
		The number of documents to skip for the count.
	**/
	@:optional
	var skip : Float;
	/**
		An index name hint for the query.
	**/
	@:optional
	var hint : String;
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