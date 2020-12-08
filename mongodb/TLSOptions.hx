package mongodb;

typedef TLSOptions = {
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
};