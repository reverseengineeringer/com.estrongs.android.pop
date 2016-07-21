package com.flurry.sdk;

public class lo
{
  private static long a = 100L;
  private static lo b = null;
  private final lp c = new lp();
  
  public lo()
  {
    c.a(a);
    c.a(true);
  }
  
  public static lo a()
  {
    try
    {
      if (b == null) {
        b = new lo();
      }
      lo locallo = b;
      return locallo;
    }
    finally {}
  }
  
  public static void b()
  {
    try
    {
      if (b != null)
      {
        b.c();
        b = null;
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public void a(kb<ln> paramkb)
  {
    try
    {
      kc.a().a("com.flurry.android.sdk.TickEvent", paramkb);
      if (kc.a().b("com.flurry.android.sdk.TickEvent") > 0) {
        c.a();
      }
      return;
    }
    finally
    {
      paramkb = finally;
      throw paramkb;
    }
  }
  
  public void b(kb<ln> paramkb)
  {
    try
    {
      kc.a().b("com.flurry.android.sdk.TickEvent", paramkb);
      if (kc.a().b("com.flurry.android.sdk.TickEvent") == 0) {
        c.b();
      }
      return;
    }
    finally
    {
      paramkb = finally;
      throw paramkb;
    }
  }
  
  public void c()
  {
    try
    {
      kc.a().a("com.flurry.android.sdk.TickEvent");
      c.b();
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.lo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */