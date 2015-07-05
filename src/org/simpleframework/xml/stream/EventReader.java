package org.simpleframework.xml.stream;

abstract interface EventReader
{
  public abstract EventNode next();
  
  public abstract EventNode peek();
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.stream.EventReader
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */