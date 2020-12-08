package mongodb;

/**
	http://mongodb.github.io/node-mongodb-native/3.6/api/Server.html
**/
typedef SocketOptions = {
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
};