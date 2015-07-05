package org.simpleframework.xml.stream;

import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Set;

class InputNodeMap
  extends LinkedHashMap<String, InputNode>
  implements NodeMap<InputNode>
{
  private final InputNode source;
  
  protected InputNodeMap(InputNode paramInputNode)
  {
    source = paramInputNode;
  }
  
  public InputNodeMap(InputNode paramInputNode, EventNode paramEventNode)
  {
    source = paramInputNode;
    build(paramEventNode);
  }
  
  private void build(EventNode paramEventNode)
  {
    paramEventNode = paramEventNode.iterator();
    for (;;)
    {
      if (!paramEventNode.hasNext()) {
        return;
      }
      Attribute localAttribute = (Attribute)paramEventNode.next();
      InputAttribute localInputAttribute = new InputAttribute(source, localAttribute);
      if (!localAttribute.isReserved()) {
        put(localInputAttribute.getName(), localInputAttribute);
      }
    }
  }
  
  public InputNode get(String paramString)
  {
    return (InputNode)super.get(paramString);
  }
  
  public String getName()
  {
    return source.getName();
  }
  
  public InputNode getNode()
  {
    return source;
  }
  
  public Iterator<String> iterator()
  {
    return keySet().iterator();
  }
  
  public InputNode put(String paramString1, String paramString2)
  {
    paramString2 = new InputAttribute(source, paramString1, paramString2);
    if (paramString1 != null) {
      put(paramString1, paramString2);
    }
    return paramString2;
  }
  
  public InputNode remove(String paramString)
  {
    return (InputNode)super.remove(paramString);
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.stream.InputNodeMap
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */