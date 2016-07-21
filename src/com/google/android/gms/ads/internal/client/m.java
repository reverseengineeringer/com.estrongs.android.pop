package com.google.android.gms.ads.internal.client;

import com.google.android.gms.ads.internal.reward.client.d;
import com.google.android.gms.ads.internal.util.client.a;
import com.google.android.gms.internal.ey;
import com.google.android.gms.internal.me;

@me
public class m
{
  private static final Object a = new Object();
  private static m b;
  private final a c = new a();
  private final h d = new h();
  private final n e = new n();
  private final b f = new b();
  private final ey g = new ey();
  private final d h = new d();
  
  static
  {
    a(new m());
  }
  
  public static a a()
  {
    return ec;
  }
  
  protected static void a(m paramm)
  {
    synchronized (a)
    {
      b = paramm;
      return;
    }
  }
  
  public static h b()
  {
    return ed;
  }
  
  public static n c()
  {
    return ee;
  }
  
  public static ey d()
  {
    return eg;
  }
  
  private static m e()
  {
    synchronized (a)
    {
      m localm = b;
      return localm;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.client.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */