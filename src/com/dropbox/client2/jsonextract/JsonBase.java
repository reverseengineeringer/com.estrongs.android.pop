package com.dropbox.client2.jsonextract;

abstract class JsonBase<T>
{
  public final T internal;
  public final String path;
  
  public JsonBase(T paramT)
  {
    this(paramT, null);
  }
  
  public JsonBase(T paramT, String paramString)
  {
    internal = paramT;
    path = paramString;
  }
  
  public JsonExtractionException error(String paramString)
  {
    return new JsonExtractionException(path, paramString, internal);
  }
}

/* Location:
 * Qualified Name:     com.dropbox.client2.jsonextract.JsonBase
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */