package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import org.simpleframework.xml.strategy.Type;

class ClassType
  implements Type
{
  private final Class type;
  
  public ClassType(Class paramClass)
  {
    type = paramClass;
  }
  
  public <T extends Annotation> T getAnnotation(Class<T> paramClass)
  {
    return null;
  }
  
  public Class getType()
  {
    return type;
  }
  
  public String toString()
  {
    return type.toString();
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.ClassType
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */