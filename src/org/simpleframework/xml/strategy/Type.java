package org.simpleframework.xml.strategy;

import java.lang.annotation.Annotation;

public abstract interface Type
{
  public abstract <T extends Annotation> T getAnnotation(Class<T> paramClass);
  
  public abstract Class getType();
  
  public abstract String toString();
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.strategy.Type
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */