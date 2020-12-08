package mongodb;

typedef HighAvailabilityOptions = {
	/**
		Default: true; Turn on high availability monitoring.
	**/
	@:optional
	var ha : Bool;
	/**
		Default: 10000; The High availability period for replicaset inquiry
	**/
	@:optional
	var haInterval : Float;
	/**
		Default: false;
	**/
	@:optional
	var domainsEnabled : Bool;
	/**
		The ReadPreference mode as listed here: http://mongodb.github.io/node-mongodb-native/3.1/api/MongoClient.html
	**/
	@:optional
	var readPreference : ReadPreferenceOrMode;
	/**
		An object representing read preference tags, see: http://mongodb.github.io/node-mongodb-native/3.1/api/ReadPreference.html
	**/
	@:optional
	var readPreferenceTags : Array<String>;
};