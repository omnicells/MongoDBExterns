package mongodb;

/**
	http://docs.mongodb.org/manual/reference/command/collStats/
**/
typedef CollStats = {
	/**
		Namespace.
	**/
	var ns : String;
	/**
		Number of documents.
	**/
	var count : Float;
	/**
		Collection size in bytes.
	**/
	var size : Float;
	/**
		Average object size in bytes.
	**/
	var avgObjSize : Float;
	/**
		(Pre)allocated space for the collection in bytes.
	**/
	var storageSize : Float;
	/**
		Number of extents (contiguously allocated chunks of datafile space).
	**/
	var numExtents : Float;
	/**
		Number of indexes.
	**/
	var nindexes : Float;
	/**
		Size of the most recently created extent in bytes.
	**/
	var lastExtentSize : Float;
	/**
		Padding can speed up updates if documents grow.
	**/
	var paddingFactor : Float;
	/**
		A number that indicates the user-set flags on the collection. userFlags only appears when using the mmapv1 storage engine.
	**/
	@:optional
	var userFlags : Float;
	/**
		Total index size in bytes.
	**/
	var totalIndexSize : Float;
	/**
		Size of specific indexes in bytes.
	**/
	var indexSizes : {
		var _id_ : Float;
	};
	/**
		`true` if the collection is capped.
	**/
	var capped : Bool;
	/**
		The maximum number of documents that may be present in a capped collection.
	**/
	var max : Float;
	/**
		The maximum size of a capped collection.
	**/
	var maxSize : Float;
	@:optional
	var wiredTiger : WiredTigerData;
	@:optional
	var indexDetails : Dynamic;
	var ok : Float;
};