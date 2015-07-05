package org.simpleframework.xml.stream;

class OutputAttribute
  implements OutputNode
{
  private String name;
  private String reference;
  private NamespaceMap scope;
  private OutputNode source;
  private String value;
  
  public OutputAttribute(OutputNode paramOutputNode, String paramString1, String paramString2)
  {
    scope = paramOutputNode.getNamespaces();
    source = paramOutputNode;
    value = paramString2;
    name = paramString1;
  }
  
  public void commit() {}
  
  public NodeMap<OutputNode> getAttributes()
  {
    return new OutputNodeMap(this);
  }
  
  public OutputNode getChild(String paramString)
  {
    return null;
  }
  
  public String getComment()
  {
    return null;
  }
  
  public Mode getMode()
  {
    return Mode.INHERIT;
  }
  
  public String getName()
  {
    return name;
  }
  
  public NamespaceMap getNamespaces()
  {
    return scope;
  }
  
  public OutputNode getParent()
  {
    return source;
  }
  
  public String getPrefix()
  {
    return scope.getPrefix(reference);
  }
  
  public String getPrefix(boolean paramBoolean)
  {
    return scope.getPrefix(reference);
  }
  
  public String getReference()
  {
    return reference;
  }
  
  public String getValue()
  {
    return value;
  }
  
  public boolean isCommitted()
  {
    return true;
  }
  
  public boolean isRoot()
  {
    return false;
  }
  
  public void remove() {}
  
  public OutputNode setAttribute(String paramString1, String paramString2)
  {
    return null;
  }
  
  public void setComment(String paramString) {}
  
  public void setData(boolean paramBoolean) {}
  
  public void setMode(Mode paramMode) {}
  
  public void setName(String paramString)
  {
    name = paramString;
  }
  
  public void setReference(String paramString)
  {
    reference = paramString;
  }
  
  public void setValue(String paramString)
  {
    value = paramString;
  }
  
  public String toString()
  {
    return String.format("attribute %s='%s'", new Object[] { name, value });
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.stream.OutputAttribute
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */