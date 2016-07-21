package com.estrongs.android.a.b;

import android.content.pm.ApplicationInfo;
import com.estrongs.fs.impl.b.d;
import com.estrongs.fs.impl.b.h;
import com.estrongs.fs.impl.c.b;
import java.util.List;

public class f
  extends d
{
  h a = null;
  private final long c;
  private final String[] d;
  private final List<b> e;
  private final List<g> f;
  private final d g;
  
  public f(d paramd, long paramLong1, long paramLong2, String[] paramArrayOfString, List<b> paramList, List<g> paramList1)
  {
    super(paramd.getPath(), paramd.getFileType(), paramd.getName(), paramd.h());
    size = paramLong1;
    c = paramLong2;
    d = paramArrayOfString;
    e = paramList;
    f = paramList1;
    g = paramd;
  }
  
  public d a(h paramh)
  {
    return g.a(paramh);
  }
  
  public final List<g> a()
  {
    return f;
  }
  
  public void a(int paramInt)
  {
    g.a(paramInt);
  }
  
  public void a(String paramString)
  {
    g.a(paramString);
  }
  
  public void a(boolean paramBoolean)
  {
    g.a(paramBoolean);
  }
  
  public final long b()
  {
    return c;
  }
  
  public void b(String paramString)
  {
    g.b(paramString);
  }
  
  public final String[] c()
  {
    return d;
  }
  
  public final int d()
  {
    return d.length;
  }
  
  public String e()
  {
    return g.e();
  }
  
  public boolean f()
  {
    return g.f();
  }
  
  public String g()
  {
    return g.g();
  }
  
  public ApplicationInfo h()
  {
    return g.h();
  }
  
  public int i()
  {
    return g.i();
  }
  
  public boolean j()
  {
    return g.j();
  }
  
  public h k()
  {
    return g.k();
  }
  
  public String l()
  {
    return g.l();
  }
  
  public long lastModified()
  {
    return g.lastModified();
  }
  
  public String m()
  {
    return g.m();
  }
  
  public d n()
  {
    return g;
  }
  
  public long o()
  {
    return g.length();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.a.b.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */