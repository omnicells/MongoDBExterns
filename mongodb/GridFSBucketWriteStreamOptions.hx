package mongodb;

/**
	https://mongodb.github.io/node-mongodb-native/3.1/api/GridFSBucketWriteStream.html
**/
typedef GridFSBucketWriteStreamOptions = {
	/**
		Custom file id for the GridFS file.
	**/
	@:optional
	var id : GridFSBucketWriteStreamId;
	/**
		The chunk size to use, in bytes
	**/
	@:optional
	var chunkSizeBytes : Float;
	/**
		Default false; If true, disables adding an md5 field to file data
	**/
	@:optional
	var disableMD5 : Bool;
	/**
		requests acknowledgement that the write operation has
		propagated to a specified number of mongod hosts
	**/
	@:optional
	var w : ts.AnyOf2<String, Float>;
	/**
		requests acknowledgement from MongoDB that the write operation has
		been written to the journal
	**/
	@:optional
	var j : Bool;
	/**
		a time limit, in milliseconds, for the write concern
	**/
	@:optional
	var wtimeout : Float;
};