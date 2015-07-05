package org.simpleframework.xml.stream;

import org.w3c.dom.Node;

class DocumentReader$Text
  extends EventToken
{
  private final Node node;
  
  public DocumentReader$Text(Node paramNode)
  {
    node = paramNode;
  }
  
  public Object getSource()
  {
    return node;
  }
  
  public String getValue()
  {
    return node.getNodeValue();
  }
  
  public boolean isText()
  {
    return true;
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.stream.DocumentReader.Text
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */