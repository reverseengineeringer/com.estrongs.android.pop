package com.estrongs.android.pop.app;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.estrongs.android.pop.app.c.m;
import com.estrongs.android.util.l;

class n
  extends BroadcastReceiver
{
  n(AudioPlayerService paramAudioPlayerService) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    paramContext = paramIntent.getAction();
    l.e("test", "receive notification action : " + paramContext);
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
        m.k();
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
 * Qualified Name:     com.estrongs.android.pop.app.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */