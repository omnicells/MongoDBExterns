package mongodb;

typedef MongoCallback<T> = (error:MongoError, result:T) -> Void;