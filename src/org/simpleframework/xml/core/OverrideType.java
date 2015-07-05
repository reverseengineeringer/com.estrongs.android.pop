package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import org.simpleframework.xml.strategy.Type;

class OverrideType
  implements Type
{
  private final Class override;
  private final Type type;
  
  public OverrideType(Type paramType, Class paramClass)
  {
    override = paramClass;
    type = paramType;
  }
  
  public <T extends Annotation> T getAnnotation(Class<T> paramClass)
  {
    return type.getAnnotation(paramClass);
  }
  
  public Class getType()
  {
    return override;
  }
  
  public String toString()
  {
    return type.toString();
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.OverrideType
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */