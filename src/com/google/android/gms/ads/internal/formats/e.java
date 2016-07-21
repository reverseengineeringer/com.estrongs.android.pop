package com.google.android.gms.ads.internal.formats;

import android.os.Bundle;
import com.google.android.gms.internal.dr;
import com.google.android.gms.internal.eg;
import com.google.android.gms.internal.me;
import java.util.List;

@me
public class e
  extends eg
  implements o
{
  private final String a;
  private final List<c> b;
  private final String c;
  private final dr d;
  private final String e;
  private final String f;
  private final a g;
  private final Bundle h;
  private final Object i = new Object();
  private h j;
  
  public e(String paramString1, List paramList, String paramString2, dr paramdr, String paramString3, String paramString4, a parama, Bundle paramBundle)
  {
    a = paramString1;
    b = paramList;
    c = paramString2;
    d = paramdr;
    e = paramString3;
    f = paramString4;
    g = parama;
    h = paramBundle;
  }
  
  public String a()
  {
    return a;
  }
  
  public void a(h paramh)
  {
    synchronized (i)
    {
      j = paramh;
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
  
  public String f()
  {
    return f;
  }
  
  public com.google.android.gms.dynamic.e g()
  {
    return com.google.android.gms.dynamic.h.a(j);
  }
  
  public Bundle h()
  {
    return h;
  }
  
  public String j()
  {
    return "1";
  }
  
  public String k()
  {
    return "";
  }
  
  public a l()
  {
    return g;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.formats.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */