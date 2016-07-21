package com.estrongs.fs.impl.b;

import android.content.pm.ApplicationInfo;
import com.estrongs.fs.util.j;
import com.estrongs.fs.w;
import com.estrongs.fs.x;
import java.io.File;

public class d
  extends x
{
  private String a;
  h b = null;
  private String c;
  private ApplicationInfo d;
  private int e;
  private boolean f = false;
  
  public d(String paramString1, w paramw, String paramString2, ApplicationInfo paramApplicationInfo)
  {
    super(paramString1, paramw, paramString2);
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
  
  public d a(h paramh)
  {
    b = paramh;
    return this;
  }
  
  public void a(int paramInt)
  {
    e = paramInt;
  }
  
  public void a(String paramString)
  {
    a = paramString;
  }
  
  public void a(boolean paramBoolean)
  {
    f = paramBoolean;
  }
  
  public void b(String paramString)
  {
    c = paramString;
  }
  
  public String e()
  {
    if (b != null) {
      return b.b() + "(" + a + ")";
    }
    return a;
  }
  
  public boolean f()
  {
    return f;
  }
  
  public String g()
  {
    if ((c != null) && (!"".equals(c))) {
      return a + " (" + c + ")";
    }
    return e();
  }
  
  public ApplicationInfo h()
  {
    return d;
  }
  
  public int i()
  {
    if (b != null)
    {
      if (b.h()) {
        return 2;
      }
      return 1;
    }
    return e;
  }
  
  public boolean j()
  {
    return b != null;
  }
  
  public h k()
  {
    return b;
  }
  
  public String l()
  {
    if (k() != null) {
      return j.e(k().a() + "_" + k().b() + ".apk");
    }
    return null;
  }
  
  public long lastModified()
  {
    if (b != null) {
      return b.f();
    }
    return lastModified;
  }
  
  public long length()
  {
    if (b != null) {
      return b.e();
    }
    return size;
  }
  
  public String m()
  {
    if (d != null) {
      return d.packageName;
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.b.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */