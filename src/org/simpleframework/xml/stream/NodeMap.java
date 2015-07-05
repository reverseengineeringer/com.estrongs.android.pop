package org.simpleframework.xml.stream;

import java.util.Iterator;

public abstract interface NodeMap<T extends Node>
  extends Iterable<String>
{
  public abstract T get(String paramString);
  
  public abstract String getName();
  
  public abstract T getNode();
  
  public abstract Iterator<String> iterator();
  
  public abstract T put(String paramString1, String paramString2);
  
  public abstract T remove(String paramString);
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.stream.NodeMap
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */