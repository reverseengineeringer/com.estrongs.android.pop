package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import java.lang.reflect.Constructor;

abstract class ParameterContact<T extends Annotation>
  implements Contact
{
  protected final Constructor factory;
  protected final int index;
  protected final T label;
  protected final Annotation[] labels = paramConstructor.getParameterAnnotations()[paramInt];
  
  public ParameterContact(T paramT, Constructor paramConstructor, int paramInt)
  {
    factory = paramConstructor;
    index = paramInt;
    label = paramT;
  }
  
  public Object get(Object paramObject)
  {
    return null;
  }
  
  public Annotation getAnnotation()
  {
    return label;
  }
  
  public <A extends Annotation> A getAnnotation(Class<A> paramClass)
  {
    Annotation[] arrayOfAnnotation = labels;
    int j = arrayOfAnnotation.length;
    int i = 0;
    for (;;)
    {
      Object localObject;
      if (i >= j) {
        localObject = null;
      }
      Annotation localAnnotation;
      do
      {
        return (A)localObject;
        localAnnotation = arrayOfAnnotation[i];
        localObject = localAnnotation;
      } while (localAnnotation.annotationType().equals(paramClass));
      i += 1;
    }
  }
  
  public Class getDependent()
  {
    return Reflector.getParameterDependent(factory, index);
  }
  
  public Class[] getDependents()
  {
    return Reflector.getParameterDependents(factory, index);
  }
  
  public abstract String getName();
  
  public Class getType()
  {
    return factory.getParameterTypes()[index];
  }
  
  public boolean isReadOnly()
  {
    return false;
  }
  
  public void set(Object paramObject1, Object paramObject2) {}
  
  public String toString()
  {
    return String.format("parameter %s of constructor %s", new Object[] { Integer.valueOf(index), factory });
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.ParameterContact
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */