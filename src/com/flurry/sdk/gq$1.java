package com.flurry.sdk;

import android.content.Context;
import android.media.AudioManager;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnPreparedListener;
import android.net.Uri;

class gq$1
  implements MediaPlayer.OnPreparedListener
{
  gq$1(gq paramgq) {}
  
  public void onPrepared(MediaPlayer paramMediaPlayer)
  {
    kg.a(5, gq.k(), "OnPreparedListener: " + gq.a(a));
    gq.a(a, gq.b.c);
    int i = gq.b(a);
    gq.a(a, paramMediaPlayer);
    gq.a(a, (AudioManager)a.getContext().getSystemService("audio"));
    gq.a(a, gq.c(a).getStreamVolume(3));
    if (gq.d(a))
    {
      a.a();
      if (i <= 3) {
        break label185;
      }
      a.seekTo(i);
    }
    for (;;)
    {
      if ((gq.e(a) != null) && (gq.a(a) != null)) {
        gq.e(a).a(gq.a(a).toString());
      }
      return;
      a.b();
      break;
      label185:
      a.seekTo(3);
    }
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.gq.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */