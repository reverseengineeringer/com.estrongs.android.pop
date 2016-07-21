package com.estrongs.android.util;

import java.lang.reflect.Field;
import java.lang.reflect.Method;

public class ao
{
  private Object a = null;
  
  public ao(Object paramObject)
  {
    a = paramObject;
  }
  
  public static ao a(Object paramObject)
  {
    if (paramObject == null) {
      return null;
    }
    return new ao(paramObject);
  }
  
  public Object a(String paramString)
  {
    return a(paramString, (Object[])null);
  }
  
  public Object a(String paramString, Class<?> paramClass, Object paramObject)
  {
    return a(paramString, new Class[] { paramClass }, new Object[] { paramObject });
  }
  
  public Object a(String paramString, Object paramObject)
  {
    return a(paramString, new Object[] { paramObject });
  }
  
  public Object a(String paramString, Class[] paramArrayOfClass, Object[] paramArrayOfObject)
  {
    try
    {
      paramArrayOfClass = a.getClass().getMethod(paramString, paramArrayOfClass).invoke(a, paramArrayOfObject);
      return paramArrayOfClass;
    }
    catch (NoSuchMethodException paramArrayOfClass)
    {
      l.e("ObjectHelper", "Can't find method:" + paramString);
      return null;
    }
    catch (SecurityException paramArrayOfClass)
    {
      for (;;)
      {
        l.e("ObjectHelper", "Can't get method:" + paramString + " for security issue");
      }
    }
    catch (Exception paramArrayOfClass)
    {
      for (;;)
      {
        paramArrayOfClass.printStackTrace();
        l.e("ObjectHelper", "call method:" + paramString + " failed:" + paramArrayOfClass.getMessage());
      }
    }
  }
  
  public Object a(String paramString, Object[] paramArrayOfObject)
  {
    for (;;)
    {
      int i;
      try
      {
        localObject = a.getClass();
        if (paramArrayOfObject != null)
        {
          arrayOfClass = new Class[paramArrayOfObject.length];
          i = 0;
          if (i < paramArrayOfObject.length) {
            if (paramArrayOfObject[i] != null) {
              arrayOfClass[i] = paramArrayOfObject[i].getClass();
            } else {
              arrayOfClass[i] = String.class;
            }
          }
        }
      }
      catch (NoSuchMethodException paramArrayOfObject)
      {
        Class[] arrayOfClass;
        l.e("ObjectHelper", "Can't find method:" + paramString);
        return null;
        Object localObject = ((Class)localObject).getMethod(paramString, arrayOfClass);
        return ((Method)localObject).invoke(a, paramArrayOfObject);
        localObject = ((Class)localObject).getMethod(paramString, (Class[])null);
        continue;
      }
      catch (SecurityException paramArrayOfObject)
      {
        l.e("ObjectHelper", "Can't get method:" + paramString + " for security issue");
        continue;
      }
      catch (Exception paramArrayOfObject)
      {
        l.e("ObjectHelper", "call method:" + paramString + " failed:" + paramArrayOfObject.getMessage());
        continue;
      }
      i += 1;
    }
  }
  
  public Object b(String paramString)
  {
    try
    {
      Object localObject = a.getClass().getDeclaredField(paramString);
      ((Field)localObject).setAccessible(true);
      localObject = ((Field)localObject).get(a);
      return localObject;
    }
    catch (NoSuchFieldException localNoSuchFieldException)
    {
      l.e("ObjectHelper", "Can't find member:" + paramString);
      return null;
    }
    catch (SecurityException localSecurityException)
    {
      for (;;)
      {
        l.e("ObjectHelper", "Can't get member:" + paramString + " for security issue");
      }
    }
    catch (Exception localException)
    {
      for (;;)
      {
        l.e("ObjectHelper", "call member:" + paramString + " failed");
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.util.ao
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */