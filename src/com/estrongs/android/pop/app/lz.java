package com.estrongs.android.pop.app;

import android.os.Handler;
import java.io.IOException;

class lz
  implements Runnable
{
  lz(StreamingMediaPlayer paramStreamingMediaPlayer, String paramString) {}
  
  public void run()
  {
    try
    {
      StreamingMediaPlayer.i(b).post(new ma(this));
      b.a(a);
      return;
    }
    catch (IOException localIOException)
    {
      StreamingMediaPlayer.i(b).post(new mb(this));
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.lz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */