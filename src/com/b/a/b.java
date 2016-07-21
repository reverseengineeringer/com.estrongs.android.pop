package com.b.a;

import android.text.TextUtils;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.LinkedHashSet;
import java.util.Set;

public class b
{
  public static Object a(Field paramField, Object paramObject)
  {
    if (paramField == null) {
      return null;
    }
    try
    {
      paramField = paramField.get(paramObject);
      return paramField;
    }
    catch (IllegalArgumentException paramField)
    {
      paramField.printStackTrace();
      return null;
    }
    catch (IllegalAccessException paramField)
    {
      paramField.printStackTrace();
      return null;
    }
    catch (Throwable paramField)
    {
      paramField.printStackTrace();
    }
    return null;
  }
  
  public static Object a(Method paramMethod, Object paramObject, Object... paramVarArgs)
  {
    if (paramMethod == null) {
      return null;
    }
    try
    {
      paramMethod = paramMethod.invoke(paramObject, paramVarArgs);
      return paramMethod;
    }
    catch (IllegalAccessException paramMethod)
    {
      paramMethod.printStackTrace();
      return null;
    }
    catch (IllegalArgumentException paramMethod)
    {
      paramMethod.printStackTrace();
      return null;
    }
    catch (InvocationTargetException paramMethod)
    {
      paramMethod.printStackTrace();
      return null;
    }
    catch (Throwable paramMethod)
    {
      paramMethod.printStackTrace();
    }
    return null;
  }
  
  public static Field a(Class<?> paramClass, String paramString)
  {
    try
    {
      paramClass = b(paramClass, paramString);
      return paramClass;
    }
    catch (NoSuchFieldException paramClass) {}
    return null;
  }
  
  public static Method a(Class<?> paramClass, String paramString, Class<?>... paramVarArgs)
  {
    if ((paramClass == null) || (TextUtils.isEmpty(paramString))) {
      localObject = null;
    }
    for (;;)
    {
      return (Method)localObject;
      try
      {
        Method localMethod = paramClass.getMethod(paramString, paramVarArgs);
        localObject = localMethod;
        if (localMethod != null) {}
      }
      catch (NoSuchMethodException localNoSuchMethodException2)
      {
        for (;;) {}
      }
    }
    Object localObject = paramClass;
    while (localObject != null) {
      try
      {
        localObject = ((Class)localObject).getDeclaredMethod(paramString, paramVarArgs);
        if (localObject != null)
        {
          ((Method)localObject).setAccessible(true);
          return (Method)localObject;
        }
      }
      catch (NoSuchMethodException localNoSuchMethodException1)
      {
        Class localClass = paramClass.getSuperclass();
      }
    }
    return null;
  }
  
  public static boolean a(Field paramField, Object paramObject1, Object paramObject2)
  {
    if (paramField == null) {
      return false;
    }
    try
    {
      paramField.set(paramObject1, paramObject2);
      return true;
    }
    catch (IllegalArgumentException paramField)
    {
      paramField.printStackTrace();
      return false;
    }
    catch (IllegalAccessException paramField)
    {
      paramField.printStackTrace();
      return false;
    }
    catch (Throwable paramField)
    {
      paramField.printStackTrace();
    }
    return false;
  }
  
  public static Class<?>[] a(Class<?> paramClass)
  {
    LinkedHashSet localLinkedHashSet = new LinkedHashSet();
    while (paramClass != null)
    {
      Class[] arrayOfClass = paramClass.getInterfaces();
      if ((arrayOfClass != null) && (arrayOfClass.length > 0))
      {
        int i = 0;
        while (i < arrayOfClass.length)
        {
          localLinkedHashSet.add(arrayOfClass[i]);
          i += 1;
        }
      }
      paramClass = paramClass.getSuperclass();
    }
    return (Class[])localLinkedHashSet.toArray(new Class[localLinkedHashSet.size()]);
  }
  
  public static Object b(Method paramMethod, Object paramObject, Object... paramVarArgs)
  {
    if (paramMethod == null) {
      return null;
    }
    try
    {
      paramMethod = paramMethod.invoke(paramObject, paramVarArgs);
      return paramMethod;
    }
    catch (IllegalAccessException paramMethod)
    {
      paramMethod.printStackTrace();
      return null;
    }
    catch (IllegalArgumentException paramMethod)
    {
      paramMethod.printStackTrace();
      return null;
    }
    catch (InvocationTargetException paramMethod)
    {
      if (paramMethod.getTargetException() != null) {
        throw paramMethod.getTargetException();
      }
      paramMethod.printStackTrace();
    }
    return null;
  }
  
  private static Field b(Class<?> paramClass, String paramString)
  {
    Object localObject;
    if ((paramClass == null) || (TextUtils.isEmpty(paramString)))
    {
      localObject = null;
      return (Field)localObject;
    }
    for (;;)
    {
      try
      {
        Field localField = paramClass.getField(paramString);
        localObject = localField;
        if (localField != null) {
          break;
        }
      }
      catch (Exception localException)
      {
        continue;
      }
      if (paramClass == null) {
        continue;
      }
      try
      {
        localObject = paramClass.getDeclaredField(paramString);
        ((Field)localObject).setAccessible(true);
        return (Field)localObject;
      }
      catch (NoSuchFieldException localNoSuchFieldException)
      {
        paramClass = paramClass.getSuperclass();
      }
    }
    throw new NoSuchFieldException();
  }
}

/* Location:
 * Qualified Name:     com.b.a.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */