package mongodb;

/**
	https://docs.mongodb.com/manual/reference/operator/projection/
**/
typedef ProjectionOperators = {
	/**
		https://docs.mongodb.com/manual/reference/operator/projection/elemMatch/#proj._S_elemMatch
	**/
	@:optional
	@:native("$elemMatch")
	var DollarElemMatch : Dynamic;
	/**
		https://docs.mongodb.com/manual/reference/operator/projection/slice/#proj._S_slice
	**/
	@:optional
	@:native("$slice")
	var DollarSlice : ts.AnyOf2<Float, ts.Tuple2<Float, Float>>;
	@:optional
	@:native("$meta")
	var DollarMeta : MetaProjectionOperators;
};