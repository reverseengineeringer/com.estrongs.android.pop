package org.simpleframework.xml.stream;

class OutputElement
  implements OutputNode
{
  private String comment;
  private Mode mode;
  private String name;
  private OutputNode parent;
  private String reference;
  private NamespaceMap scope;
  private OutputNodeMap table;
  private String value;
  private NodeWriter writer;
  
  public OutputElement(OutputNode paramOutputNode, NodeWriter paramNodeWriter, String paramString)
  {
    scope = new PrefixResolver(paramOutputNode);
    table = new OutputNodeMap(this);
    mode = Mode.INHERIT;
    writer = paramNodeWriter;
    parent = paramOutputNode;
    name = paramString;
  }
  
  public void commit()
  {
    writer.commit(this);
  }
  
  public OutputNodeMap getAttributes()
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
    return name;
  }
  
  public NamespaceMap getNamespaces()
  {
    return scope;
  }
  
  public OutputNode getParent()
  {
    return parent;
  }
  
  public String getPrefix()
  {
    return getPrefix(true);
  }
  
  public String getPrefix(boolean paramBoolean)
  {
    String str2 = scope.getPrefix(reference);
    String str1 = str2;
    if (paramBoolean)
    {
      str1 = str2;
      if (str2 == null) {
        str1 = parent.getPrefix();
      }
    }
    return str1;
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
    return writer.isCommitted(this);
  }
  
  public boolean isRoot()
  {
    return writer.isRoot(this);
  }
  
  public void remove()
  {
    writer.remove(this);
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
  
  public String toString()
  {
    return String.format("element %s", new Object[] { name });
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.stream.OutputElement
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */