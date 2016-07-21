package com.google.android.gms.internal;

import android.content.Context;

@me
public class ox
{
  public static final oz<Void> a = new oy();
  private static sn b;
  private static final Object c = new Object();
  
  public ox(Context paramContext)
  {
    b = a(paramContext);
  }
  
  private static sn a(Context paramContext)
  {
    synchronized (c)
    {
      if (b == null) {
        b = b.a(paramContext.getApplicationContext());
      }
      paramContext = b;
      return paramContext;
    }
  }
  
  public <T> po<T> a(String paramString, oz<T> paramoz)
  {
    pc localpc = new pc(this, null);
    b.a(new pa(paramString, paramoz, localpc));
    return localpc;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ox
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */