package org.simpleframework.xml.stream;

import java.util.Iterator;

public abstract interface NamespaceMap
  extends Iterable<String>
{
  public abstract String getPrefix();
  
  public abstract String getPrefix(String paramString);
  
  public abstract String getReference(String paramString);
  
  public abstract Iterator<String> iterator();
  
  public abstract String setReference(String paramString);
  
  public abstract String setReference(String paramString1, String paramString2);
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.stream.NamespaceMap
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */