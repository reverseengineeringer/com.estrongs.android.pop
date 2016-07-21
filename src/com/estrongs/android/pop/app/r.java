package com.estrongs.android.pop.app;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

class r
  extends BroadcastReceiver
{
  r(AudioPlayerService paramAudioPlayerService) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if (("android.media.AUDIO_BECOMING_NOISY".equals(paramIntent.getAction())) && (AudioPlayerService.d(a))) {
      a.u();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.r
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */