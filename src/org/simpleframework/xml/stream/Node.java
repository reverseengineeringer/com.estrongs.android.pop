package org.simpleframework.xml.stream;

public abstract interface Node
{
  public abstract String getName();
  
  public abstract Node getParent();
  
  public abstract String getValue();
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.stream.Node
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */