package org.simpleframework.xml.stream;

import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Set;

class OutputNodeMap
  extends LinkedHashMap<String, OutputNode>
  implements NodeMap<OutputNode>
{
  private final OutputNode source;
  
  public OutputNodeMap(OutputNode paramOutputNode)
  {
    source = paramOutputNode;
  }
  
  public OutputNode get(String paramString)
  {
    return (OutputNode)super.get(paramString);
  }
  
  public String getName()
  {
    return source.getName();
  }
  
  public OutputNode getNode()
  {
    return source;
  }
  
  public Iterator<String> iterator()
  {
    return keySet().iterator();
  }
  
  public OutputNode put(String paramString1, String paramString2)
  {
    paramString2 = new OutputAttribute(source, paramString1, paramString2);
    if (source != null) {
      put(paramString1, paramString2);
    }
    return paramString2;
  }
  
  public OutputNode remove(String paramString)
  {
    return (OutputNode)super.remove(paramString);
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.stream.OutputNodeMap
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */