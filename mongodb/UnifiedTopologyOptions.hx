package mongodb;

typedef UnifiedTopologyOptions = {
	/**
		Enables the new unified topology layer
	**/
	@:optional
	var useUnifiedTopology : Bool;
	/**
		**Only applies to the unified topology**
		The size of the latency window for selecting among multiple suitable servers
	**/
	@:optional
	var localThresholdMS : Float;
	/**
		With `useUnifiedTopology`, the MongoDB driver will try to find a server to send any given operation to
		and keep retrying for `serverSelectionTimeoutMS` milliseconds.
		Default: 30000
	**/
	@:optional
	var serverSelectionTimeoutMS : Float;
	/**
		**Only applies to the unified topology**
		The frequency with which topology updates are scheduled
	**/
	@:optional
	var heartbeatFrequencyMS : Float;
	/**
		**Only applies to the unified topology**
		The maximum number of connections that may be associated with a pool at a given time.
		This includes in use and available connections
	**/
	@:optional
	var maxPoolSize : Float;
	/**
		**Only applies to the unified topology**
		The minimum number of connections that MUST exist at any moment in a single connection pool.
	**/
	@:optional
	var minPoolSize : Float;
	/**
		**Only applies to the unified topology**
		The maximum amount of time a connection should remain idle in the connection pool before being marked idle.
	**/
	@:optional
	var maxIdleTimeMS : Float;
	/**
		**Only applies to the unified topology**
		The maximum amount of time operation execution should wait for a connection to become available.
		The default is 0 which means there is no limit.
	**/
	@:optional
	var waitQueueTimeoutMS : Float;
};