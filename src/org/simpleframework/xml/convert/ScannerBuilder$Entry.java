package org.simpleframework.xml.convert;

import java.lang.annotation.Annotation;
import org.simpleframework.xml.util.WeakCache;

class ScannerBuilder$Entry
  extends WeakCache<Class, Annotation>
  implements Scanner
{
  private final Class root;
  
  public ScannerBuilder$Entry(Class paramClass)
  {
    root = paramClass;
  }
  
  private <T extends Annotation> T find(Class<T> paramClass)
  {
    for (Class localClass = root;; localClass = localClass.getSuperclass())
    {
      Object localObject;
      if (localClass == null) {
        localObject = null;
      }
      Annotation localAnnotation;
      do
      {
        return (T)localObject;
        localAnnotation = localClass.getAnnotation(paramClass);
        localObject = localAnnotation;
      } while (localAnnotation != null);
    }
  }
  
  public <T extends Annotation> T scan(Class<T> paramClass)
  {
    if (!contains(paramClass))
    {
      Annotation localAnnotation = find(paramClass);
      if (paramClass != null) {
        cache(paramClass, localAnnotation);
      }
    }
    return (Annotation)fetch(paramClass);
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.convert.ScannerBuilder.Entry
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */