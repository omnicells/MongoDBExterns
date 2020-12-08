package mongodb;

typedef ChangeEventOther<TSchema> = {
	var operationType : String;
	var _id : ResumeToken;
	/**
		We leave this off the base type so that we can differentiate
		by checking its value and get intelligent types on the other fields
	**/
	var ns : {
		var db : String;
		var coll : String;
	};
	var clusterTime : bson.Timestamp;
	@:optional
	var txnNumber : Float;
	@:optional
	var lsid : {
		var id : Dynamic;
		var uid : Dynamic;
	};
};