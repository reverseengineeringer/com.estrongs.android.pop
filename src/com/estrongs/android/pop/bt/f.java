package com.estrongs.android.pop.bt;

import java.io.IOException;

class f
  extends Thread
{
  private final g a;
  
  public boolean a()
  {
    return a.b();
  }
  
  public void b()
  {
    a.c();
  }
  
  public void run()
  {
    try
    {
      a.a();
      return;
    }
    catch (IOException localIOException) {}
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.bt.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */