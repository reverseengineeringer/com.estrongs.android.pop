package org.simpleframework.xml.stream;

abstract interface Attribute
{
  public abstract String getName();
  
  public abstract String getPrefix();
  
  public abstract String getReference();
  
  public abstract Object getSource();
  
  public abstract String getValue();
  
  public abstract boolean isReserved();
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.stream.Attribute
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */