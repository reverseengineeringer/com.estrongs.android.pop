package com.flurry.sdk;

import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;

public class lx$a
{
  private final Object a;
  private final String b;
  private Class<?> c;
  private List<Class<?>> d;
  private List<Object> e;
  private boolean f;
  private boolean g;
  
  public lx$a(Object paramObject, String paramString)
  {
    a = paramObject;
    b = paramString;
    d = new ArrayList();
    e = new ArrayList();
    if (paramObject != null) {}
    for (paramObject = paramObject.getClass();; paramObject = null)
    {
      c = ((Class)paramObject);
      return;
    }
  }
  
  public a a(Class<?> paramClass)
  {
    g = true;
    c = paramClass;
    return this;
  }
  
  public <T> a a(Class<T> paramClass, T paramT)
  {
    d.add(paramClass);
    e.add(paramT);
    return this;
  }
  
  public Object a()
  {
    Object localObject = new Class[d.size()];
    localObject = (Class[])d.toArray((Object[])localObject);
    localObject = lx.a(c, b, (Class[])localObject);
    if (f) {
      ((Method)localObject).setAccessible(true);
    }
    Object[] arrayOfObject = e.toArray();
    if (g) {
      return ((Method)localObject).invoke(null, arrayOfObject);
    }
    return ((Method)localObject).invoke(a, arrayOfObject);
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.lx.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */