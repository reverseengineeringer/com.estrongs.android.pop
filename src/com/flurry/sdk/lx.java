package com.flurry.sdk;

import java.lang.reflect.Method;

public class lx
{
  public static Method a(Class<?> paramClass, String paramString, Class<?>... paramVarArgs)
  {
    while (paramClass != null) {
      try
      {
        Method localMethod = paramClass.getDeclaredMethod(paramString, paramVarArgs);
        return localMethod;
      }
      catch (NoSuchMethodException localNoSuchMethodException)
      {
        paramClass = paramClass.getSuperclass();
      }
    }
    throw new NoSuchMethodException();
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.lx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */