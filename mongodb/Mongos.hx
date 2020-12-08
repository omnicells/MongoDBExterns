package mongodb;

@:jsRequire("mongodb", "Mongos") extern class Mongos extends node.events.EventEmitter {
	function new(servers:Array<Server>, ?options:MongosOptions);
	function connections():Array<Dynamic>;
	function addListener(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Mongos;
	function on(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Mongos;
	function once(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Mongos;
	function removeListener(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Mongos;
	function off(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Mongos;
	function removeAllListeners(?event:ts.AnyOf2<String, js.lib.Symbol>):Mongos;
	function setMaxListeners(n:Float):Mongos;
	function prependListener(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Mongos;
	function prependOnceListener(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Mongos;
	static var prototype : Mongos;
}