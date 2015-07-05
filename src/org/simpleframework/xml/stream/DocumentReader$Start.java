package org.simpleframework.xml.stream;

import org.w3c.dom.Element;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;

class DocumentReader$Start
  extends EventElement
{
  private final Element element;
  
  public DocumentReader$Start(Node paramNode)
  {
    element = ((Element)paramNode);
  }
  
  public NamedNodeMap getAttributes()
  {
    return element.getAttributes();
  }
  
  public String getName()
  {
    return element.getLocalName();
  }
  
  public String getPrefix()
  {
    return element.getPrefix();
  }
  
  public String getReference()
  {
    return element.getNamespaceURI();
  }
  
  public Object getSource()
  {
    return element;
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.stream.DocumentReader.Start
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */