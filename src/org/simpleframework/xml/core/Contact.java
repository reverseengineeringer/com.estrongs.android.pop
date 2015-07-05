package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import org.simpleframework.xml.strategy.Type;

abstract interface Contact
  extends Type
{
  public abstract Object get(Object paramObject);
  
  public abstract Annotation getAnnotation();
  
  public abstract Class getDependent();
  
  public abstract Class[] getDependents();
  
  public abstract String getName();
  
  public abstract boolean isReadOnly();
  
  public abstract void set(Object paramObject1, Object paramObject2);
  
  public abstract String toString();
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.Contact
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */