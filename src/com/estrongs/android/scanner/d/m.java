package com.estrongs.android.scanner.d;

import android.database.Cursor;
import android.database.DatabaseUtils;
import com.estrongs.android.pop.app.imageviewer.gallery.g;
import com.estrongs.android.scanner.a.b;
import com.estrongs.android.scanner.a.c;
import com.estrongs.android.util.l;
import com.jcraft.jsch.jce.MD5;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicLong;

public final class m
  extends t
{
  private static g<String, q> c = new g(512);
  private static AtomicLong f = null;
  private Map<String, b> d;
  private Map<String, List<c>> e;
  private Set<b> g = new HashSet();
  private List<String> h = new ArrayList(100);
  private final MD5 i = new MD5();
  
  public m()
  {
    try
    {
      i.a();
      if (f == null)
      {
        long l = g();
        l.c(a, "last path id:" + l);
        f = new AtomicLong(l);
      }
      return;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        localException.printStackTrace();
      }
    }
  }
  
  private long g()
  {
    long l = 0L;
    b.b();
    Cursor localCursor = b.a("directory", new String[] { "max(_id)" }, null, null);
    if (localCursor == null)
    {
      b.close();
      return 0L;
    }
    if (localCursor.moveToFirst()) {
      l = localCursor.getLong(0);
    }
    localCursor.close();
    b.close();
    return l;
  }
  
  private void h()
  {
    int j = 0;
    d = new HashMap();
    e = new HashMap();
    n localn = new n(this);
    for (;;)
    {
      Object localObject = new StringBuilder();
      ((StringBuilder)localObject).append(j).append(',').append(1000);
      a locala = b;
      localObject = ((StringBuilder)localObject).toString();
      if (locala.a(localn, "directory", new String[] { "_id", "path", "name", "lastmodified", "isLogPath", "pathtype" }, null, null, null, (String)localObject) == 0) {
        return;
      }
      j += 1000;
    }
  }
  
  public final long a(c paramc)
  {
    long l = f.incrementAndGet();
    q localq = new q(l, paramc.g(), paramc.h());
    c.a(paramc.d(), localq);
    paramc.a(l);
    super.a(paramc);
    return l;
  }
  
  public final long a(String paramString)
  {
    paramString = e(paramString);
    if (paramString == null) {
      return -1L;
    }
    return paramString.a();
  }
  
  public final String a()
  {
    return "directory";
  }
  
  public final void a(b paramb)
  {
    long l = f.incrementAndGet();
    paramb.a(l);
    q localq = new q(l, paramb.g(), paramb.h());
    c.a(paramb.d(), localq);
    a(new s(this, paramb));
    l.b(a, "add dir to insert:" + paramb);
  }
  
  public void a(w paramw)
  {
    a(new r(this, paramw));
    l.b(a, "send store:");
  }
  
  public final List<c> b(String paramString)
  {
    try
    {
      paramString = (List)e.remove(paramString);
      return paramString;
    }
    finally
    {
      paramString = finally;
      throw paramString;
    }
  }
  
  protected final void b()
  {
    h();
  }
  
  public final c c(String paramString)
  {
    return (c)d.get(paramString);
  }
  
  public void d(String paramString)
  {
    c.b(paramString);
    a(new p(this, paramString));
    l.b(a, "send deleteDirectory:" + paramString);
  }
  
  public q e(String paramString)
  {
    l.e(a, "try get dir store information for: " + paramString);
    Object localObject = (q)c.a(paramString);
    if (localObject != null) {
      return (q)localObject;
    }
    l.e(a, "!!!!!DirStoreInfo not get from cache, try DB!!!!");
    localObject = "path=" + DatabaseUtils.sqlEscapeString(paramString);
    o localo = new o(this, paramString);
    b.a(localo, "directory", new String[] { "_id", "isLogPath", "pathtype" }, (String)localObject, null);
    return (q)c.a(paramString);
  }
  
  public List<Long> f(String paramString)
  {
    return b.a(paramString);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.scanner.d.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */