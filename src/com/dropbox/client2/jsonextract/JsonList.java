package com.dropbox.client2.jsonextract;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class JsonList
  extends JsonBase<List<Object>>
  implements Iterable<JsonThing>
{
  public JsonList(List<Object> paramList)
  {
    super(paramList);
  }
  
  public JsonList(List<Object> paramList, String paramString)
  {
    super(paramList, paramString);
  }
  
  private static String pathConcatIndex(String paramString, int paramInt)
  {
    return JsonThing.pathConcat(paramString, Integer.toString(paramInt));
  }
  
  public void expectLength(int paramInt)
  {
    if (((List)internal).size() != paramInt) {
      throw error("expecting array to have length " + paramInt + ", but it has length " + ((List)internal).size());
    }
  }
  
  public <T> ArrayList<T> extract(JsonExtractor<T> paramJsonExtractor)
  {
    ArrayList localArrayList = new ArrayList(length());
    Iterator localIterator = ((List)internal).iterator();
    for (;;)
    {
      if (!localIterator.hasNext()) {
        return localArrayList;
      }
      localArrayList.add(paramJsonExtractor.extract(new JsonThing(localIterator.next())));
    }
  }
  
  public JsonThing get(int paramInt)
  {
    if (paramInt >= ((List)internal).size()) {
      throw error("expecting array to have an element at index " + paramInt + ", but it only has length " + ((List)internal).size());
    }
    return new JsonThing(((List)internal).get(paramInt), pathConcatIndex(path, paramInt));
  }
  
  public Iterator<JsonThing> iterator()
  {
    return new JsonList.WrapperIterator(path, ((List)internal).iterator(), null);
  }
  
  public int length()
  {
    return ((List)internal).size();
  }
}

/* Location:
 * Qualified Name:     com.dropbox.client2.jsonextract.JsonList
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */