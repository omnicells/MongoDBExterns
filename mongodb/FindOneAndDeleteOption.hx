package mongodb;

/**
	http://mongodb.github.io/node-mongodb-native/3.6/api/Collection.html#findOneAndDelete
**/
typedef FindOneAndDeleteOption<T> = {
	@:optional
	var projection : ts.AnyOf2<{ }, Dynamic>;
	@:optional
	var sort : ts.AnyOf2<{ }, Dynamic>;
	@:optional
	var maxTimeMS : Float;
	@:optional
	var session : ClientSession;
	@:optional
	var collation : CollationDocument;
};