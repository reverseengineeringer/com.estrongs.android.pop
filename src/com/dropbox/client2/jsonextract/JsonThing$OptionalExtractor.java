package com.dropbox.client2.jsonextract;

public final class JsonThing$OptionalExtractor<T>
  extends JsonExtractor<T>
{
  public final JsonExtractor<T> elementExtractor;
  
  public JsonThing$OptionalExtractor(JsonExtractor<T> paramJsonExtractor)
  {
    elementExtractor = paramJsonExtractor;
  }
  
  public T extract(JsonThing paramJsonThing)
  {
    return (T)paramJsonThing.optionalExtract(elementExtractor);
  }
}

/* Location:
 * Qualified Name:     com.dropbox.client2.jsonextract.JsonThing.OptionalExtractor
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */