package mongodb;

typedef RootQuerySelector<T> = {
	/**
		https://docs.mongodb.com/manual/reference/operator/query/and/#op._S_and
	**/
	@:optional
	@:native("$and")
	var DollarAnd : Array<FilterQuery<T>>;
	/**
		https://docs.mongodb.com/manual/reference/operator/query/nor/#op._S_nor
	**/
	@:optional
	@:native("$nor")
	var DollarNor : Array<FilterQuery<T>>;
	/**
		https://docs.mongodb.com/manual/reference/operator/query/or/#op._S_or
	**/
	@:optional
	@:native("$or")
	var DollarOr : Array<FilterQuery<T>>;
	/**
		https://docs.mongodb.com/manual/reference/operator/query/text
	**/
	@:optional
	@:native("$text")
	var DollarText : {
		@:native("$search")
		var DollarSearch : String;
		@:optional
		@:native("$language")
		var DollarLanguage : String;
		@:optional
		@:native("$caseSensitive")
		var DollarCaseSensitive : Bool;
		@:optional
		@:native("$diacraticSensitive")
		var DollarDiacraticSensitive : Bool;
	};
	/**
		https://docs.mongodb.com/manual/reference/operator/query/where/#op._S_where
	**/
	@:optional
	@:native("$where")
	var DollarWhere : ts.AnyOf2<String, haxe.Constraints.Function>;
	/**
		https://docs.mongodb.com/manual/reference/operator/query/comment/#op._S_comment
	**/
	@:optional
	@:native("$comment")
	var DollarComment : String;
};