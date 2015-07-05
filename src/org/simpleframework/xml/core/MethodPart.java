package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import java.lang.reflect.Method;

abstract interface MethodPart
{
  public abstract Annotation getAnnotation();
  
  public abstract <T extends Annotation> T getAnnotation(Class<T> paramClass);
  
  public abstract Class getDependent();
  
  public abstract Class[] getDependents();
  
  public abstract Method getMethod();
  
  public abstract MethodType getMethodType();
  
  public abstract String getName();
  
  public abstract Class getType();
  
  public abstract String toString();
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.MethodPart
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */