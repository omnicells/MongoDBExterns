package mongodb;

typedef WiredTigerData = {
	var LSM : {
		@:native("bloom filter false positives")
		var bloom_Filter_False_Positives : Float;
		@:native("bloom filter hits")
		var bloom_Filter_Hits : Float;
		@:native("bloom filter misses")
		var bloom_Filter_Misses : Float;
		@:native("bloom filter pages evicted from cache")
		var bloom_Filter_Pages_Evicted_From_Cache : Float;
		@:native("bloom filter pages read into cache")
		var bloom_Filter_Pages_Read_Into_Cache : Float;
		@:native("bloom filters in the LSM tree")
		var bloom_Filters_In_The_LSM_Tree : Float;
		@:native("chunks in the LSM tree")
		var chunks_In_The_LSM_Tree : Float;
		@:native("highest merge generation in the LSM tree")
		var highest_Merge_Generation_In_The_LSM_Tree : Float;
		@:native("queries that could have benefited from a Bloom filter that did not exist")
		var queries_That_Could_Have_Benefited_From_A_Bloom_Filter_That_Did_Not_Exist : Float;
		@:native("sleep for LSM checkpoint throttle")
		var sleep_For_LSM_Checkpoint_Throttle : Float;
		@:native("sleep for LSM merge throttle")
		var sleep_For_LSM_Merge_Throttle : Float;
		@:native("total size of bloom filters")
		var total_Size_Of_Bloom_Filters : Float;
	};
	@:native("block-manager")
	var block_manager : {
		@:native("allocations requiring file extension")
		var allocations_Requiring_File_Extension : Float;
		@:native("blocks allocated")
		var blocks_Allocated : Float;
		@:native("blocks freed")
		var blocks_Freed : Float;
		@:native("checkpoint size")
		var checkpoint_Size : Float;
		@:native("file allocation unit size")
		var file_Allocation_Unit_Size : Float;
		@:native("file bytes available for reuse")
		var file_Bytes_Available_For_Reuse : Float;
		@:native("file magic number")
		var file_Magic_Number : Float;
		@:native("file major version number")
		var file_Major_Version_Number : Float;
		@:native("file size in bytes")
		var file_Size_In_Bytes : Float;
		@:native("minor version number")
		var minor_Version_Number : Float;
	};
	var btree : {
		@:native("btree checkpoint generation")
		var btree_Checkpoint_Generation : Float;
		@:native("column-store fixed-size leaf pages")
		var column_store_Fixed_size_Leaf_Pages : Float;
		@:native("column-store internal pages")
		var column_store_Internal_Pages : Float;
		@:native("column-store variable-size RLE encoded values")
		var column_store_Variable_size_RLE_Encoded_Values : Float;
		@:native("column-store variable-size deleted values")
		var column_store_Variable_size_Deleted_Values : Float;
		@:native("column-store variable-size leaf pages")
		var column_store_Variable_size_Leaf_Pages : Float;
		@:native("fixed-record size")
		var fixed_record_Size : Float;
		@:native("maximum internal page key size")
		var maximum_Internal_Page_Key_Size : Float;
		@:native("maximum internal page size")
		var maximum_Internal_Page_Size : Float;
		@:native("maximum leaf page key size")
		var maximum_Leaf_Page_Key_Size : Float;
		@:native("maximum leaf page size")
		var maximum_Leaf_Page_Size : Float;
		@:native("maximum leaf page value size")
		var maximum_Leaf_Page_Value_Size : Float;
		@:native("maximum tree depth")
		var maximum_Tree_Depth : Float;
		@:native("number of key/value pairs")
		var number_Of_Key_value_Pairs : Float;
		@:native("overflow pages")
		var overflow_Pages : Float;
		@:native("pages rewritten by compaction")
		var pages_Rewritten_By_Compaction : Float;
		@:native("row-store internal pages")
		var row_store_Internal_Pages : Float;
		@:native("row-store leaf pages")
		var row_store_Leaf_Pages : Float;
	};
	var cache : {
		@:native("bytes currently in the cache")
		var bytes_Currently_In_The_Cache : Float;
		@:native("bytes read into cache")
		var bytes_Read_Into_Cache : Float;
		@:native("bytes written from cache")
		var bytes_Written_From_Cache : Float;
		@:native("checkpoint blocked page eviction")
		var checkpoint_Blocked_Page_Eviction : Float;
		@:native("data source pages selected for eviction unable to be evicted")
		var data_Source_Pages_Selected_For_Eviction_Unable_To_Be_Evicted : Float;
		@:native("hazard pointer blocked page eviction")
		var hazard_Pointer_Blocked_Page_Eviction : Float;
		@:native("in-memory page passed criteria to be split")
		var in_memory_Page_Passed_Criteria_To_Be_Split : Float;
		@:native("in-memory page splits")
		var in_memory_Page_Splits : Float;
		@:native("internal pages evicted")
		var internal_Pages_Evicted : Float;
		@:native("internal pages split during eviction")
		var internal_Pages_Split_During_Eviction : Float;
		@:native("leaf pages split during eviction")
		var leaf_Pages_Split_During_Eviction : Float;
		@:native("modified pages evicted")
		var modified_Pages_Evicted : Float;
		@:native("overflow pages read into cache")
		var overflow_Pages_Read_Into_Cache : Float;
		@:native("overflow values cached in memory")
		var overflow_Values_Cached_In_Memory : Float;
		@:native("page split during eviction deepened the tree")
		var page_Split_During_Eviction_Deepened_The_Tree : Float;
		@:native("page written requiring lookaside records")
		var page_Written_Requiring_Lookaside_Records : Float;
		@:native("pages read into cache")
		var pages_Read_Into_Cache : Float;
		@:native("pages read into cache requiring lookaside entries")
		var pages_Read_Into_Cache_Requiring_Lookaside_Entries : Float;
		@:native("pages requested from the cache")
		var pages_Requested_From_The_Cache : Float;
		@:native("pages written from cache")
		var pages_Written_From_Cache : Float;
		@:native("pages written requiring in-memory restoration")
		var pages_Written_Requiring_In_memory_Restoration : Float;
		@:native("tracked dirty bytes in the cache")
		var tracked_Dirty_Bytes_In_The_Cache : Float;
		@:native("unmodified pages evicted")
		var unmodified_Pages_Evicted : Float;
	};
	var cache_walk : {
		@:native("Average difference between current eviction generation when the page was last considered")
		var Average_Difference_Between_Current_Eviction_Generation_When_The_Page_Was_Last_Considered : Float;
		@:native("Average on-disk page image size seen")
		var Average_On_disk_Page_Image_Size_Seen : Float;
		@:native("Clean pages currently in cache")
		var Clean_Pages_Currently_In_Cache : Float;
		@:native("Current eviction generation")
		var Current_Eviction_Generation : Float;
		@:native("Dirty pages currently in cache")
		var Dirty_Pages_Currently_In_Cache : Float;
		@:native("Entries in the root page")
		var Entries_In_The_Root_Page : Float;
		@:native("Internal pages currently in cache")
		var Internal_Pages_Currently_In_Cache : Float;
		@:native("Leaf pages currently in cache")
		var Leaf_Pages_Currently_In_Cache : Float;
		@:native("Maximum difference between current eviction generation when the page was last considered")
		var Maximum_Difference_Between_Current_Eviction_Generation_When_The_Page_Was_Last_Considered : Float;
		@:native("Maximum page size seen")
		var Maximum_Page_Size_Seen : Float;
		@:native("Minimum on-disk page image size seen")
		var Minimum_On_disk_Page_Image_Size_Seen : Float;
		@:native("On-disk page image sizes smaller than a single allocation unit")
		var On_disk_Page_Image_Sizes_Smaller_Than_A_Single_Allocation_Unit : Float;
		@:native("Pages created in memory and never written")
		var Pages_Created_In_Memory_And_Never_Written : Float;
		@:native("Pages currently queued for eviction")
		var Pages_Currently_Queued_For_Eviction : Float;
		@:native("Pages that could not be queued for eviction")
		var Pages_That_Could_Not_Be_Queued_For_Eviction : Float;
		@:native("Refs skipped during cache traversal")
		var Refs_Skipped_During_Cache_Traversal : Float;
		@:native("Size of the root page")
		var Size_Of_The_Root_Page : Float;
		@:native("Total number of pages currently in cache")
		var Total_Number_Of_Pages_Currently_In_Cache : Float;
	};
	var compression : {
		@:native("compressed pages read")
		var compressed_Pages_Read : Float;
		@:native("compressed pages written")
		var compressed_Pages_Written : Float;
		@:native("page written failed to compress")
		var page_Written_Failed_To_Compress : Float;
		@:native("page written was too small to compress")
		var page_Written_Was_Too_Small_To_Compress : Float;
		@:native("raw compression call failed, additional data available")
		var raw_Compression_Call_FailedComma_Additional_Data_Available : Float;
		@:native("raw compression call failed, no additional data available")
		var raw_Compression_Call_FailedComma_No_Additional_Data_Available : Float;
		@:native("raw compression call succeeded")
		var raw_Compression_Call_Succeeded : Float;
	};
	var cursor : {
		@:native("bulk-loaded cursor-insert calls")
		var bulk_loaded_Cursor_insert_Calls : Float;
		@:native("create calls")
		var create_Calls : Float;
		@:native("cursor-insert key and value bytes inserted")
		var cursor_insert_Key_And_Value_Bytes_Inserted : Float;
		@:native("cursor-remove key bytes removed")
		var cursor_remove_Key_Bytes_Removed : Float;
		@:native("cursor-update value bytes updated")
		var cursor_update_Value_Bytes_Updated : Float;
		@:native("insert calls")
		var insert_Calls : Float;
		@:native("next calls")
		var next_Calls : Float;
		@:native("prev calls")
		var prev_Calls : Float;
		@:native("remove calls")
		var remove_Calls : Float;
		@:native("reset calls")
		var reset_Calls : Float;
		@:native("restarted searches")
		var restarted_Searches : Float;
		@:native("search calls")
		var search_Calls : Float;
		@:native("search near calls")
		var search_Near_Calls : Float;
		@:native("truncate calls")
		var truncate_Calls : Float;
		@:native("update calls")
		var update_Calls : Float;
	};
	var reconciliation : {
		@:native("dictionary matches")
		var dictionary_Matches : Float;
		@:native("fast-path pages deleted")
		var fast_path_Pages_Deleted : Float;
		@:native("internal page key bytes discarded using suffix compression")
		var internal_Page_Key_Bytes_Discarded_Using_Suffix_Compression : Float;
		@:native("internal page multi-block writes")
		var internal_Page_Multi_block_Writes : Float;
		@:native("internal-page overflow keys")
		var internal_page_Overflow_Keys : Float;
		@:native("leaf page key bytes discarded using prefix compression")
		var leaf_Page_Key_Bytes_Discarded_Using_Prefix_Compression : Float;
		@:native("leaf page multi-block writes")
		var leaf_Page_Multi_block_Writes : Float;
		@:native("leaf-page overflow keys")
		var leaf_page_Overflow_Keys : Float;
		@:native("maximum blocks required for a page")
		var maximum_Blocks_Required_For_A_Page : Float;
		@:native("overflow values written")
		var overflow_Values_Written : Float;
		@:native("page checksum matches")
		var page_Checksum_Matches : Float;
		@:native("page reconciliation calls")
		var page_Reconciliation_Calls : Float;
		@:native("page reconciliation calls for eviction")
		var page_Reconciliation_Calls_For_Eviction : Float;
		@:native("pages deleted")
		var pages_Deleted : Float;
	};
};