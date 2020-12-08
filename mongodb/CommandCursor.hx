package mongodb;

/**
	http://mongodb.github.io/node-mongodb-native/3.1/api/CommandCursor.html
**/
@:jsRequire("mongodb", "CommandCursor") extern class CommandCursor extends node.stream.Readable {
	function new();
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/CommandCursor.html#hasNext
		
		http://mongodb.github.io/node-mongodb-native/3.1/api/CommandCursor.html#hasNext
	**/
	@:overload(function(callback:MongoCallback<Bool>):Void { })
	function hasNext():js.lib.Promise<Bool>;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/CommandCursor.html#batchSize
	**/
	function batchSize(value:Float):CommandCursor;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/CommandCursor.html#clone
	**/
	function clone():CommandCursor;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/CommandCursor.html#close
	**/
	@:overload(function(callback:MongoCallback<AggregationCursorResult>):Void { })
	function close():js.lib.Promise<AggregationCursorResult>;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/CommandCursor.html#each
	**/
	function each(callback:MongoCallback<AggregationCursorResult>):Void;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/CommandCursor.html#isClosed
	**/
	function isClosed():Bool;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/CommandCursor.html#maxTimeMS
	**/
	function maxTimeMS(value:Float):CommandCursor;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/CommandCursor.html#next
	**/
	@:overload(function(callback:MongoCallback<AggregationCursorResult>):Void { })
	function next():js.lib.Promise<AggregationCursorResult>;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/CommandCursor.html#read
	**/
	function read(size:Float):ts.AnyOf3<String, Void, global.Buffer>;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/CommandCursor.html#rewind
	**/
	function rewind():CommandCursor;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/CommandCursor.html#setReadPreference
	**/
	function setReadPreference(readPreference:ReadPreferenceOrMode):CommandCursor;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/CommandCursor.html#toArray
	**/
	@:overload(function(callback:MongoCallback<Array<Dynamic>>):Void { })
	function toArray():js.lib.Promise<Array<Dynamic>>;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/CommandCursor.html#unshift
	**/
	function unshift(stream:ts.AnyOf2<String, global.Buffer>):Void;
	function setEncoding(encoding:global.BufferEncoding):CommandCursor;
	function pause():CommandCursor;
	function resume():CommandCursor;
	function unpipe(?destination:global.nodejs.WritableStream):CommandCursor;
	function wrap(oldStream:global.nodejs.ReadableStream):CommandCursor;
	/**
		Event emitter
		The defined events on documents including:
		1. close
		2. data
		3. end
		4. error
		5. pause
		6. readable
		7. resume
	**/
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):CommandCursor { })
	@:overload(function(event:String, listener:() -> Void):CommandCursor { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):CommandCursor { })
	@:overload(function(event:String, listener:() -> Void):CommandCursor { })
	@:overload(function(event:String, listener:() -> Void):CommandCursor { })
	@:overload(function(event:String, listener:() -> Void):CommandCursor { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):CommandCursor { })
	function addListener(event:String, listener:() -> Void):CommandCursor;
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):CommandCursor { })
	@:overload(function(event:String, listener:() -> Void):CommandCursor { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):CommandCursor { })
	@:overload(function(event:String, listener:() -> Void):CommandCursor { })
	@:overload(function(event:String, listener:() -> Void):CommandCursor { })
	@:overload(function(event:String, listener:() -> Void):CommandCursor { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):CommandCursor { })
	function on(event:String, listener:() -> Void):CommandCursor;
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):CommandCursor { })
	@:overload(function(event:String, listener:() -> Void):CommandCursor { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):CommandCursor { })
	@:overload(function(event:String, listener:() -> Void):CommandCursor { })
	@:overload(function(event:String, listener:() -> Void):CommandCursor { })
	@:overload(function(event:String, listener:() -> Void):CommandCursor { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):CommandCursor { })
	function once(event:String, listener:() -> Void):CommandCursor;
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):CommandCursor { })
	@:overload(function(event:String, listener:() -> Void):CommandCursor { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):CommandCursor { })
	@:overload(function(event:String, listener:() -> Void):CommandCursor { })
	@:overload(function(event:String, listener:() -> Void):CommandCursor { })
	@:overload(function(event:String, listener:() -> Void):CommandCursor { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):CommandCursor { })
	function prependListener(event:String, listener:() -> Void):CommandCursor;
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):CommandCursor { })
	@:overload(function(event:String, listener:() -> Void):CommandCursor { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):CommandCursor { })
	@:overload(function(event:String, listener:() -> Void):CommandCursor { })
	@:overload(function(event:String, listener:() -> Void):CommandCursor { })
	@:overload(function(event:String, listener:() -> Void):CommandCursor { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):CommandCursor { })
	function prependOnceListener(event:String, listener:() -> Void):CommandCursor;
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):CommandCursor { })
	@:overload(function(event:String, listener:() -> Void):CommandCursor { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):CommandCursor { })
	@:overload(function(event:String, listener:() -> Void):CommandCursor { })
	@:overload(function(event:String, listener:() -> Void):CommandCursor { })
	@:overload(function(event:String, listener:() -> Void):CommandCursor { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):CommandCursor { })
	function removeListener(event:String, listener:() -> Void):CommandCursor;
	function off(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):CommandCursor;
	function removeAllListeners(?event:ts.AnyOf2<String, js.lib.Symbol>):CommandCursor;
	function setMaxListeners(n:Float):CommandCursor;
	static var prototype : CommandCursor;
}