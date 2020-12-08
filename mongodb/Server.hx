package mongodb;

@:jsRequire("mongodb", "Server") extern class Server extends node.events.EventEmitter {
	function new(host:String, port:Float, ?options:ServerOptions);
	function connections():Array<Dynamic>;
	function addListener(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Server;
	function on(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Server;
	function once(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Server;
	function removeListener(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Server;
	function off(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Server;
	function removeAllListeners(?event:ts.AnyOf2<String, js.lib.Symbol>):Server;
	function setMaxListeners(n:Float):Server;
	function prependListener(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Server;
	function prependOnceListener(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Server;
	static var prototype : Server;
}