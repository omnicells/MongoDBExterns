package mongodb;

/**
	http://mongodb.github.io/node-mongodb-native/3.1/api/OrderedBulkOperation.html
**/
typedef OrderedBulkOperation = {
	var length : Float;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/OrderedBulkOperation.html#execute
	**/
	@:overload(function(?options:FSyncOptions):js.lib.Promise<BulkWriteResult> { })
	@:overload(function(options:FSyncOptions, callback:MongoCallback<BulkWriteResult>):Void { })
	function execute(callback:MongoCallback<BulkWriteResult>):Void;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/OrderedBulkOperation.html#find
	**/
	function find(selector:Dynamic):FindOperatorsOrdered;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/OrderedBulkOperation.html#insert
	**/
	function insert(doc:Dynamic):OrderedBulkOperation;
};