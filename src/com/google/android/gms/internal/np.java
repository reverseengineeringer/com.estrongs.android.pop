package com.google.android.gms.internal;

import java.util.concurrent.Future;

@me
public abstract class np
{
  private final Runnable a = new nq(this);
  private volatile Thread b;
  
  public abstract void a();
  
  public abstract void b();
  
  public final Future g()
  {
    return nz.a(a);
  }
  
  public final void h()
  {
    nz.a(1, a);
  }
  
  public final void i()
  {
    b();
    if (b != null) {
      b.interrupt();
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.np
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */