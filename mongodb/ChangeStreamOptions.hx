package mongodb;

/**
	https://mongodb.github.io/node-mongodb-native/3.3/api/global.html#ChangeStreamOptions
**/
typedef ChangeStreamOptions = {
	@:optional
	var fullDocument : String;
	@:optional
	var maxAwaitTimeMS : Float;
	@:optional
	var resumeAfter : ResumeToken;
	@:optional
	var startAfter : ResumeToken;
	@:optional
	var startAtOperationTime : bson.Timestamp;
	@:optional
	var batchSize : Float;
	@:optional
	var collation : CollationDocument;
	@:optional
	var readPreference : ReadPreferenceOrMode;
};