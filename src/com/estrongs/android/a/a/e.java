package com.estrongs.android.a.a;

import com.estrongs.android.a.ai;
import com.estrongs.android.a.aj;
import com.estrongs.android.a.ak;
import com.estrongs.android.a.b.q;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;

public abstract class e
  implements o
{
  private AtomicInteger a = new AtomicInteger(0);
  private AtomicInteger b = new AtomicInteger(0);
  private AtomicLong c = new AtomicLong(0L);
  
  protected abstract q a(ai paramai);
  
  public void a() {}
  
  public void a(List<String> paramList) {}
  
  public void b() {}
  
  protected abstract boolean b(ai paramai);
  
  public final int c()
  {
    return b.get();
  }
  
  public final q c(ai paramai)
  {
    if (paramai == null) {}
    while (!b(paramai)) {
      return null;
    }
    q localq = a(paramai);
    if ((paramai instanceof ak))
    {
      b.incrementAndGet();
      return localq;
    }
    paramai = (aj)paramai;
    a.incrementAndGet();
    c.addAndGet(paramai.c());
    return localq;
  }
  
  public final int d()
  {
    return a.get();
  }
  
  public final long e()
  {
    return c.get();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.a.a.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */