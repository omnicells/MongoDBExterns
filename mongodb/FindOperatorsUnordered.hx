package mongodb;

/**
	http://mongodb.github.io/node-mongodb-native/3.1/api/FindOperatorsUnordered.html
**/
typedef FindOperatorsUnordered = {
	var length : Float;
	function remove():UnorderedBulkOperation;
	function removeOne():UnorderedBulkOperation;
	function replaceOne(doc:Dynamic):UnorderedBulkOperation;
	function update(doc:Dynamic):UnorderedBulkOperation;
	function updateOne(doc:Dynamic):UnorderedBulkOperation;
	function upsert():FindOperatorsUnordered;
};