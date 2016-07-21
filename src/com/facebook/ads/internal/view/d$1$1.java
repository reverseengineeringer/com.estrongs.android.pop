package com.facebook.ads.internal.view;

import android.media.MediaPlayer;
import android.media.MediaPlayer.OnSeekCompleteListener;
import com.facebook.ads.internal.util.o;

class d$1$1
  implements MediaPlayer.OnSeekCompleteListener
{
  d$1$1(d.1 param1) {}
  
  public void onSeekComplete(MediaPlayer paramMediaPlayer)
  {
    new o().execute(new String[] { d.a(a.b) });
  }
}

/* Location:
 * Qualified Name:     com.facebook.ads.internal.view.d.1.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */