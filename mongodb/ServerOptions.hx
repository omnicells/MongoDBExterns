package mongodb;

/**
	http://mongodb.github.io/node-mongodb-native/3.1/api/Server.html
**/
typedef ServerOptions = {
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
};