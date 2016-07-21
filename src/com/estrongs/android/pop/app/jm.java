package com.estrongs.android.pop.app;

class jm
  extends Thread
{
  jm(PopVideoPlayer paramPopVideoPlayer) {}
  
  public void run()
  {
    try
    {
      Thread.sleep(3000L);
      a.runOnUiThread(new jn(this));
      return;
    }
    catch (InterruptedException localInterruptedException)
    {
      for (;;)
      {
        localInterruptedException.printStackTrace();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.jm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */