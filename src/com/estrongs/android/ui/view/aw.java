package com.estrongs.android.ui.view;

class aw
  extends Thread
{
  public int a = -1;
  public int b = 0;
  private boolean c = false;
  private Object d = new Object();
  private ESVideoView e = null;
  
  public aw(ESVideoView paramESVideoView)
  {
    e = paramESVideoView;
  }
  
  public void a(int paramInt)
  {
    synchronized (d)
    {
      a = paramInt;
      b = a;
      d.notify();
      return;
    }
  }
  
  public void destroy()
  {
    c = true;
    synchronized (d)
    {
      d.notify();
      return;
    }
  }
  
  public void run()
  {
    while (!c)
    {
      if (a < 0) {
        try
        {
          synchronized (d)
          {
            d.wait();
          }
        }
        catch (InterruptedException localInterruptedException)
        {
          for (;;)
          {
            localInterruptedException.printStackTrace();
          }
        }
      }
      synchronized (d)
      {
        int i = a;
        a = -1;
        e.a(i);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.view.aw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */