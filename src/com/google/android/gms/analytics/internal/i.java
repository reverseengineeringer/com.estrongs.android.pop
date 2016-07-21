package com.google.android.gms.analytics.internal;

import android.util.Log;

@Deprecated
public class i
{
  private static volatile com.google.android.gms.analytics.j a;
  
  static
  {
    a(new ba());
  }
  
  public static com.google.android.gms.analytics.j a()
  {
    return a;
  }
  
  public static void a(com.google.android.gms.analytics.j paramj)
  {
    a = paramj;
  }
  
  public static void a(String paramString)
  {
    Object localObject = j.b();
    if (localObject != null) {
      ((j)localObject).e(paramString);
    }
    for (;;)
    {
      localObject = a;
      if (localObject != null) {
        ((com.google.android.gms.analytics.j)localObject).a(paramString);
      }
      return;
      if (a(2)) {
        Log.w((String)bh.c.a(), paramString);
      }
    }
  }
  
  public static void a(String paramString, Object paramObject)
  {
    j localj = j.b();
    if (localj != null) {
      localj.e(paramString, paramObject);
    }
    while (!a(3))
    {
      paramObject = a;
      if (paramObject != null) {
        ((com.google.android.gms.analytics.j)paramObject).b(paramString);
      }
      return;
    }
    if (paramObject != null) {}
    for (paramObject = paramString + ":" + paramObject;; paramObject = paramString)
    {
      Log.e((String)bh.c.a(), (String)paramObject);
      break;
    }
  }
  
  public static boolean a(int paramInt)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (a() != null)
    {
      bool1 = bool2;
      if (a().a() <= paramInt) {
        bool1 = true;
      }
    }
    return bool1;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.internal.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */