package com.estrongs.android.pop.app;

class lu
  implements Runnable
{
  lu(lt paramlt) {}
  
  public void run()
  {
    while ((StreamingMediaPlayer.d(a.a)) && (!StreamingMediaPlayer.b(a.a)) && (StreamingMediaPlayer.a(a.a) < 262144L)) {
      try
      {
        Thread.sleep(200L);
      }
      catch (InterruptedException localInterruptedException) {}
    }
    if (StreamingMediaPlayer.d(a.a)) {
      StreamingMediaPlayer.a(a.a, false);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.lu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */