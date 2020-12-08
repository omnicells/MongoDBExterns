package mongodb;

/**
	http://mongodb.github.io/node-mongodb-native/3.1/api/FindOperatorsOrdered.html
**/
typedef FindOperatorsOrdered = {
	function delete():OrderedBulkOperation;
	function deleteOne():OrderedBulkOperation;
	function replaceOne(doc:Dynamic):OrderedBulkOperation;
	function update(doc:Dynamic):OrderedBulkOperation;
	function updateOne(doc:Dynamic):OrderedBulkOperation;
	function upsert():FindOperatorsOrdered;
};