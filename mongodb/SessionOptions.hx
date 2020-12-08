package mongodb;

/**
	Options to pass when creating a Client Session
	http://mongodb.github.io/node-mongodb-native/3.1/api/global.html#SessionOptions
**/
typedef SessionOptions = {
	/**
		Whether causal consistency should be enabled on this session
	**/
	@:optional
	var causalConsistency : Bool;
	/**
		The default TransactionOptions to use for transactions started on this session.
	**/
	@:optional
	var defaultTransactionOptions : TransactionOptions;
};