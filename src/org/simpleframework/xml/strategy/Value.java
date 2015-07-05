package org.simpleframework.xml.strategy;

public abstract interface Value
{
  public abstract int getLength();
  
  public abstract Class getType();
  
  public abstract Object getValue();
  
  public abstract boolean isReference();
  
  public abstract void setValue(Object paramObject);
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.strategy.Value
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */