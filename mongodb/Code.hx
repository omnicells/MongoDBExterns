package mongodb;

/**
	http://mongodb.github.io/node-mongodb-native/3.1/api/Code.html
**/
@:jsRequire("mongodb", "Code") extern class Code {
	function new(code:ts.AnyOf2<String, haxe.Constraints.Function>, ?scope:Dynamic);
	var code : ts.AnyOf2<String, haxe.Constraints.Function>;
	var scope : Dynamic;
	static var prototype : Code;
}