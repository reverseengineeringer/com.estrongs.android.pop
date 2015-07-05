package com.estrongs.fs.impl.b;

import android.content.pm.ApplicationInfo;
import com.estrongs.fs.m;
import com.estrongs.fs.n;
import com.estrongs.fs.util.j;
import java.io.File;

public class c
  extends n
{
  g a = null;
  private String b;
  private String c;
  private ApplicationInfo d;
  private int e;
  
  public c(String paramString1, m paramm, String paramString2, ApplicationInfo paramApplicationInfo)
  {
    super(paramString1, paramm, paramString2);
    d = paramApplicationInfo;
    paramString1 = new File(paramString1);
    if (!paramString1.exists())
    {
      size = 0L;
      return;
    }
    lastModified = paramString1.lastModified();
    size = paramString1.length();
  }
  
  public c a(g paramg)
  {
    a = paramg;
    return this;
  }
  
  public String a()
  {
    if (a != null) {
      return a.b() + "(" + b + ")";
    }
    return b;
  }
  
  public void a(int paramInt)
  {
    e = paramInt;
  }
  
  public void a(String paramString)
  {
    b = paramString;
  }
  
  public String b()
  {
    if ((c != null) && (!"".equals(c))) {
      return b + " (" + c + ")";
    }
    return a();
  }
  
  public void b(String paramString)
  {
    c = paramString;
  }
  
  public ApplicationInfo c()
  {
    return d;
  }
  
  public int d()
  {
    if (a != null)
    {
      if (a.h()) {
        return 2;
      }
      return 1;
    }
    return e;
  }
  
  public boolean e()
  {
    return a != null;
  }
  
  public g f()
  {
    return a;
  }
  
  public String g()
  {
    if (f() != null) {
      return j.e(f().a() + "_" + f().b() + ".apk");
    }
    return null;
  }
  
  public long lastModified()
  {
    if (a != null) {
      return a.f();
    }
    return lastModified;
  }
  
  public long length()
  {
    if (a != null) {
      return a.e();
    }
    return size;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.b.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */