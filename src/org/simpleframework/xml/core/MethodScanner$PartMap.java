package org.simpleframework.xml.core;

import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Set;

class MethodScanner$PartMap
  extends LinkedHashMap<String, MethodPart>
  implements Iterable<String>
{
  private MethodScanner$PartMap(MethodScanner paramMethodScanner) {}
  
  public Iterator<String> iterator()
  {
    return keySet().iterator();
  }
  
  public MethodPart take(String paramString)
  {
    return (MethodPart)remove(paramString);
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.MethodScanner.PartMap
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */