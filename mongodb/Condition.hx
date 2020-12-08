package mongodb;

typedef Condition<T> = ts.AnyOf2<QuerySelector<MongoAltQuery<T>>, MongoAltQuery<T>>;