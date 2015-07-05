package org.simpleframework.xml.core;

abstract interface Expression
  extends Iterable<String>
{
  public abstract String getAttribute(String paramString);
  
  public abstract String getElement(String paramString);
  
  public abstract String getFirst();
  
  public abstract int getIndex();
  
  public abstract String getLast();
  
  public abstract String getPath();
  
  public abstract Expression getPath(int paramInt);
  
  public abstract Expression getPath(int paramInt1, int paramInt2);
  
  public abstract String getPrefix();
  
  public abstract boolean isAttribute();
  
  public abstract boolean isEmpty();
  
  public abstract boolean isPath();
  
  public abstract String toString();
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.Expression
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */