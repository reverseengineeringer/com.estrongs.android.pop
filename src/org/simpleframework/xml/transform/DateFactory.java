package org.simpleframework.xml.transform;

import java.lang.reflect.Constructor;
import java.util.Date;

class DateFactory<T extends Date>
{
  private final Constructor<T> factory;
  
  public DateFactory(Class<T> paramClass)
  {
    this(paramClass, new Class[] { Long.TYPE });
  }
  
  public DateFactory(Class<T> paramClass, Class... paramVarArgs)
  {
    factory = paramClass.getDeclaredConstructor(paramVarArgs);
  }
  
  public T getInstance(Object... paramVarArgs)
  {
    return (Date)factory.newInstance(paramVarArgs);
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.transform.DateFactory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */