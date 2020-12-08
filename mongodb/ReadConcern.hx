package mongodb;

/**
	The MongoDB ReadConcern, which allows for control of the consistency and isolation properties
	of the data read from replica sets and replica set shards.
	http://mongodb.github.io/node-mongodb-native/3.1/api/global.html#ReadConcern
**/
typedef ReadConcern = {
	var level : ReadConcernLevel;
};