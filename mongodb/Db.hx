package mongodb;

@:jsRequire("mongodb", "Db") extern class Db extends node.events.EventEmitter {
	function new(databaseName:String, serverConfig:ts.AnyOf3<Server, ReplSet, Mongos>, ?options:DbCreateOptions);
	var serverConfig : ts.AnyOf3<Server, ReplSet, Mongos>;
	var bufferMaxEntries : Float;
	var databaseName : String;
	var options : Dynamic;
	var native_parser : Bool;
	var slaveOk : Bool;
	var writeConcern : WriteConcern;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/Db.html#addUser
	**/
	@:overload(function(username:String, password:String, ?options:DbAddUserOptions):js.lib.Promise<Dynamic> { })
	@:overload(function(username:String, password:String, options:DbAddUserOptions, callback:MongoCallback<Dynamic>):Void { })
	function addUser(username:String, password:String, callback:MongoCallback<Dynamic>):Void;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/Db.html#admin
	**/
	function admin():Admin;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/Db.html#collection
	**/
	@:overload(function<TSchema>(name:String, options:DbCollectionOptions, ?callback:MongoCallback<Collection<TSchema>>):Collection<TSchema> { })
	function collection<TSchema>(name:String, ?callback:MongoCallback<Collection<TSchema>>):Collection<TSchema>;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/Db.html#collections
	**/
	@:overload(function(callback:MongoCallback<Array<Collection<Dynamic>>>):Void { })
	function collections():js.lib.Promise<Array<Collection<Dynamic>>>;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/Db.html#command
	**/
	@:overload(function(command:Dynamic, ?options:{ @:optional var readPreference : ReadPreferenceOrMode; @:optional var session : ClientSession; }):js.lib.Promise<Dynamic> { })
	@:overload(function(command:Dynamic, options:{ var readPreference : ReadPreferenceOrMode; @:optional var session : ClientSession; }, callback:MongoCallback<Dynamic>):Void { })
	function command(command:Dynamic, callback:MongoCallback<Dynamic>):Void;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/Db.html#createCollection
	**/
	@:overload(function<TSchema>(name:String, ?options:CollectionCreateOptions):js.lib.Promise<Collection<TSchema>> { })
	@:overload(function<TSchema>(name:String, options:CollectionCreateOptions, callback:MongoCallback<Collection<TSchema>>):Void { })
	function createCollection<TSchema>(name:String, callback:MongoCallback<Collection<TSchema>>):Void;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/Db.html#createIndex
	**/
	@:overload(function(name:String, fieldOrSpec:ts.AnyOf2<String, Dynamic>, ?options:IndexOptions):js.lib.Promise<Dynamic> { })
	@:overload(function(name:String, fieldOrSpec:ts.AnyOf2<String, Dynamic>, options:IndexOptions, callback:MongoCallback<Dynamic>):Void { })
	function createIndex(name:String, fieldOrSpec:ts.AnyOf2<String, Dynamic>, callback:MongoCallback<Dynamic>):Void;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/Db.html#dropCollection
	**/
	@:overload(function(name:String, callback:MongoCallback<Bool>):Void { })
	function dropCollection(name:String):js.lib.Promise<Bool>;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/Db.html#dropDatabase
	**/
	@:overload(function(callback:MongoCallback<Dynamic>):Void { })
	function dropDatabase():js.lib.Promise<Dynamic>;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/Db.html#executeDbAdminCommand
	**/
	@:overload(function(command:Dynamic, ?options:{ @:optional var readPreference : ReadPreferenceOrMode; @:optional var session : ClientSession; }):js.lib.Promise<Dynamic> { })
	@:overload(function(command:Dynamic, options:{ @:optional var readPreference : ReadPreferenceOrMode; @:optional var session : ClientSession; }, callback:MongoCallback<Dynamic>):Void { })
	function executeDbAdminCommand(command:Dynamic, callback:MongoCallback<Dynamic>):Void;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/Db.html#indexInformation
	**/
	@:overload(function(name:String, ?options:{ @:optional var full : Bool; @:optional var readPreference : ReadPreferenceOrMode; }):js.lib.Promise<Dynamic> { })
	@:overload(function(name:String, options:{ @:optional var full : Bool; @:optional var readPreference : ReadPreferenceOrMode; }, callback:MongoCallback<Dynamic>):Void { })
	function indexInformation(name:String, callback:MongoCallback<Dynamic>):Void;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/Db.html#listCollections
	**/
	function listCollections(?filter:Dynamic, ?options:{ @:optional var nameOnly : Bool; @:optional var batchSize : Float; @:optional var readPreference : ReadPreferenceOrMode; @:optional var session : ClientSession; }):CommandCursor;
	@:overload(function(?options:{ @:optional var session : ClientSession; }):js.lib.Promise<Void> { })
	@:overload(function(options:{ @:optional var session : ClientSession; }, callback:MongoCallback<Void>):Void { })
	function profilingInfo(callback:MongoCallback<Dynamic>):Void;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/Db.html#profilingLevel
	**/
	@:overload(function(?options:{ @:optional var session : ClientSession; }):js.lib.Promise<ProfilingLevel> { })
	@:overload(function(options:{ @:optional var session : ClientSession; }, callback:MongoCallback<ProfilingLevel>):Void { })
	function profilingLevel(callback:MongoCallback<ProfilingLevel>):Void;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/Db.html#removeUser
	**/
	@:overload(function(username:String, ?options:CommonOptions):js.lib.Promise<Dynamic> { })
	@:overload(function(username:String, options:CommonOptions, callback:MongoCallback<Dynamic>):Void { })
	function removeUser(username:String, callback:MongoCallback<Dynamic>):Void;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/Db.html#renameCollection
	**/
	@:overload(function<TSchema>(fromCollection:String, toCollection:String, ?options:{ @:optional var dropTarget : Bool; }):js.lib.Promise<Collection<TSchema>> { })
	@:overload(function<TSchema>(fromCollection:String, toCollection:String, options:{ @:optional var dropTarget : Bool; }, callback:MongoCallback<Collection<TSchema>>):Void { })
	function renameCollection<TSchema>(fromCollection:String, toCollection:String, callback:MongoCallback<Collection<TSchema>>):Void;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/Db.html#setProfilingLevel
	**/
	@:overload(function(level:ProfilingLevel, ?options:{ @:optional var session : ClientSession; }):js.lib.Promise<ProfilingLevel> { })
	@:overload(function(level:ProfilingLevel, options:{ @:optional var session : ClientSession; }, callback:MongoCallback<ProfilingLevel>):Void { })
	function setProfilingLevel(level:ProfilingLevel, callback:MongoCallback<ProfilingLevel>):Void;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/Db.html#stats
	**/
	@:overload(function(?options:{ @:optional var scale : Float; }):js.lib.Promise<Dynamic> { })
	@:overload(function(options:{ @:optional var scale : Float; }, callback:MongoCallback<Dynamic>):Void { })
	function stats(callback:MongoCallback<Dynamic>):Void;
	/**
		http://mongodb.github.io/node-mongodb-native/3.3/api/Db.html#watch
	**/
	function watch<TSchema>(?pipeline:Array<Dynamic>, ?options:ChangeStreamOptions & { @:optional var session : ClientSession; }):ChangeStream<TSchema>;
	function addListener(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Db;
	function on(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Db;
	function once(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Db;
	function removeListener(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Db;
	function off(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Db;
	function removeAllListeners(?event:ts.AnyOf2<String, js.lib.Symbol>):Db;
	function setMaxListeners(n:Float):Db;
	function prependListener(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Db;
	function prependOnceListener(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Db;
	static var prototype : Db;
}