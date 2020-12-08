package mongodb;

/**
	Type-safe event emitter from https://github.com/andywer/typed-emitter.
	
	Use it like this:
	
	interface MyEvents {
	   error: (error: Error) => void
	   message: (from: string, content: string) => void
	}
	
	const myEmitter = new EventEmitter() as TypedEmitter<MyEvents>
	
	myEmitter.on("message", (from, content) => {
	   // ...
	})
	
	myEmitter.emit("error", "x")  // <- Will catch this type error
**/
@jsInaccessible extern class TypedEventEmitter<Events> {
	function new();
	function addListener<E>(event:E, listener:Dynamic):TypedEventEmitter<Events>;
	function on<E>(event:E, listener:Dynamic):TypedEventEmitter<Events>;
	function once<E>(event:E, listener:Dynamic):TypedEventEmitter<Events>;
	function prependListener<E>(event:E, listener:Dynamic):TypedEventEmitter<Events>;
	function prependOnceListener<E>(event:E, listener:Dynamic):TypedEventEmitter<Events>;
	function off<E>(event:E, listener:Dynamic):TypedEventEmitter<Events>;
	function removeAllListeners<E>(?event:E):TypedEventEmitter<Events>;
	function removeListener<E>(event:E, listener:Dynamic):TypedEventEmitter<Events>;
	function emit<E>(event:E, args:haxe.extern.Rest<Any>):Bool;
	function eventNames():Array<Dynamic>;
	function rawListeners<E>(event:E):Array<haxe.Constraints.Function>;
	function listeners<E>(event:E):Array<haxe.Constraints.Function>;
	function listenerCount<E>(event:E):Float;
	function getMaxListeners():Float;
	function setMaxListeners(maxListeners:Float):TypedEventEmitter<Events>;
	static var prototype : TypedEventEmitter<Dynamic>;
}