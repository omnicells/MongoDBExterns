package mongodb;

/**
	http://mongodb.github.io/node-mongodb-native/3.1/api/Collection.html#geoHaystackSearch
**/
typedef GeoHaystackSearchOptions = {
	@:optional
	var readPreference : ReadPreferenceOrMode;
	@:optional
	var maxDistance : Float;
	@:optional
	var search : Dynamic;
	@:optional
	var limit : Float;
	@:optional
	var session : ClientSession;
};