package mongodb;

/**
	http://mongodb.github.io/node-mongodb-native/3.6/api/Collection.html#findOne
**/
typedef FindOneOptions<T> = {
	@:optional
	var limit : Float;
	@:optional
	var sort : ts.AnyOf3<{ }, Array<ts.Tuple2<String, Float>>, Dynamic>;
	@:optional
	var projection : ts.AnyOf2<{ }, Dynamic>;
	@:optional
	var fields : Dynamic;
	@:optional
	var skip : Float;
	@:optional
	var hint : Dynamic;
	@:optional
	var explain : Bool;
	@:optional
	var snapshot : Bool;
	@:optional
	var timeout : Bool;
	@:optional
	var tailable : Bool;
	@:optional
	var awaitData : Bool;
	@:optional
	var batchSize : Float;
	@:optional
	var returnKey : Bool;
	@:optional
	var maxScan : Float;
	@:optional
	var min : Float;
	@:optional
	var max : Float;
	@:optional
	var showDiskLoc : Bool;
	@:optional
	var comment : String;
	@:optional
	var raw : Bool;
	@:optional
	var promoteLongs : Bool;
	@:optional
	var promoteValues : Bool;
	@:optional
	var promoteBuffers : Bool;
	@:optional
	var readPreference : ReadPreferenceOrMode;
	@:optional
	var partial : Bool;
	@:optional
	var maxTimeMS : Float;
	@:optional
	var collation : CollationDocument;
	@:optional
	var session : ClientSession;
};