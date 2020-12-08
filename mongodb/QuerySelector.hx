package mongodb;

/**
	https://docs.mongodb.com/manual/reference/operator/query/#query-selectors
**/
typedef QuerySelector<T> = {
	@:optional
	@:native("$eq")
	var DollarEq : T;
	@:optional
	@:native("$gt")
	var DollarGt : T;
	@:optional
	@:native("$gte")
	var DollarGte : T;
	@:optional
	@:native("$in")
	var DollarIn : Array<T>;
	@:optional
	@:native("$lt")
	var DollarLt : T;
	@:optional
	@:native("$lte")
	var DollarLte : T;
	@:optional
	@:native("$ne")
	var DollarNe : T;
	@:optional
	@:native("$nin")
	var DollarNin : Array<T>;
	@:optional
	@:native("$not")
	var DollarNot : Dynamic;
	/**
		When `true`, `$exists` matches the documents that contain the field,
		including documents where the field value is null.
	**/
	@:optional
	@:native("$exists")
	var DollarExists : Bool;
	@:optional
	@:native("$type")
	var DollarType : ts.AnyOf2<String, BSONType>;
	@:optional
	@:native("$expr")
	var DollarExpr : Dynamic;
	@:optional
	@:native("$jsonSchema")
	var DollarJsonSchema : Dynamic;
	@:optional
	@:native("$mod")
	var DollarMod : Dynamic;
	@:optional
	@:native("$regex")
	var DollarRegex : Dynamic;
	@:optional
	@:native("$options")
	var DollarOptions : Dynamic;
	@:optional
	@:native("$geoIntersects")
	var DollarGeoIntersects : {
		@:native("$geometry")
		var DollarGeometry : Dynamic;
	};
	@:optional
	@:native("$geoWithin")
	var DollarGeoWithin : Dynamic;
	@:optional
	@:native("$near")
	var DollarNear : Dynamic;
	@:optional
	@:native("$nearSphere")
	var DollarNearSphere : Dynamic;
	@:optional
	@:native("$maxDistance")
	var DollarMaxDistance : Float;
	@:optional
	@:native("$all")
	var DollarAll : Dynamic;
	@:optional
	@:native("$elemMatch")
	var DollarElemMatch : Dynamic;
	@:optional
	@:native("$size")
	var DollarSize : Dynamic;
	@:optional
	@:native("$bitsAllClear")
	var DollarBitsAllClear : BitwiseQuery;
	@:optional
	@:native("$bitsAllSet")
	var DollarBitsAllSet : BitwiseQuery;
	@:optional
	@:native("$bitsAnyClear")
	var DollarBitsAnyClear : BitwiseQuery;
	@:optional
	@:native("$bitsAnySet")
	var DollarBitsAnySet : BitwiseQuery;
};