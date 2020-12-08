package mongodb;

/**
	http://mongodb.github.io/node-mongodb-native/3.1/api/GridFSBucket.html
**/
@:jsRequire("mongodb", "GridFSBucket") extern class GridFSBucket {
	function new(db:Db, ?options:GridFSBucketOptions);
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/GridFSBucket.html#delete
	**/
	function delete(id:bson.ObjectId, ?callback:GridFSBucketErrorCallback):Void;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/GridFSBucket.html#drop
	**/
	function drop(?callback:GridFSBucketErrorCallback):Void;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/GridFSBucket.html#find
	**/
	function find(?filter:Dynamic, ?options:GridFSBucketFindOptions):Cursor<Dynamic>;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/GridFSBucket.html#openDownloadStream
	**/
	function openDownloadStream(id:bson.ObjectId, ?options:{ var start : Float; var end : Float; }):GridFSBucketReadStream;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/GridFSBucket.html#openDownloadStreamByName
	**/
	function openDownloadStreamByName(filename:String, ?options:{ var revision : Float; var start : Float; var end : Float; }):GridFSBucketReadStream;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/GridFSBucket.html#openUploadStream
	**/
	function openUploadStream(filename:String, ?options:GridFSBucketOpenUploadStreamOptions):GridFSBucketWriteStream;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/GridFSBucket.html#openUploadStreamWithId
	**/
	function openUploadStreamWithId(id:GridFSBucketWriteStreamId, filename:String, ?options:GridFSBucketOpenUploadStreamOptions):GridFSBucketWriteStream;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/GridFSBucket.html#rename
	**/
	function rename(id:bson.ObjectId, filename:String, ?callback:GridFSBucketErrorCallback):Void;
	static var prototype : GridFSBucket;
}