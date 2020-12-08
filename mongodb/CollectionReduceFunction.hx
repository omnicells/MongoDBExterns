package mongodb;

typedef CollectionReduceFunction<TKey, TValue> = (key:TKey, values:Array<TValue>) -> TValue;