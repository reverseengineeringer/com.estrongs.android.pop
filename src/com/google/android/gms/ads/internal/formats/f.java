package com.google.android.gms.ads.internal.formats;

import com.google.android.gms.ads.internal.util.client.b;
import com.google.android.gms.internal.dr;
import com.google.android.gms.internal.ek;
import com.google.android.gms.internal.me;
import com.google.android.gms.internal.sz;
import java.util.Arrays;
import java.util.List;

@me
public class f
  extends ek
  implements o
{
  private final a a;
  private final String b;
  private final sz<String, c> c;
  private final sz<String, String> d;
  private final Object e = new Object();
  private h f;
  
  public f(String paramString, sz<String, c> paramsz, sz<String, String> paramsz1, a parama)
  {
    b = paramString;
    c = paramsz;
    d = paramsz1;
    a = parama;
  }
  
  public String a(String paramString)
  {
    return (String)d.get(paramString);
  }
  
  public List<String> a()
  {
    int n = 0;
    String[] arrayOfString = new String[c.size() + d.size()];
    int j = 0;
    int i = 0;
    int k;
    int m;
    for (;;)
    {
      k = n;
      m = i;
      if (j >= c.size()) {
        break;
      }
      arrayOfString[i] = ((String)c.b(j));
      i += 1;
      j += 1;
    }
    while (k < d.size())
    {
      arrayOfString[m] = ((String)d.b(k));
      k += 1;
      m += 1;
    }
    return Arrays.asList(arrayOfString);
  }
  
  public void a(h paramh)
  {
    synchronized (e)
    {
      f = paramh;
      return;
    }
  }
  
  public dr b(String paramString)
  {
    return (dr)c.get(paramString);
  }
  
  public void b()
  {
    synchronized (e)
    {
      if (f == null)
      {
        b.b("Attempt to perform recordImpression before ad initialized.");
        return;
      }
      f.a();
      return;
    }
  }
  
  public void c(String paramString)
  {
    synchronized (e)
    {
      if (f == null)
      {
        b.b("Attempt to call performClick before ad initialized.");
        return;
      }
      f.a(paramString);
      return;
    }
  }
  
  public String j()
  {
    return "3";
  }
  
  public String k()
  {
    return b;
  }
  
  public a l()
  {
    return a;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.formats.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */