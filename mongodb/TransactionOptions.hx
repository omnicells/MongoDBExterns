package mongodb;

/**
	Configuration options for a transaction.
	http://mongodb.github.io/node-mongodb-native/3.1/api/global.html#TransactionOptions
**/
typedef TransactionOptions = {
	@:optional
	var readConcern : ReadConcern;
	@:optional
	var writeConcern : WriteConcern;
	@:optional
	var readPreference : ReadPreferenceOrMode;
};