package mongodb;

typedef Log = ts.AnyOf3<() -> Void, (message:String) -> Void, (message:String, state:LoggerState) -> Void>;