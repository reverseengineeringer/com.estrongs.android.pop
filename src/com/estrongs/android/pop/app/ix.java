package com.estrongs.android.pop.app;

class ix
  extends Thread
{
  ix(PopVideoPlayer paramPopVideoPlayer) {}
  
  public void run()
  {
    try
    {
      Thread.sleep(3000L);
      a.runOnUiThread(new iy(this));
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
 * Qualified Name:     com.estrongs.android.pop.app.ix
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */