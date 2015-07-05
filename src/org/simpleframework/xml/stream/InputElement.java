package org.simpleframework.xml.stream;

class InputElement
  implements InputNode
{
  private final InputNodeMap map;
  private final EventNode node;
  private final InputNode parent;
  private final NodeReader reader;
  
  public InputElement(InputNode paramInputNode, NodeReader paramNodeReader, EventNode paramEventNode)
  {
    map = new InputNodeMap(this, paramEventNode);
    reader = paramNodeReader;
    parent = paramInputNode;
    node = paramEventNode;
  }
  
  public InputNode getAttribute(String paramString)
  {
    return map.get(paramString);
  }
  
  public NodeMap<InputNode> getAttributes()
  {
    return map;
  }
  
  public String getName()
  {
    return node.getName();
  }
  
  public InputNode getNext()
  {
    return reader.readElement(this);
  }
  
  public InputNode getNext(String paramString)
  {
    return reader.readElement(this, paramString);
  }
  
  public InputNode getParent()
  {
    return parent;
  }
  
  public Position getPosition()
  {
    return new InputPosition(node);
  }
  
  public String getPrefix()
  {
    return node.getPrefix();
  }
  
  public String getReference()
  {
    return node.getReference();
  }
  
  public Object getSource()
  {
    return node.getSource();
  }
  
  public String getValue()
  {
    return reader.readValue(this);
  }
  
  public boolean isElement()
  {
    return true;
  }
  
  public boolean isEmpty()
  {
    if (!map.isEmpty()) {
      return false;
    }
    return reader.isEmpty(this);
  }
  
  public boolean isRoot()
  {
    return reader.isRoot(this);
  }
  
  public void skip()
  {
    reader.skipElement(this);
  }
  
  public String toString()
  {
    return String.format("element %s", new Object[] { getName() });
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.stream.InputElement
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */