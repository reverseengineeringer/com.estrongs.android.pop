package org.simpleframework.xml.stream;

import org.w3c.dom.Node;

class DocumentReader$Entry
  extends EventAttribute
{
  private final Node node;
  
  public DocumentReader$Entry(Node paramNode)
  {
    node = paramNode;
  }
  
  public String getName()
  {
    return node.getLocalName();
  }
  
  public String getPrefix()
  {
    return node.getPrefix();
  }
  
  public String getReference()
  {
    return node.getNamespaceURI();
  }
  
  public Object getSource()
  {
    return node;
  }
  
  public String getValue()
  {
    return node.getNodeValue();
  }
  
  public boolean isReserved()
  {
    String str1 = getPrefix();
    String str2 = getName();
    if (str1 != null) {
      return str1.startsWith("xml");
    }
    return str2.startsWith("xml");
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.stream.DocumentReader.Entry
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */