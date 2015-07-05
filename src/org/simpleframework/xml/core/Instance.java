package org.simpleframework.xml.core;

abstract interface Instance
{
  public abstract Object getInstance();
  
  public abstract Class getType();
  
  public abstract boolean isReference();
  
  public abstract Object setInstance(Object paramObject);
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.Instance
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */