package com.estrongs.android.pop.app;

import android.os.Handler;
import java.io.IOException;

class mq
  implements Runnable
{
  mq(StreamingMediaPlayer paramStreamingMediaPlayer, String paramString) {}
  
  public void run()
  {
    try
    {
      StreamingMediaPlayer.i(b).post(new mr(this));
      b.a(a);
      return;
    }
    catch (IOException localIOException)
    {
      StreamingMediaPlayer.i(b).post(new ms(this));
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.mq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */