package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import java.lang.reflect.Method;

class MethodPartFactory
{
  private final AnnotationFactory factory;
  
  public MethodPartFactory()
  {
    this(true);
  }
  
  public MethodPartFactory(boolean paramBoolean)
  {
    factory = new AnnotationFactory(paramBoolean);
  }
  
  private Annotation getAnnotation(Method paramMethod)
  {
    paramMethod = getType(paramMethod);
    if (paramMethod != null) {
      return factory.getInstance(paramMethod);
    }
    return null;
  }
  
  private MethodType getMethodType(Method paramMethod)
  {
    paramMethod = paramMethod.getName();
    if (paramMethod.startsWith("get")) {
      return MethodType.GET;
    }
    if (paramMethod.startsWith("is")) {
      return MethodType.IS;
    }
    if (paramMethod.startsWith("set")) {
      return MethodType.SET;
    }
    return MethodType.NONE;
  }
  
  private MethodName getName(Method paramMethod, Annotation paramAnnotation)
  {
    MethodType localMethodType = getMethodType(paramMethod);
    if (localMethodType == MethodType.GET) {
      return getRead(paramMethod, localMethodType);
    }
    if (localMethodType == MethodType.IS) {
      return getRead(paramMethod, localMethodType);
    }
    if (localMethodType == MethodType.SET) {
      return getWrite(paramMethod, localMethodType);
    }
    throw new MethodException("Annotation %s must mark a set or get method", new Object[] { paramAnnotation });
  }
  
  private Class getParameterType(Method paramMethod)
  {
    if (paramMethod.getParameterTypes().length == 1) {
      return paramMethod.getParameterTypes()[0];
    }
    return null;
  }
  
  private MethodName getRead(Method paramMethod, MethodType paramMethodType)
  {
    Object localObject = paramMethod.getParameterTypes();
    String str = paramMethod.getName();
    if (localObject.length != 0) {
      throw new MethodException("Get method %s is not a valid property", new Object[] { paramMethod });
    }
    localObject = getTypeName(str, paramMethodType);
    if (localObject == null) {
      throw new MethodException("Could not get name for %s", new Object[] { paramMethod });
    }
    return new MethodName(paramMethod, paramMethodType, (String)localObject);
  }
  
  private Class getReturnType(Method paramMethod)
  {
    if (paramMethod.getParameterTypes().length == 0) {
      return paramMethod.getReturnType();
    }
    return null;
  }
  
  private String getTypeName(String paramString, MethodType paramMethodType)
  {
    int i = paramMethodType.getPrefix();
    int j = paramString.length();
    paramMethodType = paramString;
    if (j > i) {
      paramMethodType = paramString.substring(i, j);
    }
    return Reflector.getName(paramMethodType);
  }
  
  private MethodName getWrite(Method paramMethod, MethodType paramMethodType)
  {
    Object localObject = paramMethod.getParameterTypes();
    String str = paramMethod.getName();
    if (localObject.length != 1) {
      throw new MethodException("Set method %s is not a valid property", new Object[] { paramMethod });
    }
    localObject = getTypeName(str, paramMethodType);
    if (localObject == null) {
      throw new MethodException("Could not get name for %s", new Object[] { paramMethod });
    }
    return new MethodName(paramMethod, paramMethodType, (String)localObject);
  }
  
  public MethodPart getInstance(Method paramMethod)
  {
    Annotation localAnnotation = getAnnotation(paramMethod);
    if (localAnnotation != null) {
      return getInstance(paramMethod, localAnnotation);
    }
    return null;
  }
  
  public MethodPart getInstance(Method paramMethod, Annotation paramAnnotation)
  {
    paramMethod = getName(paramMethod, paramAnnotation);
    if (paramMethod.getType() == MethodType.SET) {
      return new SetPart(paramMethod, paramAnnotation);
    }
    return new GetPart(paramMethod, paramAnnotation);
  }
  
  public Class getType(Method paramMethod)
  {
    MethodType localMethodType = getMethodType(paramMethod);
    if (localMethodType == MethodType.SET) {
      return getParameterType(paramMethod);
    }
    if (localMethodType == MethodType.GET) {
      return getReturnType(paramMethod);
    }
    if (localMethodType == MethodType.IS) {
      return getReturnType(paramMethod);
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.MethodPartFactory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */