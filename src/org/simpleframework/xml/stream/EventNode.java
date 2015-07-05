package org.simpleframework.xml.stream;

abstract interface EventNode
  extends Iterable<Attribute>
{
  public abstract int getLine();
  
  public abstract String getName();
  
  public abstract String getPrefix();
  
  public abstract String getReference();
  
  public abstract Object getSource();
  
  public abstract String getValue();
  
  public abstract boolean isEnd();
  
  public abstract boolean isStart();
  
  public abstract boolean isText();
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.stream.EventNode
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */