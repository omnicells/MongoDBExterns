package mongodb;

/**
	http://mongodb.github.io/node-mongodb-native/3.3/api/ChangeStream.html
**/
@:jsRequire("mongodb", "ChangeStream") extern class ChangeStream<TSchema> extends TypedEventEmitter<ChangeStreamEvents<TSchema>> {
	function new(parent:ts.AnyOf3<MongoClient, Db, Collection<Dynamic>>, pipeline:Array<Dynamic>, ?options:ChangeStreamOptions);
	var resumeToken : ResumeToken;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/ChangeStream.html#close
	**/
	@:overload(function(callback:MongoCallback<Dynamic>):Void { })
	function close():js.lib.Promise<Dynamic>;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/ChangeStream.html#hasNext
	**/
	@:overload(function(callback:MongoCallback<Dynamic>):Void { })
	function hasNext():js.lib.Promise<Dynamic>;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/ChangeStream.html#isClosed
	**/
	function isClosed():Bool;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/ChangeStream.html#next
	**/
	@:overload(function(callback:MongoCallback<Dynamic>):Void { })
	function next():js.lib.Promise<Dynamic>;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/ChangeStream.html#stream
	**/
	function stream(?options:{ @:optional var transform : haxe.Constraints.Function; }):Cursor<Dynamic>;
	function addListener<E>(event:E, listener:Dynamic):ChangeStream<TSchema>;
	function on<E>(event:E, listener:Dynamic):ChangeStream<TSchema>;
	function once<E>(event:E, listener:Dynamic):ChangeStream<TSchema>;
	function prependListener<E>(event:E, listener:Dynamic):ChangeStream<TSchema>;
	function prependOnceListener<E>(event:E, listener:Dynamic):ChangeStream<TSchema>;
	function off<E>(event:E, listener:Dynamic):ChangeStream<TSchema>;
	function removeAllListeners<E>(?event:E):ChangeStream<TSchema>;
	function removeListener<E>(event:E, listener:Dynamic):ChangeStream<TSchema>;
	function setMaxListeners(maxListeners:Float):ChangeStream<TSchema>;
	static var prototype : ChangeStream<Dynamic>;
}