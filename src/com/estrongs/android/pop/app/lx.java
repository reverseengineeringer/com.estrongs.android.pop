package com.estrongs.android.pop.app;

import android.os.Handler;
import com.estrongs.fs.c;
import com.estrongs.fs.d;

class lx
  extends Thread
{
  lx(StreamingMediaPlayer paramStreamingMediaPlayer) {}
  
  public void run()
  {
    long l1 = -1L;
    Object localObject = null;
    try
    {
      c localc = StreamingMediaPlayer.k(a).c(StreamingMediaPlayer.j(a));
      localObject = localc;
      long l2 = e;
      l1 = l2;
      localObject = localc;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        localException.printStackTrace();
      }
      StreamingMediaPlayer.a(a, l1);
      StreamingMediaPlayer.a(a, StreamingMediaPlayer.j(a), l1);
    }
    if (localObject == null)
    {
      StreamingMediaPlayer.i(a).post(new ly(this));
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.lx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */