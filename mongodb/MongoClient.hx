package mongodb;

@:jsRequire("mongodb", "MongoClient") extern class MongoClient extends node.events.EventEmitter {
	function new(uri:String, ?options:MongoClientOptions);
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/MongoClient.html#connect
	**/
	@:overload(function(callback:MongoCallback<MongoClient>):Void { })
	function connect():js.lib.Promise<MongoClient>;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/MongoClient.html#close
	**/
	@:overload(function(?force:Bool):js.lib.Promise<Void> { })
	@:overload(function(force:Bool, callback:MongoCallback<Void>):Void { })
	function close(callback:MongoCallback<Void>):Void;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/MongoClient.html#db
	**/
	function db(?dbName:String, ?options:MongoClientCommonOption):Db;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/MongoClient.html#isConnected
	**/
	function isConnected(?options:MongoClientCommonOption):Bool;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/MongoClient.html#logout
	**/
	@:overload(function(?options:{ @:optional var dbName : String; }):js.lib.Promise<Dynamic> { })
	@:overload(function(options:{ @:optional var dbName : String; }, callback:MongoCallback<Dynamic>):Void { })
	function logout(callback:MongoCallback<Dynamic>):Void;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/MongoClient.html#startSession
	**/
	function startSession(?options:SessionOptions):ClientSession;
	/**
		http://mongodb.github.io/node-mongodb-native/3.3/api/MongoClient.html#watch
	**/
	function watch<TSchema>(?pipeline:Array<Dynamic>, ?options:ChangeStreamOptions & { @:optional var session : ClientSession; }):ChangeStream<TSchema>;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/MongoClient.html#withSession
		
		http://mongodb.github.io/node-mongodb-native/3.1/api/MongoClient.html#withSession
	**/
	@:overload(function(options:SessionOptions, operation:(session:ClientSession) -> js.lib.Promise<Dynamic>):js.lib.Promise<Void> { })
	function withSession(operation:(session:ClientSession) -> js.lib.Promise<Dynamic>):js.lib.Promise<Void>;
	var readPreference : ReadPreference;
	var writeConcern : WriteConcern;
	function addListener(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):MongoClient;
	function on(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):MongoClient;
	function once(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):MongoClient;
	function removeListener(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):MongoClient;
	function off(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):MongoClient;
	function removeAllListeners(?event:ts.AnyOf2<String, js.lib.Symbol>):MongoClient;
	function setMaxListeners(n:Float):MongoClient;
	function prependListener(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):MongoClient;
	function prependOnceListener(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):MongoClient;
	static var prototype : MongoClient;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/MongoClient.html#.connect
	**/
	@:overload(function(uri:String, ?options:MongoClientOptions):js.lib.Promise<MongoClient> { })
	@:overload(function(uri:String, options:MongoClientOptions, callback:MongoCallback<MongoClient>):Void { })
	@:native("connect")
	static function connect_(uri:String, callback:MongoCallback<MongoClient>):Void;
}