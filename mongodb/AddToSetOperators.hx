package mongodb;

typedef AddToSetOperators<Type> = {
	@:native("$each")
	var DollarEach : Type;
};