package mongodb;

/**
	http://mongodb.github.io/node-mongodb-native/3.1/api/UnorderedBulkOperation.html
**/
typedef UnorderedBulkOperation = {
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/lib_bulk_unordered.js.html line 339
	**/
	var length : Float;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/UnorderedBulkOperation.html#execute
	**/
	@:overload(function(?options:FSyncOptions):js.lib.Promise<BulkWriteResult> { })
	@:overload(function(options:FSyncOptions, callback:MongoCallback<BulkWriteResult>):Void { })
	function execute(callback:MongoCallback<BulkWriteResult>):Void;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/UnorderedBulkOperation.html#find
	**/
	function find(selector:Dynamic):FindOperatorsUnordered;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/UnorderedBulkOperation.html#insert
	**/
	function insert(doc:Dynamic):UnorderedBulkOperation;
};