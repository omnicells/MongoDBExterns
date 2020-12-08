package mongodb;

/**
	http://mongodb.github.io/node-mongodb-native/3.1/api/AggregationCursor.html
**/
@:jsRequire("mongodb", "AggregationCursor") extern class AggregationCursor<T> extends Cursor<T> {
	function new();
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/AggregationCursor.html#batchSize
	**/
	function batchSize(value:Float):AggregationCursor<T>;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/AggregationCursor.html#clone
	**/
	function clone():AggregationCursor<T>;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/AggregationCursor.html#close
	**/
	@:overload(function(callback:MongoCallback<AggregationCursorResult>):Void { })
	function close():js.lib.Promise<AggregationCursorResult>;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/AggregationCursor.html#each
	**/
	function each(callback:MongoCallback<AggregationCursorResult>):Void;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/AggregationCursor.html#explain
	**/
	@:overload(function(callback:MongoCallback<AggregationCursorResult>):Void { })
	function explain():js.lib.Promise<AggregationCursorResult>;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/AggregationCursor.html#geoNear
	**/
	function geoNear(document:Dynamic):AggregationCursor<T>;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/AggregationCursor.html#group
	**/
	function group<U>(document:Dynamic):AggregationCursor<U>;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/AggregationCursor.html#limit
	**/
	function limit(value:Float):AggregationCursor<T>;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/AggregationCursor.html#lookup
	**/
	function lookup(document:Dynamic):AggregationCursor<T>;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/AggregationCursor.html#match
	**/
	function match(document:Dynamic):AggregationCursor<T>;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/AggregationCursor.html#maxTimeMS
	**/
	function maxTimeMS(value:Float):AggregationCursor<T>;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/AggregationCursor.html#out
	**/
	function out(destination:String):AggregationCursor<T>;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/AggregationCursor.html#project
	**/
	function project<U>(document:Dynamic):AggregationCursor<U>;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/AggregationCursor.html#redact
	**/
	function redact(document:Dynamic):AggregationCursor<T>;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/AggregationCursor.html#rewind
	**/
	function rewind():AggregationCursor<T>;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/AggregationCursor.html#setEncoding
	**/
	function skip(value:Float):AggregationCursor<T>;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/AggregationCursor.html#sort
	**/
	function sort(document:Dynamic):AggregationCursor<T>;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/AggregationCursor.html#unwind
	**/
	function unwind<U>(field:ts.AnyOf2<String, { var path : String; @:optional var includeArrayIndex : String; @:optional var preserveNullAndEmptyArrays : Bool; }>):AggregationCursor<U>;
	function setEncoding(encoding:global.BufferEncoding):AggregationCursor<T>;
	function pause():AggregationCursor<T>;
	function resume():AggregationCursor<T>;
	function unpipe(?destination:global.nodejs.WritableStream):AggregationCursor<T>;
	function wrap(oldStream:global.nodejs.ReadableStream):AggregationCursor<T>;
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
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):AggregationCursor<T> { })
	@:overload(function(event:String, listener:() -> Void):AggregationCursor<T> { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):AggregationCursor<T> { })
	@:overload(function(event:String, listener:() -> Void):AggregationCursor<T> { })
	@:overload(function(event:String, listener:() -> Void):AggregationCursor<T> { })
	@:overload(function(event:String, listener:() -> Void):AggregationCursor<T> { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):AggregationCursor<T> { })
	function addListener(event:String, listener:() -> Void):AggregationCursor<T>;
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):AggregationCursor<T> { })
	@:overload(function(event:String, listener:() -> Void):AggregationCursor<T> { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):AggregationCursor<T> { })
	@:overload(function(event:String, listener:() -> Void):AggregationCursor<T> { })
	@:overload(function(event:String, listener:() -> Void):AggregationCursor<T> { })
	@:overload(function(event:String, listener:() -> Void):AggregationCursor<T> { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):AggregationCursor<T> { })
	function on(event:String, listener:() -> Void):AggregationCursor<T>;
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):AggregationCursor<T> { })
	@:overload(function(event:String, listener:() -> Void):AggregationCursor<T> { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):AggregationCursor<T> { })
	@:overload(function(event:String, listener:() -> Void):AggregationCursor<T> { })
	@:overload(function(event:String, listener:() -> Void):AggregationCursor<T> { })
	@:overload(function(event:String, listener:() -> Void):AggregationCursor<T> { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):AggregationCursor<T> { })
	function once(event:String, listener:() -> Void):AggregationCursor<T>;
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):AggregationCursor<T> { })
	@:overload(function(event:String, listener:() -> Void):AggregationCursor<T> { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):AggregationCursor<T> { })
	@:overload(function(event:String, listener:() -> Void):AggregationCursor<T> { })
	@:overload(function(event:String, listener:() -> Void):AggregationCursor<T> { })
	@:overload(function(event:String, listener:() -> Void):AggregationCursor<T> { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):AggregationCursor<T> { })
	function prependListener(event:String, listener:() -> Void):AggregationCursor<T>;
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):AggregationCursor<T> { })
	@:overload(function(event:String, listener:() -> Void):AggregationCursor<T> { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):AggregationCursor<T> { })
	@:overload(function(event:String, listener:() -> Void):AggregationCursor<T> { })
	@:overload(function(event:String, listener:() -> Void):AggregationCursor<T> { })
	@:overload(function(event:String, listener:() -> Void):AggregationCursor<T> { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):AggregationCursor<T> { })
	function prependOnceListener(event:String, listener:() -> Void):AggregationCursor<T>;
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):AggregationCursor<T> { })
	@:overload(function(event:String, listener:() -> Void):AggregationCursor<T> { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):AggregationCursor<T> { })
	@:overload(function(event:String, listener:() -> Void):AggregationCursor<T> { })
	@:overload(function(event:String, listener:() -> Void):AggregationCursor<T> { })
	@:overload(function(event:String, listener:() -> Void):AggregationCursor<T> { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):AggregationCursor<T> { })
	function removeListener(event:String, listener:() -> Void):AggregationCursor<T>;
	function off(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):AggregationCursor<T>;
	function removeAllListeners(?event:ts.AnyOf2<String, js.lib.Symbol>):AggregationCursor<T>;
	function setMaxListeners(n:Float):AggregationCursor<T>;
	static var prototype : AggregationCursor<Dynamic>;
}