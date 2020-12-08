package mongodb;

/**
	https://docs.mongodb.com/manual/reference/operator/update
**/
typedef UpdateQuery<TSchema> = {
	/**
		https://docs.mongodb.com/manual/reference/operator/update-field/
	**/
	@:optional
	@:native("$currentDate")
	var DollarCurrentDate : OnlyFieldsOfType<TSchema, js.lib.Date, ts.AnyOf2<Bool, {
		@:native("$type")
		var DollarType : String;
	}>>;
	@:optional
	@:native("$inc")
	var DollarInc : OnlyFieldsOfType<TSchema, Null<NumericTypes>, Null<NumericTypes>>;
	@:optional
	@:native("$min")
	var DollarMin : MatchKeysAndValues<TSchema>;
	@:optional
	@:native("$max")
	var DollarMax : MatchKeysAndValues<TSchema>;
	@:optional
	@:native("$mul")
	var DollarMul : OnlyFieldsOfType<TSchema, Null<NumericTypes>, Null<NumericTypes>>;
	@:optional
	@:native("$rename")
	var DollarRename : { };
	@:optional
	@:native("$set")
	var DollarSet : MatchKeysAndValues<TSchema>;
	@:optional
	@:native("$setOnInsert")
	var DollarSetOnInsert : MatchKeysAndValues<TSchema>;
	@:optional
	@:native("$unset")
	var DollarUnset : OnlyFieldsOfType<TSchema, Dynamic, ts.AnyOf3<Bool, String, Int>>;
	/**
		https://docs.mongodb.com/manual/reference/operator/update-array/
	**/
	@:optional
	@:native("$addToSet")
	var DollarAddToSet : SetFields<TSchema>;
	@:optional
	@:native("$pop")
	var DollarPop : OnlyFieldsOfType<TSchema, haxe.ds.ReadOnlyArray<Dynamic>, SortValues>;
	@:optional
	@:native("$pull")
	var DollarPull : PullOperator<TSchema>;
	@:optional
	@:native("$push")
	var DollarPush : PushOperator<TSchema>;
	@:optional
	@:native("$pullAll")
	var DollarPullAll : PullAllOperator<TSchema>;
	/**
		https://docs.mongodb.com/manual/reference/operator/update-bitwise/
	**/
	@:optional
	@:native("$bit")
	var DollarBit : { };
};