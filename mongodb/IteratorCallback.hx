package mongodb;

/**
	http://mongodb.github.io/node-mongodb-native/3.1/api/Cursor.html#~iteratorCallback
**/
typedef IteratorCallback<T> = (doc:T) -> Void;