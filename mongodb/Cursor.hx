package mongodb;

/**
	http://mongodb.github.io/node-mongodb-native/3.1/api/Cursor.html
**/
@:jsRequire("mongodb", "Cursor") extern class Cursor<T> extends node.stream.Readable {
	function new();
	var sortValue : String;
	var timeout : Bool;
	var readPreference : ReadPreference;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/Cursor.html#addCursorFlag
	**/
	function addCursorFlag(flag:String, value:Bool):Cursor<T>;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/Cursor.html#addQueryModifier
	**/
	function addQueryModifier(name:String, value:Bool):Cursor<T>;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/Cursor.html#batchSize
	**/
	function batchSize(value:Float):Cursor<T>;
	function bufferedCount():Float;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/Cursor.html#clone
	**/
	function clone():Cursor<T>;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/Cursor.html#close
	**/
	@:overload(function(callback:MongoCallback<CursorResult>):Void { })
	function close():js.lib.Promise<CursorResult>;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/Cursor.html#collation
	**/
	function collation(value:CollationDocument):Cursor<T>;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/Cursor.html#comment
	**/
	function comment(value:String):Cursor<T>;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/Cursor.html#count
	**/
	@:overload(function(applySkipLimit:Bool, callback:MongoCallback<Float>):Void { })
	@:overload(function(options:CursorCommentOptions, callback:MongoCallback<Float>):Void { })
	@:overload(function(applySkipLimit:Bool, options:CursorCommentOptions, callback:MongoCallback<Float>):Void { })
	@:overload(function(?applySkipLimit:Bool, ?options:CursorCommentOptions):js.lib.Promise<Float> { })
	function count(callback:MongoCallback<Float>):Void;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/Cursor.html#explain
	**/
	@:overload(function(callback:MongoCallback<CursorResult>):Void { })
	function explain():js.lib.Promise<CursorResult>;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/Cursor.html#filter
	**/
	function filter(filter:Dynamic):Cursor<T>;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/Cursor.html#forEach
	**/
	@:overload(function(iterator:IteratorCallback<T>):js.lib.Promise<Void> { })
	function forEach(iterator:IteratorCallback<T>, callback:EndCallback):Void;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/Cursor.html#hasNext
	**/
	@:overload(function(callback:MongoCallback<Bool>):Void { })
	function hasNext():js.lib.Promise<Bool>;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/Cursor.html#hint
	**/
	function hint(hint:ts.AnyOf2<String, Dynamic>):Cursor<T>;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/Cursor.html#isClosed
	**/
	function isClosed():Bool;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/Cursor.html#limit
	**/
	function limit(value:Float):Cursor<T>;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/Cursor.html#map
	**/
	function map<U>(transform:(document:T) -> U):Cursor<U>;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/Cursor.html#max
	**/
	function max(max:Dynamic):Cursor<T>;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/Cursor.html#maxAwaitTimeMS
	**/
	function maxAwaitTimeMS(value:Float):Cursor<T>;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/Cursor.html#maxScan
	**/
	function maxScan(maxScan:Dynamic):Cursor<T>;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/Cursor.html#maxTimeMS
	**/
	function maxTimeMS(value:Float):Cursor<T>;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/Cursor.html#min
	**/
	function min(min:Dynamic):Cursor<T>;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/Cursor.html#next
	**/
	@:overload(function(callback:MongoCallback<Null<T>>):Void { })
	function next():js.lib.Promise<Null<T>>;
	/**
		http://mongodb.github.io/node-mongodb-native/3.6/api/Cursor.html#project
	**/
	function project(value:SchemaMember<T, Dynamic>):Cursor<T>;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/Cursor.html#read
	**/
	function read(size:Float):ts.AnyOf3<String, Void, global.Buffer>;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/Cursor.html#returnKey
	**/
	function returnKey(returnKey:Bool):Cursor<T>;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/Cursor.html#rewind
	**/
	function rewind():Void;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/Cursor.html#setCursorOption
	**/
	function setCursorOption(field:String, value:Dynamic):Cursor<T>;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/Cursor.html#setReadPreference
	**/
	function setReadPreference(readPreference:ReadPreferenceOrMode):Cursor<T>;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/Cursor.html#showRecordId
	**/
	function showRecordId(showRecordId:Bool):Cursor<T>;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/Cursor.html#skip
	**/
	function skip(value:Float):Cursor<T>;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/Cursor.html#snapshot
	**/
	function snapshot(snapshot:Dynamic):Cursor<T>;
	/**
		http://mongodb.github.io/node-mongodb-native/3.6/api/Cursor.html#sort
	**/
	function sort(keyOrList:ts.AnyOf4<String, { }, Array<ts.Tuple2<String, Float>>, Dynamic>, ?direction:Float):Cursor<T>;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/Cursor.html#stream
	**/
	function stream(?options:{ @:optional dynamic function transform(document:T):Dynamic; }):Cursor<T>;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/Cursor.html#toArray
	**/
	@:overload(function(callback:MongoCallback<Array<T>>):Void { })
	function toArray():js.lib.Promise<Array<T>>;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/Cursor.html#unshift
	**/
	function unshift(stream:ts.AnyOf2<String, global.Buffer>):Void;
	function setEncoding(encoding:global.BufferEncoding):Cursor<T>;
	function pause():Cursor<T>;
	function resume():Cursor<T>;
	function unpipe(?destination:global.nodejs.WritableStream):Cursor<T>;
	function wrap(oldStream:global.nodejs.ReadableStream):Cursor<T>;
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
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):Cursor<T> { })
	@:overload(function(event:String, listener:() -> Void):Cursor<T> { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Cursor<T> { })
	@:overload(function(event:String, listener:() -> Void):Cursor<T> { })
	@:overload(function(event:String, listener:() -> Void):Cursor<T> { })
	@:overload(function(event:String, listener:() -> Void):Cursor<T> { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Cursor<T> { })
	function addListener(event:String, listener:() -> Void):Cursor<T>;
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):Cursor<T> { })
	@:overload(function(event:String, listener:() -> Void):Cursor<T> { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Cursor<T> { })
	@:overload(function(event:String, listener:() -> Void):Cursor<T> { })
	@:overload(function(event:String, listener:() -> Void):Cursor<T> { })
	@:overload(function(event:String, listener:() -> Void):Cursor<T> { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Cursor<T> { })
	function on(event:String, listener:() -> Void):Cursor<T>;
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):Cursor<T> { })
	@:overload(function(event:String, listener:() -> Void):Cursor<T> { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Cursor<T> { })
	@:overload(function(event:String, listener:() -> Void):Cursor<T> { })
	@:overload(function(event:String, listener:() -> Void):Cursor<T> { })
	@:overload(function(event:String, listener:() -> Void):Cursor<T> { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Cursor<T> { })
	function once(event:String, listener:() -> Void):Cursor<T>;
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):Cursor<T> { })
	@:overload(function(event:String, listener:() -> Void):Cursor<T> { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Cursor<T> { })
	@:overload(function(event:String, listener:() -> Void):Cursor<T> { })
	@:overload(function(event:String, listener:() -> Void):Cursor<T> { })
	@:overload(function(event:String, listener:() -> Void):Cursor<T> { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Cursor<T> { })
	function prependListener(event:String, listener:() -> Void):Cursor<T>;
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):Cursor<T> { })
	@:overload(function(event:String, listener:() -> Void):Cursor<T> { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Cursor<T> { })
	@:overload(function(event:String, listener:() -> Void):Cursor<T> { })
	@:overload(function(event:String, listener:() -> Void):Cursor<T> { })
	@:overload(function(event:String, listener:() -> Void):Cursor<T> { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Cursor<T> { })
	function prependOnceListener(event:String, listener:() -> Void):Cursor<T>;
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):Cursor<T> { })
	@:overload(function(event:String, listener:() -> Void):Cursor<T> { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Cursor<T> { })
	@:overload(function(event:String, listener:() -> Void):Cursor<T> { })
	@:overload(function(event:String, listener:() -> Void):Cursor<T> { })
	@:overload(function(event:String, listener:() -> Void):Cursor<T> { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Cursor<T> { })
	function removeListener(event:String, listener:() -> Void):Cursor<T>;
	function off(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Cursor<T>;
	function removeAllListeners(?event:ts.AnyOf2<String, js.lib.Symbol>):Cursor<T>;
	function setMaxListeners(n:Float):Cursor<T>;
	static var prototype : Cursor<Dynamic>;
}