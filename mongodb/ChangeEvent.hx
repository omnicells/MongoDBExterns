package mongodb;

typedef ChangeEvent<TSchema> = ts.AnyOf6<ChangeEventCR<TSchema>, ChangeEventUpdate<TSchema>, ChangeEventDelete<TSchema>, ChangeEventRename<TSchema>, ChangeEventOther<TSchema>, ChangeEventInvalidate<TSchema>>;