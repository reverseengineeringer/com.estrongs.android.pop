package com.google.android.gms.ads.internal.formats;

import android.os.Bundle;
import com.google.android.gms.dynamic.e;
import com.google.android.gms.internal.dr;
import com.google.android.gms.internal.ec;
import com.google.android.gms.internal.me;
import java.util.List;

@me
public class d
  extends ec
  implements o
{
  private final String a;
  private final List<c> b;
  private final String c;
  private final dr d;
  private final String e;
  private final double f;
  private final String g;
  private final String h;
  private final a i;
  private final Bundle j;
  private final Object k = new Object();
  private h l;
  
  public d(String paramString1, List paramList, String paramString2, dr paramdr, String paramString3, double paramDouble, String paramString4, String paramString5, a parama, Bundle paramBundle)
  {
    a = paramString1;
    b = paramList;
    c = paramString2;
    d = paramdr;
    e = paramString3;
    f = paramDouble;
    g = paramString4;
    h = paramString5;
    i = parama;
    j = paramBundle;
  }
  
  public String a()
  {
    return a;
  }
  
  public void a(h paramh)
  {
    synchronized (k)
    {
      l = paramh;
      return;
    }
  }
  
  public List b()
  {
    return b;
  }
  
  public String c()
  {
    return c;
  }
  
  public dr d()
  {
    return d;
  }
  
  public String e()
  {
    return e;
  }
  
  public double f()
  {
    return f;
  }
  
  public String g()
  {
    return g;
  }
  
  public String h()
  {
    return h;
  }
  
  public e i()
  {
    return com.google.android.gms.dynamic.h.a(l);
  }
  
  public String j()
  {
    return "2";
  }
  
  public String k()
  {
    return "";
  }
  
  public a l()
  {
    return i;
  }
  
  public Bundle m()
  {
    return j;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.formats.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */