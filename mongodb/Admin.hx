package mongodb;

/**
	http://mongodb.github.io/node-mongodb-native/3.1/api/Admin.html
**/
typedef Admin = {
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/Admin.html#addUser
	**/
	@:overload(function(username:String, password:String, ?options:AddUserOptions):js.lib.Promise<Dynamic> { })
	@:overload(function(username:String, password:String, options:AddUserOptions, callback:MongoCallback<Dynamic>):Void { })
	function addUser(username:String, password:String, callback:MongoCallback<Dynamic>):Void;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/Admin.html#buildInfo
	**/
	@:overload(function(options:{ @:optional var session : ClientSession; }, callback:MongoCallback<Dynamic>):Void { })
	@:overload(function(callback:MongoCallback<Dynamic>):Void { })
	function buildInfo(?options:{ @:optional var session : ClientSession; }):js.lib.Promise<Dynamic>;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/Admin.html#command
	**/
	@:overload(function(command:Dynamic, ?options:{ @:optional var readPreference : ReadPreferenceOrMode; @:optional var maxTimeMS : Float; }):js.lib.Promise<Dynamic> { })
	@:overload(function(command:Dynamic, options:{ @:optional var readPreference : ReadPreferenceOrMode; @:optional var maxTimeMS : Float; }, callback:MongoCallback<Dynamic>):Void { })
	function command(command:Dynamic, callback:MongoCallback<Dynamic>):Void;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/Admin.html#listDatabases
	**/
	@:overload(function(options:{ @:optional var nameOnly : Bool; @:optional var session : ClientSession; }, callback:MongoCallback<Dynamic>):Void { })
	@:overload(function(callback:MongoCallback<Dynamic>):Void { })
	function listDatabases(?options:{ @:optional var nameOnly : Bool; @:optional var session : ClientSession; }):js.lib.Promise<Dynamic>;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/Admin.html#ping
	**/
	@:overload(function(options:{ @:optional var session : ClientSession; }, callback:MongoCallback<Dynamic>):Void { })
	@:overload(function(callback:MongoCallback<Dynamic>):Void { })
	function ping(?options:{ @:optional var session : ClientSession; }):js.lib.Promise<Dynamic>;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/Admin.html#removeUser
	**/
	@:overload(function(username:String, ?options:FSyncOptions):js.lib.Promise<Dynamic> { })
	@:overload(function(username:String, options:FSyncOptions, callback:MongoCallback<Dynamic>):Void { })
	function removeUser(username:String, callback:MongoCallback<Dynamic>):Void;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/Admin.html#replSetGetStatus
	**/
	@:overload(function(options:{ @:optional var session : ClientSession; }, callback:MongoCallback<Dynamic>):Void { })
	@:overload(function(callback:MongoCallback<Dynamic>):Void { })
	function replSetGetStatus(?options:{ @:optional var session : ClientSession; }):js.lib.Promise<Dynamic>;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/Admin.html#serverInfo
	**/
	@:overload(function(callback:MongoCallback<Dynamic>):Void { })
	function serverInfo():js.lib.Promise<Dynamic>;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/Admin.html#serverStatus
	**/
	@:overload(function(options:{ @:optional var session : ClientSession; }, callback:MongoCallback<Dynamic>):Void { })
	@:overload(function(callback:MongoCallback<Dynamic>):Void { })
	function serverStatus(?options:{ @:optional var session : ClientSession; }):js.lib.Promise<Dynamic>;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/Admin.html#validateCollection
	**/
	@:overload(function(collectionNme:String, ?options:Dynamic):js.lib.Promise<Dynamic> { })
	@:overload(function(collectionNme:String, options:Dynamic, callback:MongoCallback<Dynamic>):Void { })
	function validateCollection(collectionNme:String, callback:MongoCallback<Dynamic>):Void;
};