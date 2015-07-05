package org.simpleframework.xml.core;

import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Method;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;

final class Reflector
{
  private static Class getArrayClass(Type paramType)
  {
    paramType = getClass(((GenericArrayType)paramType).getGenericComponentType());
    if (paramType != null) {
      return Array.newInstance(paramType, 0).getClass();
    }
    return null;
  }
  
  private static Class getClass(ParameterizedType paramParameterizedType)
  {
    paramParameterizedType = paramParameterizedType.getActualTypeArguments();
    if (paramParameterizedType.length > 0) {
      return getClass(paramParameterizedType[0]);
    }
    return null;
  }
  
  private static Class getClass(Type paramType)
  {
    if ((paramType instanceof Class)) {
      return (Class)paramType;
    }
    return getGenericClass(paramType);
  }
  
  private static Class[] getClasses(ParameterizedType paramParameterizedType)
  {
    paramParameterizedType = paramParameterizedType.getActualTypeArguments();
    Class[] arrayOfClass = new Class[paramParameterizedType.length];
    int i = 0;
    for (;;)
    {
      if (i >= paramParameterizedType.length) {
        return arrayOfClass;
      }
      arrayOfClass[i] = getClass(paramParameterizedType[i]);
      i += 1;
    }
  }
  
  public static Class getDependent(Field paramField)
  {
    paramField = getType(paramField);
    if (paramField != null) {
      return getClass(paramField);
    }
    return null;
  }
  
  public static Class[] getDependents(Field paramField)
  {
    paramField = getType(paramField);
    if (paramField != null) {
      return getClasses(paramField);
    }
    return new Class[0];
  }
  
  private static Class getGenericClass(Type paramType)
  {
    if ((paramType instanceof GenericArrayType)) {
      return getArrayClass(paramType);
    }
    return Object.class;
  }
  
  public static String getName(String paramString)
  {
    String str = paramString;
    if (paramString.length() > 0)
    {
      paramString = paramString.toCharArray();
      char c = paramString[0];
      if (!isAcronym(paramString)) {
        paramString[0] = toLowerCase(c);
      }
      str = new String(paramString);
    }
    return str;
  }
  
  public static Class getParameterDependent(Constructor paramConstructor, int paramInt)
  {
    paramConstructor = getParameterType(paramConstructor, paramInt);
    if (paramConstructor != null) {
      return getClass(paramConstructor);
    }
    return null;
  }
  
  public static Class getParameterDependent(Method paramMethod, int paramInt)
  {
    paramMethod = getParameterType(paramMethod, paramInt);
    if (paramMethod != null) {
      return getClass(paramMethod);
    }
    return null;
  }
  
  public static Class[] getParameterDependents(Constructor paramConstructor, int paramInt)
  {
    paramConstructor = getParameterType(paramConstructor, paramInt);
    if (paramConstructor != null) {
      return getClasses(paramConstructor);
    }
    return new Class[0];
  }
  
  public static Class[] getParameterDependents(Method paramMethod, int paramInt)
  {
    paramMethod = getParameterType(paramMethod, paramInt);
    if (paramMethod != null) {
      return getClasses(paramMethod);
    }
    return new Class[0];
  }
  
  private static ParameterizedType getParameterType(Constructor paramConstructor, int paramInt)
  {
    paramConstructor = paramConstructor.getGenericParameterTypes();
    if (paramConstructor.length > paramInt)
    {
      paramConstructor = paramConstructor[paramInt];
      if ((paramConstructor instanceof ParameterizedType)) {
        return (ParameterizedType)paramConstructor;
      }
    }
    return null;
  }
  
  private static ParameterizedType getParameterType(Method paramMethod, int paramInt)
  {
    paramMethod = paramMethod.getGenericParameterTypes();
    if (paramMethod.length > paramInt)
    {
      paramMethod = paramMethod[paramInt];
      if ((paramMethod instanceof ParameterizedType)) {
        return (ParameterizedType)paramMethod;
      }
    }
    return null;
  }
  
  public static Class getReturnDependent(Method paramMethod)
  {
    paramMethod = getReturnType(paramMethod);
    if (paramMethod != null) {
      return getClass(paramMethod);
    }
    return null;
  }
  
  public static Class[] getReturnDependents(Method paramMethod)
  {
    paramMethod = getReturnType(paramMethod);
    if (paramMethod != null) {
      return getClasses(paramMethod);
    }
    return new Class[0];
  }
  
  private static ParameterizedType getReturnType(Method paramMethod)
  {
    paramMethod = paramMethod.getGenericReturnType();
    if ((paramMethod instanceof ParameterizedType)) {
      return (ParameterizedType)paramMethod;
    }
    return null;
  }
  
  private static ParameterizedType getType(Field paramField)
  {
    paramField = paramField.getGenericType();
    if ((paramField instanceof ParameterizedType)) {
      return (ParameterizedType)paramField;
    }
    return null;
  }
  
  private static boolean isAcronym(char[] paramArrayOfChar)
  {
    if (paramArrayOfChar.length < 2) {}
    while (!isUpperCase(paramArrayOfChar[0])) {
      return false;
    }
    return isUpperCase(paramArrayOfChar[1]);
  }
  
  private static boolean isUpperCase(char paramChar)
  {
    return Character.isUpperCase(paramChar);
  }
  
  private static char toLowerCase(char paramChar)
  {
    return Character.toLowerCase(paramChar);
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.Reflector
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */