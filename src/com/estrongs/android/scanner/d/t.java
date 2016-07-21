package com.estrongs.android.scanner.d;

import android.content.ContentValues;
import com.estrongs.android.scanner.a.c;
import com.estrongs.android.util.l;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

public abstract class t
{
  protected String a = getClass().getSimpleName();
  protected final a b = a.a();
  private final af c = af.a();
  private boolean d = true;
  private List<c> e = new ArrayList(500);
  private List<c> f = new ArrayList(500);
  private List<Long> g = new ArrayList(500);
  private AtomicInteger h = new AtomicInteger(0);
  
  public long a(c paramc)
  {
    if (paramc != null) {
      a(new x(this, paramc));
    }
    return 0L;
  }
  
  protected abstract String a();
  
  public void a(long paramLong)
  {
    a(new v(this, Long.valueOf(paramLong)));
    l.b(a, "add to remove:" + paramLong);
  }
  
  protected final void a(Runnable paramRunnable)
  {
    c.a(paramRunnable);
  }
  
  public void a(String paramString, ContentValues paramContentValues)
  {
    a(new u(this, paramContentValues, paramString));
    l.b(a, "send update:" + paramString);
  }
  
  protected abstract void b();
  
  public void b(c paramc)
  {
    if (paramc != null)
    {
      a(new y(this, paramc));
      l.b(a, "add to update:" + paramc + ", row id:" + paramc.c());
    }
  }
  
  protected void b(w paramw)
  {
    b.b();
    if (!f.isEmpty())
    {
      l.c(a, "flush modify entities into db:" + a());
      b.d(a(), f);
      f.clear();
    }
    if (!g.isEmpty())
    {
      l.c(a, "flush trash entities from db:" + a());
      b.a(a(), g);
      g.clear();
    }
    if (!e.isEmpty())
    {
      h.addAndGet(e.size());
      l.e(a, "flush number new into db:" + h.get());
      l.c(a, "flush new entities into db:" + a());
      b.c(a(), e);
      e.clear();
      long l = System.currentTimeMillis();
      l.e(a, "insert time into db:" + (l - com.estrongs.android.scanner.af.a) + " ms");
    }
    if (paramw != null) {
      paramw.a();
    }
    b.close();
  }
  
  public final void d()
  {
    b.b();
    d = b.c();
    try
    {
      long l1 = System.currentTimeMillis();
      b();
      long l2 = System.currentTimeMillis();
      l.e(a, "Expired: " + (l2 - l1) + " ms to load file cache");
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
      return;
    }
    finally
    {
      b.close();
    }
  }
  
  public boolean e()
  {
    return d;
  }
  
  public void f()
  {
    b.a(true);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.scanner.d.t
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */