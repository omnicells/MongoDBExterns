package mongodb;

/**
	https://mongodb.github.io/node-mongodb-native/3.1/api/GridFSBucketWriteStream.html
**/
@:jsRequire("mongodb", "GridFSBucketWriteStream") extern class GridFSBucketWriteStream extends node.stream.Writable {
	function new(bucket:GridFSBucket, filename:String, ?options:GridFSBucketWriteStreamOptions);
	var id : GridFSBucketWriteStreamId;
	/**
		Places this write stream into an aborted state (all future writes fail)
		and deletes all chunks that have already been written.
	**/
	function abort(?callback:GridFSBucketErrorCallback):Void;
	function setDefaultEncoding(encoding:global.BufferEncoding):GridFSBucketWriteStream;
	/**
		Event emitter
		The defined events on documents including:
		1. close
		2. drain
		3. error
		4. finish
		5. pipe
		6. unpipe
	**/
	@:overload(function(event:String, listener:() -> Void):GridFSBucketWriteStream { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):GridFSBucketWriteStream { })
	@:overload(function(event:String, listener:() -> Void):GridFSBucketWriteStream { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):GridFSBucketWriteStream { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):GridFSBucketWriteStream { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):GridFSBucketWriteStream { })
	function addListener(event:String, listener:() -> Void):GridFSBucketWriteStream;
	@:overload(function(event:String, listener:() -> Void):GridFSBucketWriteStream { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):GridFSBucketWriteStream { })
	@:overload(function(event:String, listener:() -> Void):GridFSBucketWriteStream { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):GridFSBucketWriteStream { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):GridFSBucketWriteStream { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):GridFSBucketWriteStream { })
	function on(event:String, listener:() -> Void):GridFSBucketWriteStream;
	@:overload(function(event:String, listener:() -> Void):GridFSBucketWriteStream { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):GridFSBucketWriteStream { })
	@:overload(function(event:String, listener:() -> Void):GridFSBucketWriteStream { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):GridFSBucketWriteStream { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):GridFSBucketWriteStream { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):GridFSBucketWriteStream { })
	function once(event:String, listener:() -> Void):GridFSBucketWriteStream;
	@:overload(function(event:String, listener:() -> Void):GridFSBucketWriteStream { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):GridFSBucketWriteStream { })
	@:overload(function(event:String, listener:() -> Void):GridFSBucketWriteStream { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):GridFSBucketWriteStream { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):GridFSBucketWriteStream { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):GridFSBucketWriteStream { })
	function prependListener(event:String, listener:() -> Void):GridFSBucketWriteStream;
	@:overload(function(event:String, listener:() -> Void):GridFSBucketWriteStream { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):GridFSBucketWriteStream { })
	@:overload(function(event:String, listener:() -> Void):GridFSBucketWriteStream { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):GridFSBucketWriteStream { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):GridFSBucketWriteStream { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):GridFSBucketWriteStream { })
	function prependOnceListener(event:String, listener:() -> Void):GridFSBucketWriteStream;
	@:overload(function(event:String, listener:() -> Void):GridFSBucketWriteStream { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):GridFSBucketWriteStream { })
	@:overload(function(event:String, listener:() -> Void):GridFSBucketWriteStream { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):GridFSBucketWriteStream { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):GridFSBucketWriteStream { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):GridFSBucketWriteStream { })
	function removeListener(event:String, listener:() -> Void):GridFSBucketWriteStream;
	function off(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):GridFSBucketWriteStream;
	function removeAllListeners(?event:ts.AnyOf2<String, js.lib.Symbol>):GridFSBucketWriteStream;
	function setMaxListeners(n:Float):GridFSBucketWriteStream;
	static var prototype : GridFSBucketWriteStream;
}