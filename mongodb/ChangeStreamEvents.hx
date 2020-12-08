package mongodb;

typedef ChangeStreamEvents<TSchema> = {
	dynamic function change(doc:ChangeEvent<TSchema>):Void;
	dynamic function close():Void;
	dynamic function end():Void;
	dynamic function error(err:MongoError):Void;
	dynamic function resumeTokenChanged(newToken:ResumeToken):Void;
};