package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import java.lang.reflect.Method;

class Comparer
{
  private static final String NAME = "name";
  private final String[] ignore;
  
  public Comparer()
  {
    this(new String[] { "name" });
  }
  
  public Comparer(String... paramVarArgs)
  {
    ignore = paramVarArgs;
  }
  
  private boolean isIgnore(Method paramMethod)
  {
    paramMethod = paramMethod.getName();
    String[] arrayOfString;
    int j;
    int i;
    if (ignore != null)
    {
      arrayOfString = ignore;
      j = arrayOfString.length;
      i = 0;
    }
    for (;;)
    {
      if (i >= j) {
        return false;
      }
      if (paramMethod.equals(arrayOfString[i])) {
        return true;
      }
      i += 1;
    }
  }
  
  public boolean equals(Annotation paramAnnotation1, Annotation paramAnnotation2)
  {
    boolean bool2 = false;
    Class localClass1 = paramAnnotation1.annotationType();
    Class localClass2 = paramAnnotation2.annotationType();
    Method[] arrayOfMethod = localClass1.getDeclaredMethods();
    boolean bool1 = bool2;
    int j;
    int i;
    if (localClass1.equals(localClass2))
    {
      j = arrayOfMethod.length;
      i = 0;
    }
    for (;;)
    {
      if (i >= j) {
        bool1 = true;
      }
      do
      {
        return bool1;
        localClass1 = arrayOfMethod[i];
        if (isIgnore(localClass1)) {
          break;
        }
        bool1 = bool2;
      } while (!localClass1.invoke(paramAnnotation1, new Object[0]).equals(localClass1.invoke(paramAnnotation2, new Object[0])));
      i += 1;
    }
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.Comparer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */