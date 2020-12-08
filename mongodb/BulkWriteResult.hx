package mongodb;

/**
	http://mongodb.github.io/node-mongodb-native/3.5/api/BulkWriteResult.html
**/
typedef BulkWriteResult = {
	/**
		Evaluates to `true` if the bulk operation correctly executes
	**/
	var ok : Bool;
	/**
		The number of documents inserted, excluding upserted documents.
	**/
	var nInserted : Float;
	/**
		The number of documents selected for update.
		
		If the update operation results in no change to the document,
		e.g. `$set` expression updates the value to the current value,
		{@link nMatched} can be greater than {@link nModified}.
	**/
	var nMatched : Float;
	/**
		The number of existing documents updated.
		
		If the update/replacement operation results in no change to the document,
		such as setting the value of the field to its current value,
		{@link nModified} can be less than {@link nMatched}
	**/
	var nModified : Float;
	/**
		The number of documents inserted by an
		[upsert]{@link https://docs.mongodb.com/manual/reference/method/db.collection.update/#upsert-parameter}.
	**/
	var nUpserted : Float;
	/**
		The number of documents removed.
	**/
	var nRemoved : Float;
	function getInsertedIds():Array<Dynamic>;
	function getLastOp():Dynamic;
	function getRawResponse():Dynamic;
	/**
		Returns the upserted id at the given index
	**/
	function getUpsertedIdAt(index:Float):BulkWriteResultUpsertedIdObject;
	function getUpsertedIds():Array<BulkWriteResultUpsertedIdObject>;
	function getWriteConcernError():WriteConcernError;
	/**
		Returns a specific write error object
	**/
	function getWriteErrorAt(index:Float):WriteError;
	function getWriteErrorCount():Float;
	function getWriteErrors():Array<Dynamic>;
	function hasWriteErrors():Bool;
};