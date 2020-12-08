package mongodb;

typedef ArrayOperator<Type> = {
	@:native("$each")
	var DollarEach : Type;
	@:optional
	@:native("$slice")
	var DollarSlice : Float;
	@:optional
	@:native("$position")
	var DollarPosition : Float;
	@:optional
	@:native("$sort")
	var DollarSort : ts.AnyOf2<Int, { }>;
};