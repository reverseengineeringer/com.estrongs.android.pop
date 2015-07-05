package org.simpleframework.xml.core;

import java.lang.reflect.Method;

class MethodName
{
  private Method method;
  private String name;
  private MethodType type;
  
  public MethodName(Method paramMethod, MethodType paramMethodType, String paramString)
  {
    name = paramString.intern();
    method = paramMethod;
    type = paramMethodType;
  }
  
  public Method getMethod()
  {
    return method;
  }
  
  public String getName()
  {
    return name;
  }
  
  public MethodType getType()
  {
    return type;
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.MethodName
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */