package com.estrongs.android.pop.app;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.telephony.TelephonyManager;

class p
  extends BroadcastReceiver
{
  p(AudioPlayerService paramAudioPlayerService) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    paramContext = paramIntent.getExtras().getString("state");
    if (paramContext.equals(TelephonyManager.EXTRA_STATE_RINGING)) {
      if ((AudioPlayerService.d(a)) && (!AudioPlayerService.e(a)))
      {
        a.a = true;
        a.u();
      }
    }
    do
    {
      do
      {
        return;
        if (!paramContext.equals(TelephonyManager.EXTRA_STATE_OFFHOOK)) {
          break;
        }
      } while ((!AudioPlayerService.d(a)) || (AudioPlayerService.e(a)));
      a.a = true;
      a.u();
      return;
    } while ((!paramContext.equals(TelephonyManager.EXTRA_STATE_IDLE)) || (!AudioPlayerService.d(a)) || (!AudioPlayerService.e(a)) || (!a.a));
    a.a = false;
    a.E();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.p
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */