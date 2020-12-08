package mongodb;

/**
	https://docs.mongodb.com/manual/reference/operator/query-bitwise
**/
typedef BitwiseQuery = ts.AnyOf3<Float, bson.Binary, Array<Float>>;