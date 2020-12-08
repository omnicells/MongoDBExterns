package mongodb;

/**
	https://docs.mongodb.com/manual/reference/operator/query/type/#available-types
**/
@:jsRequire("mongodb", "BSONType") @:enum extern abstract BSONType(Int) from Int to Int {
	var Double;
	var String;
	var Object;
	var Array;
	var BinData;
	var Undefined;
	var ObjectId;
	var Boolean;
	var Date;
	var Null;
	var Regex;
	var DBPointer;
	var JavaScript;
	var Symbol;
	var JavaScriptWithScope;
	var Int;
	var Timestamp;
	var Long;
	var Decimal;
	var MinKey;
	var MaxKey;
}