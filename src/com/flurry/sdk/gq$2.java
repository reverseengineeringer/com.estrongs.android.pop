package com.flurry.sdk;

import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;
import android.net.Uri;

class gq$2
  implements MediaPlayer.OnCompletionListener
{
  gq$2(gq paramgq) {}
  
  public void onCompletion(MediaPlayer paramMediaPlayer)
  {
    gq.a(a, gq.b.f);
    if (gq.e(a) != null) {
      gq.e(a).b(gq.a(a).toString());
    }
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.gq.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */