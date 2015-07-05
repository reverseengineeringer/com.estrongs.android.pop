package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;

abstract interface Parameter
{
  public abstract Annotation getAnnotation();
  
  public abstract Expression getExpression();
  
  public abstract int getIndex();
  
  public abstract String getName();
  
  public abstract String getName(Context paramContext);
  
  public abstract String getPath();
  
  public abstract String getPath(Context paramContext);
  
  public abstract Class getType();
  
  public abstract boolean isAttribute();
  
  public abstract boolean isPrimitive();
  
  public abstract boolean isRequired();
  
  public abstract boolean isText();
  
  public abstract String toString();
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.Parameter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */