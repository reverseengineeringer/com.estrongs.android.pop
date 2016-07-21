package com.dianxinos.library.notify.network;

import java.io.FileOutputStream;
import java.io.OutputStream;

public final class g
{
  private final i b;
  private boolean c;
  
  private g(d paramd, i parami)
  {
    b = parami;
  }
  
  public OutputStream a(int paramInt)
  {
    synchronized (a)
    {
      if (i.a(b) != this) {
        throw new IllegalStateException();
      }
    }
    h localh = new h(this, new FileOutputStream(b.b(paramInt)), null);
    return localh;
  }
  
  public void a(long paramLong)
  {
    if (c)
    {
      d.a(a, this, false, paramLong);
      a.c(i.c(b));
      return;
    }
    d.a(a, this, true, paramLong);
  }
  
  public boolean a()
  {
    return c;
  }
  
  public void b()
  {
    d.a(a, this, false, System.currentTimeMillis());
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.library.notify.network.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */