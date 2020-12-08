package mongodb;

typedef ReadPreferenceOptions = {
	@:optional
	var hedge : {
		@:optional
		var enabled : Bool;
	};
	/**
		Max Secondary Read Staleness in Seconds
	**/
	@:optional
	var maxStalenessSeconds : Float;
};