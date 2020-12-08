package mongodb;

/**
	http://mongodb.github.io/node-mongodb-native/3.1/api/Collection.html#mapReduce
**/
typedef MapReduceOptions = {
	@:optional
	var readPreference : ReadPreferenceOrMode;
	@:optional
	var out : Dynamic;
	@:optional
	var query : Dynamic;
	@:optional
	var sort : Dynamic;
	@:optional
	var limit : Float;
	@:optional
	var keeptemp : Bool;
	@:optional
	var finalize : ts.AnyOf2<String, haxe.Constraints.Function>;
	@:optional
	var scope : Dynamic;
	@:optional
	var jsMode : Bool;
	@:optional
	var verbose : Bool;
	@:optional
	var bypassDocumentValidation : Bool;
	@:optional
	var session : ClientSession;
};