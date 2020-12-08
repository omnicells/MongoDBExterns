package mongodb;

typedef MongoClientCommonOption = {
	/**
		Do not make the db an event listener to the original connection.
	**/
	@:optional
	var noListener : Bool;
	/**
		Control if you want to return a cached instance or have a new one created
	**/
	@:optional
	var returnNonCachedInstance : Bool;
};