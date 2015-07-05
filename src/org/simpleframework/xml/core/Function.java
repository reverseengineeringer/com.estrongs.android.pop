package org.simpleframework.xml.core;

import java.lang.reflect.Method;

class Function
{
  private final boolean contextual;
  private final Method method;
  
  public Function(Method paramMethod)
  {
    this(paramMethod, false);
  }
  
  public Function(Method paramMethod, boolean paramBoolean)
  {
    contextual = paramBoolean;
    method = paramMethod;
  }
  
  public Object call(Context paramContext, Object paramObject)
  {
    if (paramObject != null)
    {
      paramContext = paramContext.getSession().getMap();
      if (contextual) {
        return method.invoke(paramObject, new Object[] { paramContext });
      }
      return method.invoke(paramObject, new Object[0]);
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.Function
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */