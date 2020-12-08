package mongodb;

/**
	https://docs.mongodb.com/manual/reference/collation/#collation-document-fields
**/
typedef CollationDocument = {
	var locale : String;
	@:optional
	var strength : Float;
	@:optional
	var caseLevel : Bool;
	@:optional
	var caseFirst : String;
	@:optional
	var numericOrdering : Bool;
	@:optional
	var alternate : String;
	@:optional
	var maxVariable : String;
	@:optional
	var backwards : Bool;
	@:optional
	var normalization : Bool;
};