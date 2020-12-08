@:jsRequire("mongodb") @valueModuleOnly extern class Mongodb {
	@:overload(function(uri:String, callback:mongodb.MongoCallback<mongodb.MongoClient>):Void { })
	@:overload(function(uri:String, options:mongodb.MongoClientOptions, callback:mongodb.MongoCallback<mongodb.MongoClient>):Void { })
	static function connect(uri:String, ?options:mongodb.MongoClientOptions):js.lib.Promise<mongodb.MongoClient>;
}