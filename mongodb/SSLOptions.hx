package mongodb;

typedef SSLOptions = {
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