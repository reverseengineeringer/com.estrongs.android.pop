package org.simpleframework.xml.core;

import org.simpleframework.xml.Version;

abstract interface Schema
{
  public abstract Caller getCaller();
  
  public abstract Creator getCreator();
  
  public abstract Decorator getDecorator();
  
  public abstract Version getRevision();
  
  public abstract Section getSection();
  
  public abstract Label getText();
  
  public abstract Label getVersion();
  
  public abstract boolean isPrimitive();
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.Schema
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */