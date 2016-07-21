package com.flurry.sdk;

import android.media.MediaPlayer;
import android.media.MediaPlayer.OnErrorListener;
import android.net.Uri;

class gq$3
  implements MediaPlayer.OnErrorListener
{
  gq$3(gq paramgq) {}
  
  public boolean onError(MediaPlayer paramMediaPlayer, int paramInt1, int paramInt2)
  {
    kg.a(5, gq.k(), "Error: " + gq.a(a) + " framework_err " + paramInt1 + " impl_err " + paramInt2);
    gq.a(a, gq.b.h);
    if (gq.e(a) != null) {
      gq.e(a).a(gq.a(a).toString(), ba.q.a(), paramInt1, paramInt2);
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.gq.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */