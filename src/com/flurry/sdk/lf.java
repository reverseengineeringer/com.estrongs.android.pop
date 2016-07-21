package com.flurry.sdk;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

public class lf
{
  private static final List<Class<?>> b = new ArrayList();
  private final String a = lf.class.getSimpleName();
  private final Map<Class<?>, Object> c = new LinkedHashMap();
  
  public lf()
  {
    synchronized (b)
    {
      Object localObject2 = new ArrayList(b);
      ??? = ((List)localObject2).iterator();
      for (;;)
      {
        if (((Iterator)???).hasNext())
        {
          localObject2 = (Class)((Iterator)???).next();
          try
          {
            Object localObject4 = ((Class)localObject2).newInstance();
            synchronized (c)
            {
              c.put(localObject2, localObject4);
            }
          }
          catch (Exception localException)
          {
            kg.a(5, a, "Module data " + localObject2 + " is not available:", localException);
          }
        }
      }
    }
  }
  
  public static void a(Class<?> paramClass)
  {
    if (paramClass == null) {
      return;
    }
    synchronized (b)
    {
      b.add(paramClass);
      return;
    }
  }
  
  public static void b(Class<?> paramClass)
  {
    if (paramClass == null) {
      return;
    }
    synchronized (b)
    {
      b.remove(paramClass);
      return;
    }
  }
  
  public Object c(Class<?> paramClass)
  {
    if (paramClass == null) {
      return null;
    }
    synchronized (c)
    {
      paramClass = c.get(paramClass);
      return paramClass;
    }
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.lf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */