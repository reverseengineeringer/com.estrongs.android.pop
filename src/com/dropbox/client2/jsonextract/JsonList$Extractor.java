package com.dropbox.client2.jsonextract;

import java.util.List;

public final class JsonList$Extractor<T>
  extends JsonExtractor<List<T>>
{
  public final JsonExtractor<T> elementExtractor;
  
  public JsonList$Extractor(JsonExtractor<T> paramJsonExtractor)
  {
    elementExtractor = paramJsonExtractor;
  }
  
  public List<T> extract(JsonThing paramJsonThing)
  {
    return paramJsonThing.expectList().extract(elementExtractor);
  }
}

/* Location:
 * Qualified Name:     com.dropbox.client2.jsonextract.JsonList.Extractor
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */