package mongodb;

@:jsRequire("mongodb", "ReplSet") extern class ReplSet extends node.events.EventEmitter {
	function new(servers:Array<Server>, ?options:ReplSetOptions);
	function connections():Array<Dynamic>;
	function addListener(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ReplSet;
	function on(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ReplSet;
	function once(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ReplSet;
	function removeListener(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ReplSet;
	function off(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ReplSet;
	function removeAllListeners(?event:ts.AnyOf2<String, js.lib.Symbol>):ReplSet;
	function setMaxListeners(n:Float):ReplSet;
	function prependListener(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ReplSet;
	function prependOnceListener(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ReplSet;
	static var prototype : ReplSet;
}