package org.json.simple.parser;

public abstract interface ContentHandler
{
  public abstract boolean endArray();
  
  public abstract void endJSON();
  
  public abstract boolean endObject();
  
  public abstract boolean endObjectEntry();
  
  public abstract boolean primitive(Object paramObject);
  
  public abstract boolean startArray();
  
  public abstract void startJSON();
  
  public abstract boolean startObject();
  
  public abstract boolean startObjectEntry(String paramString);
}

/* Location:
 * Qualified Name:     org.json.simple.parser.ContentHandler
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */