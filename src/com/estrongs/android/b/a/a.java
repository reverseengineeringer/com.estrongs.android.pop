package com.estrongs.android.b.a;

import com.estrongs.fs.h;
import java.util.HashMap;

public class a
{
  protected String a;
  protected String b;
  protected int c;
  protected String d;
  protected String e;
  protected boolean f = false;
  protected boolean g = false;
  protected boolean h = false;
  protected String i;
  protected int j;
  protected int k;
  protected boolean l = false;
  protected int m = 100;
  protected boolean n;
  protected h o;
  protected long p;
  protected h q;
  private HashMap<String, Object> r = new HashMap();
  
  public a(String paramString)
  {
    this(paramString, null);
  }
  
  public a(String paramString1, String paramString2)
  {
    a = paramString1;
    if (paramString2 != null)
    {
      paramString1 = paramString2;
      if (paramString2.length() != 0) {}
    }
    else
    {
      paramString1 = null;
    }
    b = paramString1;
  }
  
  public int a()
  {
    return j;
  }
  
  public void a(int paramInt)
  {
    c = paramInt;
  }
  
  public void a(long paramLong)
  {
    p = paramLong;
  }
  
  public void a(h paramh)
  {
    o = paramh;
  }
  
  public void a(String paramString)
  {
    e = paramString;
  }
  
  public void a(String paramString, Object paramObject)
  {
    r.put(paramString, paramObject);
  }
  
  public void a(boolean paramBoolean)
  {
    h = paramBoolean;
  }
  
  public int b()
  {
    return k;
  }
  
  public void b(int paramInt)
  {
    m = paramInt;
  }
  
  public void b(h paramh)
  {
    q = paramh;
  }
  
  public void b(String paramString)
  {
    d = paramString;
  }
  
  public void b(boolean paramBoolean)
  {
    g = paramBoolean;
  }
  
  public Object c(String paramString)
  {
    return r.get(paramString);
  }
  
  public void c(boolean paramBoolean)
  {
    f = paramBoolean;
  }
  
  public boolean c()
  {
    return n;
  }
  
  public void d(String paramString)
  {
    i = paramString;
  }
  
  public void d(boolean paramBoolean)
  {
    l = paramBoolean;
  }
  
  public boolean d()
  {
    return h;
  }
  
  public long e()
  {
    return p;
  }
  
  public h f()
  {
    return o;
  }
  
  public h g()
  {
    return q;
  }
  
  public boolean h()
  {
    return g;
  }
  
  public boolean i()
  {
    return f;
  }
  
  public String j()
  {
    return e;
  }
  
  public int k()
  {
    return c;
  }
  
  public String l()
  {
    return a;
  }
  
  public String m()
  {
    return b;
  }
  
  public String n()
  {
    return d;
  }
  
  public String o()
  {
    return "";
  }
  
  public String p()
  {
    return i;
  }
  
  public boolean q()
  {
    return l;
  }
  
  public int r()
  {
    return m;
  }
  
  public String toString()
  {
    if (b == null) {
      return a;
    }
    return a + ":" + b;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.b.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */