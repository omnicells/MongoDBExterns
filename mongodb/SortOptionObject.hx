package mongodb;

typedef SortOptionObject<T> = SchemaMember<T, ts.AnyOf2<Float, {
	@:optional
	@:native("$meta")
	var DollarMeta : MetaSortOperators;
}>>;