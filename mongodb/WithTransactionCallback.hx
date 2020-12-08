package mongodb;

typedef WithTransactionCallback<T> = (session:ClientSession) -> js.lib.Promise<T>;