package org.simpleframework.xml.stream;

class InputAttribute
  implements InputNode
{
  private String name;
  private InputNode parent;
  private String prefix;
  private String reference;
  private Object source;
  private String value;
  
  public InputAttribute(InputNode paramInputNode, String paramString1, String paramString2)
  {
    parent = paramInputNode;
    value = paramString2;
    name = paramString1;
  }
  
  public InputAttribute(InputNode paramInputNode, Attribute paramAttribute)
  {
    reference = paramAttribute.getReference();
    prefix = paramAttribute.getPrefix();
    source = paramAttribute.getSource();
    value = paramAttribute.getValue();
    name = paramAttribute.getName();
    parent = paramInputNode;
  }
  
  public InputNode getAttribute(String paramString)
  {
    return null;
  }
  
  public NodeMap<InputNode> getAttributes()
  {
    return new InputNodeMap(this);
  }
  
  public String getName()
  {
    return name;
  }
  
  public InputNode getNext()
  {
    return null;
  }
  
  public InputNode getNext(String paramString)
  {
    return null;
  }
  
  public InputNode getParent()
  {
    return parent;
  }
  
  public Position getPosition()
  {
    return parent.getPosition();
  }
  
  public String getPrefix()
  {
    return prefix;
  }
  
  public String getReference()
  {
    return reference;
  }
  
  public Object getSource()
  {
    return source;
  }
  
  public String getValue()
  {
    return value;
  }
  
  public boolean isElement()
  {
    return false;
  }
  
  public boolean isEmpty()
  {
    return false;
  }
  
  public boolean isRoot()
  {
    return false;
  }
  
  public void skip() {}
  
  public String toString()
  {
    return String.format("attribute %s='%s'", new Object[] { name, value });
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.stream.InputAttribute
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */