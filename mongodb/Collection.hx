package mongodb;

/**
	http://mongodb.github.io/node-mongodb-native/3.1/api/Collection.html
**/
typedef Collection<TSchema> = {
	/**
		Get the collection name.
	**/
	var collectionName : String;
	/**
		Get the full collection namespace.
	**/
	var namespace : String;
	/**
		The current write concern values.
	**/
	var writeConcern : WriteConcern;
	/**
		The current read concern values.
	**/
	var readConcern : ReadConcern;
	/**
		Get current index hint for collection.
	**/
	var hint : Dynamic;
	/**
		http://mongodb.github.io/node-mongodb-native/3.0/api/Collection.html#aggregate
	**/
	@:overload(function<T>(pipeline:Array<Dynamic>, callback:MongoCallback<AggregationCursor<T>>):AggregationCursor<T> { })
	@:overload(function<T>(?pipeline:Array<Dynamic>, ?options:CollectionAggregationOptions, ?callback:MongoCallback<AggregationCursor<T>>):AggregationCursor<T> { })
	function aggregate<T>(callback:MongoCallback<AggregationCursor<T>>):AggregationCursor<T>;
	/**
		http://mongodb.github.io/node-mongodb-native/3.0/api/Collection.html#bulkWrite
	**/
	@:overload(function(operations:Array<BulkWriteOperation<TSchema>>, ?options:CollectionBulkWriteOptions):js.lib.Promise<BulkWriteOpResultObject> { })
	@:overload(function(operations:Array<BulkWriteOperation<TSchema>>, options:CollectionBulkWriteOptions, callback:MongoCallback<BulkWriteOpResultObject>):Void { })
	function bulkWrite(operations:Array<BulkWriteOperation<TSchema>>, callback:MongoCallback<BulkWriteOpResultObject>):Void;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/Collection.html#count
	**/
	@:overload(function(query:FilterQuery<TSchema>, callback:MongoCallback<Float>):Void { })
	@:overload(function(?query:FilterQuery<TSchema>, ?options:MongoCountPreferences):js.lib.Promise<Float> { })
	@:overload(function(query:FilterQuery<TSchema>, options:MongoCountPreferences, callback:MongoCallback<Float>):Void { })
	function count(callback:MongoCallback<Float>):Void;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/Collection.html#countDocuments
	**/
	@:overload(function(query:FilterQuery<TSchema>, callback:MongoCallback<Float>):Void { })
	@:overload(function(?query:FilterQuery<TSchema>, ?options:MongoCountPreferences):js.lib.Promise<Float> { })
	@:overload(function(query:FilterQuery<TSchema>, options:MongoCountPreferences, callback:MongoCallback<Float>):Void { })
	function countDocuments(callback:MongoCallback<Float>):Void;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/Collection.html#createIndex
	**/
	@:overload(function(fieldOrSpec:Dynamic, ?options:IndexOptions):js.lib.Promise<String> { })
	@:overload(function(fieldOrSpec:Dynamic, options:IndexOptions, callback:MongoCallback<String>):Void { })
	function createIndex(fieldOrSpec:Dynamic, callback:MongoCallback<String>):Void;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/Collection.html#createIndexes and  http://docs.mongodb.org/manual/reference/command/createIndexes/
	**/
	@:overload(function(indexSpecs:Array<IndexSpecification>, ?options:{ @:optional var session : ClientSession; }):js.lib.Promise<Dynamic> { })
	@:overload(function(indexSpecs:Array<IndexSpecification>, options:{ @:optional var session : ClientSession; }, callback:MongoCallback<Dynamic>):Void { })
	function createIndexes(indexSpecs:Array<IndexSpecification>, callback:MongoCallback<Dynamic>):Void;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/Collection.html#deleteMany
	**/
	@:overload(function(filter:FilterQuery<TSchema>, ?options:CommonOptions):js.lib.Promise<DeleteWriteOpResultObject> { })
	@:overload(function(filter:FilterQuery<TSchema>, options:CommonOptions, callback:MongoCallback<DeleteWriteOpResultObject>):Void { })
	function deleteMany(filter:FilterQuery<TSchema>, callback:MongoCallback<DeleteWriteOpResultObject>):Void;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/Collection.html#deleteOne
	**/
	@:overload(function(filter:FilterQuery<TSchema>, ?options:CommonOptions & { @:optional var bypassDocumentValidation : Bool; }):js.lib.Promise<DeleteWriteOpResultObject> { })
	@:overload(function(filter:FilterQuery<TSchema>, options:CommonOptions & { @:optional var bypassDocumentValidation : Bool; }, callback:MongoCallback<DeleteWriteOpResultObject>):Void { })
	function deleteOne(filter:FilterQuery<TSchema>, callback:MongoCallback<DeleteWriteOpResultObject>):Void;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/Collection.html#distinct
	**/
	@:overload(function<Key>(key:Key, query:FilterQuery<TSchema>, callback:MongoCallback<Array<FlattenIfArray<Dynamic>>>):Void { })
	@:overload(function<Key>(key:Key, ?query:FilterQuery<TSchema>, ?options:MongoDistinctPreferences):js.lib.Promise<Array<FlattenIfArray<Dynamic>>> { })
	@:overload(function<Key>(key:Key, query:FilterQuery<TSchema>, options:MongoDistinctPreferences, callback:MongoCallback<Array<FlattenIfArray<Dynamic>>>):Void { })
	@:overload(function(key:String, callback:MongoCallback<Array<Dynamic>>):Void { })
	@:overload(function(key:String, query:FilterQuery<TSchema>, callback:MongoCallback<Array<Dynamic>>):Void { })
	@:overload(function(key:String, ?query:FilterQuery<TSchema>, ?options:MongoDistinctPreferences):js.lib.Promise<Array<Dynamic>> { })
	@:overload(function(key:String, query:FilterQuery<TSchema>, options:MongoDistinctPreferences, callback:MongoCallback<Array<Dynamic>>):Void { })
	function distinct<Key>(key:Key, callback:MongoCallback<Array<FlattenIfArray<Dynamic>>>):Void;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/Collection.html#drop
	**/
	@:overload(function(callback:MongoCallback<Dynamic>):Void { })
	@:overload(function(options:{ var session : ClientSession; }, callback:MongoCallback<Dynamic>):Void { })
	function drop(?options:{ var session : ClientSession; }):js.lib.Promise<Dynamic>;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/Collection.html#dropIndex
	**/
	@:overload(function(indexName:String, ?options:CommonOptions & { @:optional var maxTimeMS : Float; }):js.lib.Promise<Dynamic> { })
	@:overload(function(indexName:String, options:CommonOptions & { @:optional var maxTimeMS : Float; }, callback:MongoCallback<Dynamic>):Void { })
	function dropIndex(indexName:String, callback:MongoCallback<Dynamic>):Void;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/Collection.html#dropIndexes
	**/
	@:overload(function(?callback:MongoCallback<Dynamic>):Void { })
	@:overload(function(options:{ @:optional var session : ClientSession; @:optional var maxTimeMS : Float; }, callback:MongoCallback<Dynamic>):Void { })
	function dropIndexes(?options:{ @:optional var session : ClientSession; @:optional var maxTimeMS : Float; }):js.lib.Promise<Dynamic>;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/Collection.html#estimatedDocumentCount
	**/
	@:overload(function(query:FilterQuery<TSchema>, callback:MongoCallback<Float>):Void { })
	@:overload(function(?query:FilterQuery<TSchema>, ?options:MongoCountPreferences):js.lib.Promise<Float> { })
	@:overload(function(query:FilterQuery<TSchema>, options:MongoCountPreferences, callback:MongoCallback<Float>):Void { })
	function estimatedDocumentCount(callback:MongoCallback<Float>):Void;
	/**
		http://mongodb.github.io/node-mongodb-native/3.6/api/Collection.html#find
	**/
	@:overload(function<T>(query:FilterQuery<TSchema>, ?options:FindOneOptions<Dynamic>):Cursor<T> { })
	function find<T>(?query:FilterQuery<TSchema>):Cursor<T>;
	/**
		http://mongodb.github.io/node-mongodb-native/3.6/api/Collection.html#findOne
	**/
	@:overload(function<T>(filter:FilterQuery<TSchema>, ?options:FindOneOptions<Dynamic>):js.lib.Promise<Null<T>> { })
	@:overload(function<T>(filter:FilterQuery<TSchema>, options:FindOneOptions<Dynamic>, callback:MongoCallback<Dynamic>):Void { })
	function findOne<T>(filter:FilterQuery<TSchema>, callback:MongoCallback<Dynamic>):Void;
	/**
		http://mongodb.github.io/node-mongodb-native/3.6/api/Collection.html#findOneAndDelete
	**/
	@:overload(function(filter:FilterQuery<TSchema>, ?options:FindOneAndDeleteOption<TSchema>):js.lib.Promise<FindAndModifyWriteOpResultObject<TSchema>> { })
	@:overload(function(filter:FilterQuery<TSchema>, options:FindOneAndDeleteOption<TSchema>, callback:MongoCallback<FindAndModifyWriteOpResultObject<TSchema>>):Void { })
	function findOneAndDelete(filter:FilterQuery<TSchema>, callback:MongoCallback<FindAndModifyWriteOpResultObject<TSchema>>):Void;
	/**
		http://mongodb.github.io/node-mongodb-native/3.6/api/Collection.html#findOneAndReplace
	**/
	@:overload(function(filter:FilterQuery<TSchema>, replacement:Dynamic, ?options:FindOneAndReplaceOption<TSchema>):js.lib.Promise<FindAndModifyWriteOpResultObject<TSchema>> { })
	@:overload(function(filter:FilterQuery<TSchema>, replacement:Dynamic, options:FindOneAndReplaceOption<TSchema>, callback:MongoCallback<FindAndModifyWriteOpResultObject<TSchema>>):Void { })
	function findOneAndReplace(filter:FilterQuery<TSchema>, replacement:Dynamic, callback:MongoCallback<FindAndModifyWriteOpResultObject<TSchema>>):Void;
	/**
		http://mongodb.github.io/node-mongodb-native/3.6/api/Collection.html#findOneAndUpdate
	**/
	@:overload(function(filter:FilterQuery<TSchema>, update:ts.AnyOf2<UpdateQuery<TSchema>, TSchema>, ?options:FindOneAndUpdateOption<TSchema>):js.lib.Promise<FindAndModifyWriteOpResultObject<TSchema>> { })
	@:overload(function(filter:FilterQuery<TSchema>, update:ts.AnyOf2<UpdateQuery<TSchema>, TSchema>, options:FindOneAndUpdateOption<TSchema>, callback:MongoCallback<FindAndModifyWriteOpResultObject<TSchema>>):Void { })
	function findOneAndUpdate(filter:FilterQuery<TSchema>, update:ts.AnyOf2<UpdateQuery<TSchema>, TSchema>, callback:MongoCallback<FindAndModifyWriteOpResultObject<TSchema>>):Void;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/Collection.html#geoHaystackSearch
	**/
	@:overload(function(x:Float, y:Float, ?options:GeoHaystackSearchOptions):js.lib.Promise<Dynamic> { })
	@:overload(function(x:Float, y:Float, options:GeoHaystackSearchOptions, callback:MongoCallback<Dynamic>):Void { })
	function geoHaystackSearch(x:Float, y:Float, callback:MongoCallback<Dynamic>):Void;
	@:overload(function(keys:ts.AnyOf4<Dynamic, haxe.Constraints.Function, Array<Dynamic>, Code>, condition:Dynamic, initial:Dynamic, reduce:ts.AnyOf2<haxe.Constraints.Function, Code>, finalize:ts.AnyOf2<haxe.Constraints.Function, Code>, command:Bool, ?options:{ @:optional var readPreference : ReadPreferenceOrMode; @:optional var session : ClientSession; }):js.lib.Promise<Dynamic> { })
	@:overload(function(keys:ts.AnyOf4<Dynamic, haxe.Constraints.Function, Array<Dynamic>, Code>, condition:Dynamic, initial:Dynamic, reduce:ts.AnyOf2<haxe.Constraints.Function, Code>, finalize:ts.AnyOf2<haxe.Constraints.Function, Code>, command:Bool, options:{ @:optional var readPreference : ReadPreferenceOrMode; @:optional var session : ClientSession; }, callback:MongoCallback<Dynamic>):Void { })
	function group(keys:ts.AnyOf4<Dynamic, haxe.Constraints.Function, Array<Dynamic>, Code>, condition:Dynamic, initial:Dynamic, reduce:ts.AnyOf2<haxe.Constraints.Function, Code>, finalize:ts.AnyOf2<haxe.Constraints.Function, Code>, command:Bool, callback:MongoCallback<Dynamic>):Void;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/Collection.html#indexes
	**/
	@:overload(function(callback:MongoCallback<Dynamic>):Void { })
	@:overload(function(options:{ @:optional var session : ClientSession; }, callback:MongoCallback<Dynamic>):Void { })
	function indexes(?options:{ var session : ClientSession; }):js.lib.Promise<Dynamic>;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/Collection.html#indexExists
	**/
	@:overload(function(indexes:ts.AnyOf2<String, Array<String>>, ?options:{ var session : ClientSession; }):js.lib.Promise<Bool> { })
	@:overload(function(indexes:ts.AnyOf2<String, Array<String>>, options:{ var session : ClientSession; }, callback:MongoCallback<Bool>):Void { })
	function indexExists(indexes:ts.AnyOf2<String, Array<String>>, callback:MongoCallback<Bool>):Void;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/Collection.html#indexInformation
	**/
	@:overload(function(?options:{ var full : Bool; var session : ClientSession; }):js.lib.Promise<Dynamic> { })
	@:overload(function(options:{ var full : Bool; var session : ClientSession; }, callback:MongoCallback<Dynamic>):Void { })
	function indexInformation(callback:MongoCallback<Dynamic>):Void;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/Collection.html#initializeOrderedBulkOp
	**/
	function initializeOrderedBulkOp(?options:CommonOptions):OrderedBulkOperation;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/Collection.html#initializeUnorderedBulkOp
	**/
	function initializeUnorderedBulkOp(?options:CommonOptions):UnorderedBulkOperation;
	@:overload(function(docs:OptionalId<TSchema>, ?options:CollectionInsertOneOptions):js.lib.Promise<InsertWriteOpResult<WithId<TSchema>>> { })
	@:overload(function(docs:OptionalId<TSchema>, options:CollectionInsertOneOptions, callback:MongoCallback<InsertWriteOpResult<WithId<TSchema>>>):Void { })
	function insert(docs:OptionalId<TSchema>, callback:MongoCallback<InsertWriteOpResult<WithId<TSchema>>>):Void;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/Collection.html#insertMany
	**/
	@:overload(function(docs:Array<OptionalId<TSchema>>, ?options:CollectionInsertManyOptions):js.lib.Promise<InsertWriteOpResult<WithId<TSchema>>> { })
	@:overload(function(docs:Array<OptionalId<TSchema>>, options:CollectionInsertManyOptions, callback:MongoCallback<InsertWriteOpResult<WithId<TSchema>>>):Void { })
	function insertMany(docs:Array<OptionalId<TSchema>>, callback:MongoCallback<InsertWriteOpResult<WithId<TSchema>>>):Void;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/Collection.html#insertOne
	**/
	@:overload(function(docs:OptionalId<TSchema>, ?options:CollectionInsertOneOptions):js.lib.Promise<InsertOneWriteOpResult<WithId<TSchema>>> { })
	@:overload(function(docs:OptionalId<TSchema>, options:CollectionInsertOneOptions, callback:MongoCallback<InsertOneWriteOpResult<WithId<TSchema>>>):Void { })
	function insertOne(docs:OptionalId<TSchema>, callback:MongoCallback<InsertOneWriteOpResult<WithId<TSchema>>>):Void;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/Collection.html#isCapped
	**/
	@:overload(function(callback:MongoCallback<Dynamic>):Void { })
	@:overload(function(options:{ var session : ClientSession; }, callback:MongoCallback<Dynamic>):Void { })
	function isCapped(?options:{ var session : ClientSession; }):js.lib.Promise<Dynamic>;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/Collection.html#listIndexes
	**/
	function listIndexes(?options:{ @:optional var batchSize : Float; @:optional var readPreference : ReadPreferenceOrMode; @:optional var session : ClientSession; }):CommandCursor;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/Collection.html#mapReduce
	**/
	@:overload(function<TKey, TValue>(map:ts.AnyOf2<String, CollectionMapFunction<TSchema>>, reduce:ts.AnyOf2<String, CollectionReduceFunction<TKey, TValue>>, ?options:MapReduceOptions):js.lib.Promise<Dynamic> { })
	@:overload(function<TKey, TValue>(map:ts.AnyOf2<String, CollectionMapFunction<TSchema>>, reduce:ts.AnyOf2<String, CollectionReduceFunction<TKey, TValue>>, options:MapReduceOptions, callback:MongoCallback<Dynamic>):Void { })
	function mapReduce<TKey, TValue>(map:ts.AnyOf2<String, CollectionMapFunction<TSchema>>, reduce:ts.AnyOf2<String, CollectionReduceFunction<TKey, TValue>>, callback:MongoCallback<Dynamic>):Void;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/Collection.html#options
	**/
	@:overload(function(callback:MongoCallback<Dynamic>):Void { })
	@:overload(function(options:{ var session : ClientSession; }, callback:MongoCallback<Dynamic>):Void { })
	function options(?options:{ var session : ClientSession; }):js.lib.Promise<Dynamic>;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/Collection.html#parallelCollectionScan
	**/
	@:overload(function(?options:ParallelCollectionScanOptions):js.lib.Promise<Array<Cursor<Dynamic>>> { })
	@:overload(function(options:ParallelCollectionScanOptions, callback:MongoCallback<Array<Cursor<Dynamic>>>):Void { })
	function parallelCollectionScan(callback:MongoCallback<Array<Cursor<Dynamic>>>):Void;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/Collection.html#reIndex
	**/
	@:overload(function(callback:MongoCallback<Dynamic>):Void { })
	@:overload(function(options:{ var session : ClientSession; }, callback:MongoCallback<Dynamic>):Void { })
	function reIndex(?options:{ var session : ClientSession; }):js.lib.Promise<Dynamic>;
	@:overload(function(selector:Dynamic, ?options:CommonOptions & { @:optional var single : Bool; }):js.lib.Promise<WriteOpResult> { })
	@:overload(function(selector:Dynamic, ?options:CommonOptions & { @:optional var single : Bool; }, ?callback:MongoCallback<WriteOpResult>):Void { })
	function remove(selector:Dynamic, callback:MongoCallback<WriteOpResult>):Void;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/Collection.html#rename
	**/
	@:overload(function(newName:String, ?options:{ @:optional var dropTarget : Bool; @:optional var session : ClientSession; }):js.lib.Promise<Collection<TSchema>> { })
	@:overload(function(newName:String, options:{ @:optional var dropTarget : Bool; @:optional var session : ClientSession; }, callback:MongoCallback<Collection<TSchema>>):Void { })
	function rename(newName:String, callback:MongoCallback<Collection<TSchema>>):Void;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/Collection.html#replaceOne
	**/
	@:overload(function(filter:FilterQuery<TSchema>, doc:TSchema, ?options:ReplaceOneOptions):js.lib.Promise<ReplaceWriteOpResult> { })
	@:overload(function(filter:FilterQuery<TSchema>, doc:TSchema, options:ReplaceOneOptions, callback:MongoCallback<ReplaceWriteOpResult>):Void { })
	function replaceOne(filter:FilterQuery<TSchema>, doc:TSchema, callback:MongoCallback<ReplaceWriteOpResult>):Void;
	@:overload(function(doc:TSchema, ?options:CommonOptions):js.lib.Promise<WriteOpResult> { })
	@:overload(function(doc:TSchema, options:CommonOptions, callback:MongoCallback<WriteOpResult>):Void { })
	function save(doc:TSchema, callback:MongoCallback<WriteOpResult>):Void;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/Collection.html#stats
	**/
	@:overload(function(?options:{ var scale : Float; @:optional var session : ClientSession; }):js.lib.Promise<CollStats> { })
	@:overload(function(options:{ var scale : Float; @:optional var session : ClientSession; }, callback:MongoCallback<CollStats>):Void { })
	function stats(callback:MongoCallback<CollStats>):Void;
	@:overload(function(filter:FilterQuery<TSchema>, update:ts.AnyOf2<UpdateQuery<TSchema>, TSchema>, ?options:UpdateOneOptions & { @:optional var multi : Bool; }):js.lib.Promise<WriteOpResult> { })
	@:overload(function(filter:FilterQuery<TSchema>, update:ts.AnyOf2<UpdateQuery<TSchema>, TSchema>, options:UpdateOneOptions & { @:optional var multi : Bool; }, callback:MongoCallback<WriteOpResult>):Void { })
	function update(filter:FilterQuery<TSchema>, update:ts.AnyOf2<UpdateQuery<TSchema>, TSchema>, callback:MongoCallback<WriteOpResult>):Void;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/Collection.html#updateMany
	**/
	@:overload(function(filter:FilterQuery<TSchema>, update:ts.AnyOf2<UpdateQuery<TSchema>, TSchema>, ?options:UpdateManyOptions):js.lib.Promise<UpdateWriteOpResult> { })
	@:overload(function(filter:FilterQuery<TSchema>, update:ts.AnyOf2<UpdateQuery<TSchema>, TSchema>, options:UpdateManyOptions, callback:MongoCallback<UpdateWriteOpResult>):Void { })
	function updateMany(filter:FilterQuery<TSchema>, update:ts.AnyOf2<UpdateQuery<TSchema>, TSchema>, callback:MongoCallback<UpdateWriteOpResult>):Void;
	/**
		http://mongodb.github.io/node-mongodb-native/3.1/api/Collection.html#updateOne
	**/
	@:overload(function(filter:FilterQuery<TSchema>, update:ts.AnyOf2<UpdateQuery<TSchema>, TSchema>, ?options:UpdateOneOptions):js.lib.Promise<UpdateWriteOpResult> { })
	@:overload(function(filter:FilterQuery<TSchema>, update:ts.AnyOf2<UpdateQuery<TSchema>, TSchema>, options:UpdateOneOptions, callback:MongoCallback<UpdateWriteOpResult>):Void { })
	function updateOne(filter:FilterQuery<TSchema>, update:ts.AnyOf2<UpdateQuery<TSchema>, TSchema>, callback:MongoCallback<UpdateWriteOpResult>):Void;
	@:overload(function<T>(?options:ChangeStreamOptions & { @:optional var session : ClientSession; }):ChangeStream<T> { })
	function watch<T>(?pipeline:Array<Dynamic>, ?options:ChangeStreamOptions & { @:optional var session : ClientSession; }):ChangeStream<T>;
};