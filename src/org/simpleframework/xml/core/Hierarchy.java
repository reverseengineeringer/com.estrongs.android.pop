package org.simpleframework.xml.core;

import java.util.LinkedList;

class Hierarchy
  extends LinkedList<Class>
{
  public Hierarchy(Class paramClass)
  {
    scan(paramClass);
  }
  
  private void scan(Class paramClass)
  {
    for (;;)
    {
      if (paramClass == null)
      {
        remove(Object.class);
        return;
      }
      addFirst(paramClass);
      paramClass = paramClass.getSuperclass();
    }
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.Hierarchy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */