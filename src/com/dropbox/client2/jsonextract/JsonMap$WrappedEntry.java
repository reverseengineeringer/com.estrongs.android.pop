package com.dropbox.client2.jsonextract;

import java.util.Map.Entry;

final class JsonMap$WrappedEntry
  implements Map.Entry<String, JsonThing>
{
  private final String key;
  private final JsonThing value;
  
  private JsonMap$WrappedEntry(String paramString, Map.Entry<String, Object> paramEntry)
  {
    key = ((String)paramEntry.getKey());
    value = new JsonThing(paramEntry.getValue(), JsonMap.access$1(paramString, key));
  }
  
  public String getKey()
  {
    return key;
  }
  
  public JsonThing getValue()
  {
    return value;
  }
  
  public JsonThing setValue(JsonThing paramJsonThing)
  {
    throw new UnsupportedOperationException();
  }
}

/* Location:
 * Qualified Name:     com.dropbox.client2.jsonextract.JsonMap.WrappedEntry
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */