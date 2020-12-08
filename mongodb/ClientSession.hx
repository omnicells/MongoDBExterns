package mongodb;

/**
	http://mongodb.github.io/node-mongodb-native/3.1/api/ClientSession.html
**/
typedef ClientSession = {
	/**
		The server id associated with this session
	**/
	var id : Dynamic;
	/**
		Aborts the currently active transaction in this session.
	**/
	function abortTransaction(?cb:MongoCallback<Void>):js.lib.Promise<Void>;
	/**
		Advances the operationTime for a ClientSession.
	**/
	function advanceOperationTime(operamtionTime:bson.Timestamp):Void;
	/**
		Commits the currently active transaction in this session.
	**/
	function commitTransaction(?cb:MongoCallback<Void>):js.lib.Promise<Void>;
	/**
		Ends this session on the server
		
		Ends this session on the server
	**/
	@:overload(function(options:Dynamic, ?cb:MongoCallback<Void>):Void { })
	function endSession(?cb:MongoCallback<Void>):Void;
	/**
		Used to determine if this session equals another
	**/
	function equals(session:ClientSession):Bool;
	/**
		Increment the transaction number on the internal ServerSession
	**/
	function incrementTransactionNumber():Void;
	function inTransaction():Bool;
	/**
		Starts a new transaction with the given options.
	**/
	function startTransaction(?options:TransactionOptions):Void;
	/**
		Runs a provided lambda within a transaction, retrying either the commit operation
		or entire transaction as needed (and when the error permits) to better ensure that
		the transaction can complete successfully.
		
		IMPORTANT: This method requires the user to return a Promise, all lambdas that do not
		return a Promise will result in undefined behavior.
	**/
	function withTransaction<T>(fn:WithTransactionCallback<T>, ?options:TransactionOptions):js.lib.Promise<Void>;
	function addListener(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ClientSession;
	function on(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ClientSession;
	function once(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ClientSession;
	function removeListener(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ClientSession;
	function off(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ClientSession;
	function removeAllListeners(?event:ts.AnyOf2<String, js.lib.Symbol>):ClientSession;
	function setMaxListeners(n:Float):ClientSession;
	function getMaxListeners():Float;
	function listeners(event:ts.AnyOf2<String, js.lib.Symbol>):Array<haxe.Constraints.Function>;
	function rawListeners(event:ts.AnyOf2<String, js.lib.Symbol>):Array<haxe.Constraints.Function>;
	function emit(event:ts.AnyOf2<String, js.lib.Symbol>, args:haxe.extern.Rest<Dynamic>):Bool;
	function listenerCount(event:ts.AnyOf2<String, js.lib.Symbol>):Float;
	function prependListener(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ClientSession;
	function prependOnceListener(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ClientSession;
	function eventNames():Array<ts.AnyOf2<String, js.lib.Symbol>>;
};