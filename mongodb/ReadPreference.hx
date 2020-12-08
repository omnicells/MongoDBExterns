package mongodb;

@:jsRequire("mongodb", "ReadPreference") extern class ReadPreference {
	function new(mode:ReadPreferenceMode, tags:Dynamic, ?options:ReadPreferenceOptions);
	var mode : ReadPreferenceMode;
	var tags : Dynamic;
	function isValid(mode:String):Bool;
	static var prototype : ReadPreference;
	static var PRIMARY : String;
	static var PRIMARY_PREFERRED : String;
	static var SECONDARY : String;
	static var SECONDARY_PREFERRED : String;
	static var NEAREST : String;
	@:native("isValid")
	static function isValid_(mode:String):Bool;
}