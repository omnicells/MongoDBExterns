package bson;

/**
	A class representation of the BSON Binary type.
**/
@:jsRequire("bson", "Binary") extern class Binary {
	function new(buffer:global.Buffer, ?subType:Float);
	/**
		The underlying Buffer which stores the binary data.
	**/
	final buffer : global.Buffer;
	/**
		Binary data subtype
	**/
	@:optional
	final sub_type : Float;
	/**
		The length of the binary.
	**/
	function length():Float;
	/**
		Updates this binary with byte_value
	**/
	function put(byte_value:ts.AnyOf2<String, Float>):Void;
	/**
		Reads length bytes starting at position.
	**/
	function read(position:Float, length:Float):global.Buffer;
	/**
		Returns the value of this binary as a string.
	**/
	function value():String;
	/**
		Writes a buffer or string to the binary
	**/
	function write(buffer:ts.AnyOf2<String, global.Buffer>, offset:Float):Void;
	static var prototype : Binary;
	static final SUBTYPE_DEFAULT : Float;
	static final SUBTYPE_FUNCTION : Float;
	static final SUBTYPE_BYTE_ARRAY : Float;
	static final SUBTYPE_UUID_OLD : Float;
	static final SUBTYPE_UUID : Float;
	static final SUBTYPE_MD5 : Float;
	static final SUBTYPE_USER_DEFINED : Float;
}