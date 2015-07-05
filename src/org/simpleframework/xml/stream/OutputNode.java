package org.simpleframework.xml.stream;

public abstract interface OutputNode
  extends Node
{
  public abstract void commit();
  
  public abstract NodeMap<OutputNode> getAttributes();
  
  public abstract OutputNode getChild(String paramString);
  
  public abstract String getComment();
  
  public abstract Mode getMode();
  
  public abstract NamespaceMap getNamespaces();
  
  public abstract OutputNode getParent();
  
  public abstract String getPrefix();
  
  public abstract String getPrefix(boolean paramBoolean);
  
  public abstract String getReference();
  
  public abstract boolean isCommitted();
  
  public abstract boolean isRoot();
  
  public abstract void remove();
  
  public abstract OutputNode setAttribute(String paramString1, String paramString2);
  
  public abstract void setComment(String paramString);
  
  public abstract void setData(boolean paramBoolean);
  
  public abstract void setMode(Mode paramMode);
  
  public abstract void setName(String paramString);
  
  public abstract void setReference(String paramString);
  
  public abstract void setValue(String paramString);
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.stream.OutputNode
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */