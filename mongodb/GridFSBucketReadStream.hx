package mongodb;

/**
	https://mongodb.github.io/node-mongodb-native/3.1/api/GridFSBucketReadStream.html
**/
@:jsRequire("mongodb", "GridFSBucketReadStream") extern class GridFSBucketReadStream extends node.stream.Readable {
	function new(chunks:Collection<Dynamic>, files:Collection<Dynamic>, readPreference:Dynamic, filter:Dynamic, ?options:GridFSBucketReadStreamOptions);
	var id : bson.ObjectId;
	function setEncoding(encoding:global.BufferEncoding):GridFSBucketReadStream;
	function pause():GridFSBucketReadStream;
	function resume():GridFSBucketReadStream;
	function unpipe(?destination:global.nodejs.WritableStream):GridFSBucketReadStream;
	function wrap(oldStream:global.nodejs.ReadableStream):GridFSBucketReadStream;
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
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):GridFSBucketReadStream { })
	@:overload(function(event:String, listener:() -> Void):GridFSBucketReadStream { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):GridFSBucketReadStream { })
	@:overload(function(event:String, listener:() -> Void):GridFSBucketReadStream { })
	@:overload(function(event:String, listener:() -> Void):GridFSBucketReadStream { })
	@:overload(function(event:String, listener:() -> Void):GridFSBucketReadStream { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):GridFSBucketReadStream { })
	function addListener(event:String, listener:() -> Void):GridFSBucketReadStream;
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):GridFSBucketReadStream { })
	@:overload(function(event:String, listener:() -> Void):GridFSBucketReadStream { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):GridFSBucketReadStream { })
	@:overload(function(event:String, listener:() -> Void):GridFSBucketReadStream { })
	@:overload(function(event:String, listener:() -> Void):GridFSBucketReadStream { })
	@:overload(function(event:String, listener:() -> Void):GridFSBucketReadStream { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):GridFSBucketReadStream { })
	function on(event:String, listener:() -> Void):GridFSBucketReadStream;
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):GridFSBucketReadStream { })
	@:overload(function(event:String, listener:() -> Void):GridFSBucketReadStream { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):GridFSBucketReadStream { })
	@:overload(function(event:String, listener:() -> Void):GridFSBucketReadStream { })
	@:overload(function(event:String, listener:() -> Void):GridFSBucketReadStream { })
	@:overload(function(event:String, listener:() -> Void):GridFSBucketReadStream { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):GridFSBucketReadStream { })
	function once(event:String, listener:() -> Void):GridFSBucketReadStream;
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):GridFSBucketReadStream { })
	@:overload(function(event:String, listener:() -> Void):GridFSBucketReadStream { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):GridFSBucketReadStream { })
	@:overload(function(event:String, listener:() -> Void):GridFSBucketReadStream { })
	@:overload(function(event:String, listener:() -> Void):GridFSBucketReadStream { })
	@:overload(function(event:String, listener:() -> Void):GridFSBucketReadStream { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):GridFSBucketReadStream { })
	function prependListener(event:String, listener:() -> Void):GridFSBucketReadStream;
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):GridFSBucketReadStream { })
	@:overload(function(event:String, listener:() -> Void):GridFSBucketReadStream { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):GridFSBucketReadStream { })
	@:overload(function(event:String, listener:() -> Void):GridFSBucketReadStream { })
	@:overload(function(event:String, listener:() -> Void):GridFSBucketReadStream { })
	@:overload(function(event:String, listener:() -> Void):GridFSBucketReadStream { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):GridFSBucketReadStream { })
	function prependOnceListener(event:String, listener:() -> Void):GridFSBucketReadStream;
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):GridFSBucketReadStream { })
	@:overload(function(event:String, listener:() -> Void):GridFSBucketReadStream { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):GridFSBucketReadStream { })
	@:overload(function(event:String, listener:() -> Void):GridFSBucketReadStream { })
	@:overload(function(event:String, listener:() -> Void):GridFSBucketReadStream { })
	@:overload(function(event:String, listener:() -> Void):GridFSBucketReadStream { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):GridFSBucketReadStream { })
	function removeListener(event:String, listener:() -> Void):GridFSBucketReadStream;
	function off(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):GridFSBucketReadStream;
	function removeAllListeners(?event:ts.AnyOf2<String, js.lib.Symbol>):GridFSBucketReadStream;
	function setMaxListeners(n:Float):GridFSBucketReadStream;
	static var prototype : GridFSBucketReadStream;
}