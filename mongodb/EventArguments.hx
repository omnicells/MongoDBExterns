package mongodb;

/**
	This is similar to Parameters but will work with a type which is
	a function or with a tuple specifying arguments, which are both
	common ways to define eventemitter events
**/
typedef EventArguments<T> = Dynamic;