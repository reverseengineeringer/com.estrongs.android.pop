package com.estrongs.android.pop.app;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import com.estrongs.android.pop.app.a.ao;

class j
  extends BroadcastReceiver
{
  j(AudioPlayerService paramAudioPlayerService) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    paramContext = paramIntent.getAction();
    Log.e("test", "receive notification action : " + paramContext);
    if ("com.estrongs.action.audio.control.preview".equals(paramContext)) {
      a.v();
    }
    do
    {
      return;
      if ("com.estrongs.action.audio.control.play".equals(paramContext))
      {
        a.y();
        return;
      }
      if ("com.estrongs.action.audio.control.next".equals(paramContext))
      {
        a.x();
        return;
      }
      if ("com.estrongs.action.audio.control.close".equals(paramContext))
      {
        a.o();
        a.z();
        ao.k();
        return;
      }
      if ("com.android.music.musicservicecommand.pause".endsWith(paramContext))
      {
        a.u();
        return;
      }
    } while ((!"com.android.music.musicservicecommand".endsWith(paramContext)) || (!"pause".equals(paramIntent.getStringExtra("command"))));
    a.u();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */