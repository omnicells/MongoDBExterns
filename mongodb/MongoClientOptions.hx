package mongodb;

/**
	http://mongodb.github.io/node-mongodb-native/3.1/api/MongoClient.html#.connect
**/
typedef MongoClientOptions = {
	/**
		The logging level (error/warn/info/debug)
	**/
	@:optional
	var loggerLevel : String;
	/**
		Custom logger object
	**/
	@:optional
	var logger : ts.AnyOf2<Dynamic, Log>;
	/**
		Validate MongoClient passed in options for correctness.
		Default: false
	**/
	@:optional
	var validateOptions : ts.AnyOf2<Bool, Dynamic>;
	/**
		The name of the application that created this MongoClient instance.
	**/
	@:optional
	var appname : String;
	/**
		Authentication credentials
	**/
	@:optional
	var auth : {
		/**
			The username for auth
		**/
		var user : String;
		/**
			The password for auth
		**/
		var password : String;
	};
	/**
		Determines whether or not to use the new url parser. Enables the new, spec-compliant
		url parser shipped in the core driver. This url parser fixes a number of problems with
		the original parser, and aims to outright replace that parser in the near future.
	**/
	@:optional
	var useNewUrlParser : Bool;
	/**
		number of retries for a tailable cursor
	**/
	@:optional
	var numberOfRetries : Float;
	/**
		Mechanism for authentication: DEFAULT, GSSAPI, PLAIN, MONGODB-X509, 'MONGODB-CR', SCRAM-SHA-1 or SCRAM-SHA-256
	**/
	@:optional
	var authMechanism : String;
	/**
		Type of compression to use
	**/
	@:optional
	var compression : {
		/**
			The selected compressors in preference order
		**/
		@:optional
		var compressors : Array<String>;
	};
	/**
		If the database authentication is dependent on another databaseName.
	**/
	@:optional
	var authSource : String;
	/**
		Default: false; Force server to create _id fields instead of client.
	**/
	@:optional
	var forceServerObjectId : Bool;
	/**
		Default: false; Use c++ bson parser.
	**/
	@:optional
	var native_parser : Bool;
	/**
		Serialize functions on any object.
	**/
	@:optional
	var serializeFunctions : Bool;
	/**
		Specify if the BSON serializer should ignore undefined fields.
	**/
	@:optional
	var ignoreUndefined : Bool;
	/**
		Return document results as raw BSON buffers.
	**/
	@:optional
	var raw : Bool;
	/**
		Default: true; Promotes Long values to number if they fit inside the 53 bits resolution.
	**/
	@:optional
	var promoteLongs : Bool;
	/**
		Default: false; Promotes Binary BSON values to native Node Buffers
	**/
	@:optional
	var promoteBuffers : Bool;
	/**
		the prefered read preference. use 'ReadPreference' class.
	**/
	@:optional
	var readPreference : ReadPreferenceOrMode;
	/**
		Default: true; Promotes BSON values to native types where possible, set to false to only receive wrapper types.
	**/
	@:optional
	var promoteValues : Bool;
	/**
		Custom primary key factory to generate _id values (see Custom primary keys).
	**/
	@:optional
	var pkFactory : Dynamic;
	/**
		ES6 compatible promise constructor
	**/
	@:optional
	var promiseLibrary : js.lib.PromiseConstructor;
	/**
		https://docs.mongodb.com/manual/reference/read-concern/#read-concern
	**/
	@:optional
	var readConcern : ts.AnyOf2<String, ReadConcern>;
	/**
		Sets a cap on how many operations the driver will buffer up before giving up on getting a
		working connection, default is -1 which is unlimited.
	**/
	@:optional
	var bufferMaxEntries : Float;
	@:optional
	var session : ClientSession;
	/**
		requests acknowledgement that the write operation has
		propagated to a specified number of mongod hosts
	**/
	@:optional
	var w : ts.AnyOf2<String, Float>;
	/**
		requests acknowledgement from MongoDB that the write operation has
		been written to the journal
	**/
	@:optional
	var j : Bool;
	/**
		a time limit, in milliseconds, for the write concern
	**/
	@:optional
	var wtimeout : Float;
	/**
		If you're connected to a single server or mongos proxy (as opposed to a replica set),
		the MongoDB driver will try to reconnect every reconnectInterval milliseconds for reconnectTries
		times, and give up afterward. When the driver gives up, the mongoose connection emits a
		reconnectFailed event.
	**/
	@:optional
	var reconnectTries : Float;
	/**
		Will wait # milliseconds between retries
	**/
	@:optional
	var reconnectInterval : Float;
	@:optional
	var monitoring : Bool;
	/**
		Enable command monitoring for this client
	**/
	@:optional
	var monitorCommands : Bool;
	/**
		Socket Options
	**/
	@:optional
	var socketOptions : SocketOptions;
	/**
		The High availability period for replicaset inquiry
	**/
	@:optional
	var haInterval : Float;
	@:optional
	var domainsEnabled : Bool;
	/**
		Specify a file sync write concern
	**/
	@:optional
	var fsync : Bool;
	/**
		Passed directly through to tls.createSecureContext. See https://nodejs.org/dist/latest-v9.x/docs/api/tls.html#tls_tls_createsecurecontext_options for more info.
	**/
	@:optional
	var ciphers : String;
	/**
		Passed directly through to tls.createSecureContext. See https://nodejs.org/dist/latest-v9.x/docs/api/tls.html#tls_tls_createsecurecontext_options for more info.
	**/
	@:optional
	var ecdhCurve : String;
	/**
		Default:5; Number of connections for each server instance; set to 5 as default for legacy reasons.
	**/
	@:optional
	var poolSize : Float;
	/**
		If present, the connection pool will be initialized with minSize connections, and will never dip below minSize connections
	**/
	@:optional
	var minSize : Float;
	/**
		Use ssl connection (needs to have a mongod server with ssl support)
	**/
	@:optional
	var ssl : Bool;
	/**
		Default: true; Validate mongod server certificate against ca (mongod server >=2.4 with ssl support required)
	**/
	@:optional
	var sslValidate : Bool;
	/**
		Default: true; Server identity checking during SSL
	**/
	@:optional
	var checkServerIdentity : ts.AnyOf2<Bool, (host:String, cert:node.tls.PeerCertificate) -> Null<js.lib.Error>>;
	/**
		Array of valid certificates either as Buffers or Strings
	**/
	@:optional
	var sslCA : haxe.ds.ReadOnlyArray<ts.AnyOf2<String, global.Buffer>>;
	/**
		SSL Certificate revocation list binary buffer
	**/
	@:optional
	var sslCRL : haxe.ds.ReadOnlyArray<ts.AnyOf2<String, global.Buffer>>;
	/**
		SSL Certificate binary buffer
	**/
	@:optional
	var sslCert : ts.AnyOf2<String, global.Buffer>;
	/**
		SSL Key file binary buffer
	**/
	@:optional
	var sslKey : ts.AnyOf2<String, global.Buffer>;
	/**
		SSL Certificate pass phrase
	**/
	@:optional
	var sslPass : ts.AnyOf2<String, global.Buffer>;
	/**
		String containing the server name requested via TLS SNI.
	**/
	@:optional
	var servername : String;
	/**
		Default: 15; Cutoff latency point in MS for MongoS proxy selection
	**/
	@:optional
	var acceptableLatencyMS : Float;
	/**
		Default: true; Turn on high availability monitoring.
	**/
	@:optional
	var ha : Bool;
	/**
		An object representing read preference tags, see: http://mongodb.github.io/node-mongodb-native/3.1/api/ReadPreference.html
	**/
	@:optional
	var readPreferenceTags : Array<String>;
	/**
		The max staleness to secondary reads (values under 10 seconds cannot be guaranteed);
	**/
	@:optional
	var maxStalenessSeconds : Float;
	/**
		The name of the replicaset to connect to.
	**/
	@:optional
	var replicaSet : String;
	/**
		Default: 15 ; Range of servers to pick when using NEAREST (lowest ping ms + the latency fence, ex: range of 1 to (1 + 15) ms)
	**/
	@:optional
	var secondaryAcceptableLatencyMS : Float;
	@:optional
	var connectWithNoPrimary : Bool;
	/**
		Reconnect on error.
	**/
	@:optional
	var autoReconnect : Bool;
	/**
		TCP Socket NoDelay option.
	**/
	@:optional
	var noDelay : Bool;
	/**
		TCP KeepAlive enabled on the socket.
	**/
	@:optional
	var keepAlive : Bool;
	/**
		TCP KeepAlive initial delay before sending first keep-alive packet when idle.
	**/
	@:optional
	var keepAliveInitialDelay : Float;
	/**
		TCP Connection timeout setting.
	**/
	@:optional
	var connectTimeoutMS : Float;
	/**
		Version of IP stack. Can be 4, 6 or null.
	**/
	@:optional
	var family : Int;
	/**
		TCP Socket timeout setting.
	**/
	@:optional
	var socketTimeoutMS : Float;
	/**
		Enable TLS connections
	**/
	@:optional
	var tls : Bool;
	/**
		Relax TLS constraints, disabling validation
	**/
	@:optional
	var tlsInsecure : Bool;
	/**
		path to file with either a single or bundle of certificate authorities
		to be considered trusted when making a TLS connection
	**/
	@:optional
	var tlsCAFile : String;
	/**
		path to the client certificate file or the client private key file;
		in the case that they both are needed, the files should be concatenated
	**/
	@:optional
	var tlsCertificateKeyFile : String;
	/**
		The password to decrypt the client private key to be used for TLS connections
	**/
	@:optional
	var tlsCertificateKeyFilePassword : String;
	/**
		Specifies whether or not the driver should error when the server’s TLS certificate is invalid
	**/
	@:optional
	var tlsAllowInvalidCertificates : Bool;
	/**
		Specifies whether or not the driver should error when there is a mismatch between the server’s hostname
		and the hostname specified by the TLS certificate
	**/
	@:optional
	var tlsAllowInvalidHostnames : Bool;
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