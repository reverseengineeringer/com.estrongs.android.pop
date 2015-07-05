package org.simpleframework.xml.core;

import java.lang.reflect.Constructor;
import org.simpleframework.xml.strategy.Value;

class Instantiator
{
  private final ConstructorCache cache = new ConstructorCache();
  
  public Instance getInstance(Class paramClass)
  {
    return new ClassInstance(this, paramClass);
  }
  
  public Instance getInstance(Value paramValue)
  {
    return new ValueInstance(this, paramValue);
  }
  
  public Object getObject(Class paramClass)
  {
    Constructor localConstructor2 = (Constructor)cache.get(paramClass);
    Constructor localConstructor1 = localConstructor2;
    if (localConstructor2 == null)
    {
      localConstructor1 = paramClass.getDeclaredConstructor(new Class[0]);
      if (!localConstructor1.isAccessible()) {
        localConstructor1.setAccessible(true);
      }
      cache.put(paramClass, localConstructor1);
    }
    return localConstructor1.newInstance(new Object[0]);
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.Instantiator
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */