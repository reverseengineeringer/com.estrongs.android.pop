package org.simpleframework.xml.stream;

class OutputDocument
  implements OutputNode
{
  private String comment;
  private Mode mode = Mode.INHERIT;
  private String name;
  private String reference;
  private OutputStack stack;
  private OutputNodeMap table = new OutputNodeMap(this);
  private String value;
  private NodeWriter writer;
  
  public OutputDocument(NodeWriter paramNodeWriter, OutputStack paramOutputStack)
  {
    writer = paramNodeWriter;
    stack = paramOutputStack;
  }
  
  public void commit()
  {
    if (stack.isEmpty()) {
      throw new NodeException("No root node");
    }
    stack.bottom().commit();
  }
  
  public NodeMap<OutputNode> getAttributes()
  {
    return table;
  }
  
  public OutputNode getChild(String paramString)
  {
    return writer.writeElement(this, paramString);
  }
  
  public String getComment()
  {
    return comment;
  }
  
  public Mode getMode()
  {
    return mode;
  }
  
  public String getName()
  {
    return null;
  }
  
  public NamespaceMap getNamespaces()
  {
    return null;
  }
  
  public OutputNode getParent()
  {
    return null;
  }
  
  public String getPrefix()
  {
    return null;
  }
  
  public String getPrefix(boolean paramBoolean)
  {
    return null;
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
    return stack.isEmpty();
  }
  
  public boolean isRoot()
  {
    return true;
  }
  
  public void remove()
  {
    if (stack.isEmpty()) {
      throw new NodeException("No root node");
    }
    stack.bottom().remove();
  }
  
  public OutputNode setAttribute(String paramString1, String paramString2)
  {
    return table.put(paramString1, paramString2);
  }
  
  public void setComment(String paramString)
  {
    comment = paramString;
  }
  
  public void setData(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      mode = Mode.DATA;
      return;
    }
    mode = Mode.ESCAPE;
  }
  
  public void setMode(Mode paramMode)
  {
    mode = paramMode;
  }
  
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
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.stream.OutputDocument
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */