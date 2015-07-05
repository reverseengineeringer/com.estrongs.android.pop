package com.estrongs.android.pop.bt;

import java.io.IOException;

class e
  extends Thread
{
  private final a b;
  
  public e(OBEXFtpServerService paramOBEXFtpServerService, a parama)
  {
    b = parama;
  }
  
  public boolean a()
  {
    return b.b();
  }
  
  public void b()
  {
    b.c();
  }
  
  public void run()
  {
    try
    {
      b.a();
      return;
    }
    catch (IOException localIOException) {}
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.bt.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */