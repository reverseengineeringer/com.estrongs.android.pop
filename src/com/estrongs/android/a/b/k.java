package com.estrongs.android.a.b;

import com.estrongs.android.util.ap;
import com.estrongs.fs.h;
import com.estrongs.fs.impl.local.f;
import java.io.File;

public class k
  extends q
{
  private final String a;
  private final String b;
  private final String c;
  private final long d;
  private File e;
  
  public k(String paramString, long paramLong1, long paramLong2)
  {
    super(paramLong1);
    a = paramString;
    b = null;
    c = null;
    d = paramLong2;
  }
  
  public k(String paramString1, String paramString2, long paramLong1, long paramLong2)
  {
    super(paramLong1);
    a = null;
    b = paramString1;
    c = paramString2;
    d = paramLong2;
  }
  
  public h a()
  {
    return new f(b());
  }
  
  public final File b()
  {
    if (e == null) {
      e = new File(e_());
    }
    return e;
  }
  
  public final String e_()
  {
    if (a != null) {
      return a;
    }
    return b + File.separatorChar + c;
  }
  
  public final long f()
  {
    return d;
  }
  
  public final String f_()
  {
    if (c != null) {
      return c;
    }
    return ap.d(a);
  }
  
  public final long g()
  {
    return d;
  }
  
  public boolean h()
  {
    return b().exists();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.a.b.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */