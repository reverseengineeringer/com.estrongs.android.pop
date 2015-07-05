package com.estrongs.android.pop.app.service;

import android.os.Handler;

public abstract class j
  implements Runnable
{
  private Handler a;
  private long b;
  
  public j(Handler paramHandler)
  {
    a = paramHandler;
  }
  
  public abstract void a();
  
  public void a(long paramLong)
  {
    a.removeCallbacks(this);
    if (paramLong != -1L) {
      a.postDelayed(this, paramLong);
    }
  }
  
  public boolean b()
  {
    return true;
  }
  
  protected int c()
  {
    return 1800000;
  }
  
  public void d()
  {
    a.removeCallbacks(this);
    a.post(this);
  }
  
  public void run()
  {
    if (b()) {
      a();
    }
    b = System.currentTimeMillis();
    if (c() != -1) {
      a.postDelayed(this, c());
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.service.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */