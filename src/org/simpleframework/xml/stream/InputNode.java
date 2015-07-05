package org.simpleframework.xml.stream;

public abstract interface InputNode
  extends Node
{
  public abstract InputNode getAttribute(String paramString);
  
  public abstract NodeMap<InputNode> getAttributes();
  
  public abstract InputNode getNext();
  
  public abstract InputNode getNext(String paramString);
  
  public abstract InputNode getParent();
  
  public abstract Position getPosition();
  
  public abstract String getPrefix();
  
  public abstract String getReference();
  
  public abstract Object getSource();
  
  public abstract boolean isElement();
  
  public abstract boolean isEmpty();
  
  public abstract boolean isRoot();
  
  public abstract void skip();
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.stream.InputNode
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */