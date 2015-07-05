package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;

class AnnotationHandler
  implements InvocationHandler
{
  private static final String CLASS = "annotationType";
  private static final String EQUAL = "equals";
  private static final String REQUIRED = "required";
  private static final String STRING = "toString";
  private final Comparer comparer = new Comparer();
  private final boolean required;
  private final Class type;
  
  public AnnotationHandler(Class paramClass)
  {
    this(paramClass, true);
  }
  
  public AnnotationHandler(Class paramClass, boolean paramBoolean)
  {
    required = paramBoolean;
    type = paramClass;
  }
  
  private void attributes(StringBuilder paramStringBuilder)
  {
    Method[] arrayOfMethod = type.getDeclaredMethods();
    int i = 0;
    for (;;)
    {
      if (i >= arrayOfMethod.length)
      {
        paramStringBuilder.append(')');
        return;
      }
      String str = arrayOfMethod[i].getName();
      Object localObject = value(arrayOfMethod[i]);
      if (i > 0)
      {
        paramStringBuilder.append(',');
        paramStringBuilder.append(' ');
      }
      paramStringBuilder.append(str);
      paramStringBuilder.append('=');
      paramStringBuilder.append(localObject);
      i += 1;
    }
  }
  
  private boolean equals(Object paramObject, Object[] paramArrayOfObject)
  {
    paramObject = (Annotation)paramObject;
    paramArrayOfObject = (Annotation)paramArrayOfObject[0];
    if (((Annotation)paramObject).annotationType() != paramArrayOfObject.annotationType()) {
      throw new PersistenceException("Annotation %s is not the same as %s", new Object[] { paramObject, paramArrayOfObject });
    }
    return comparer.equals((Annotation)paramObject, paramArrayOfObject);
  }
  
  private void name(StringBuilder paramStringBuilder)
  {
    String str = type.getName();
    if (str != null)
    {
      paramStringBuilder.append('@');
      paramStringBuilder.append(str);
      paramStringBuilder.append('(');
    }
  }
  
  private Object value(Method paramMethod)
  {
    if (paramMethod.getName().equals("required")) {
      return Boolean.valueOf(required);
    }
    return paramMethod.getDefaultValue();
  }
  
  public Object invoke(Object paramObject, Method paramMethod, Object[] paramArrayOfObject)
  {
    String str = paramMethod.getName();
    if (str.equals("toString")) {
      return toString();
    }
    if (str.equals("equals")) {
      return Boolean.valueOf(equals(paramObject, paramArrayOfObject));
    }
    if (str.equals("annotationType")) {
      return type;
    }
    if (str.equals("required")) {
      return Boolean.valueOf(required);
    }
    return paramMethod.getDefaultValue();
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    if (type != null)
    {
      name(localStringBuilder);
      attributes(localStringBuilder);
    }
    return localStringBuilder.toString();
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.AnnotationHandler
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */