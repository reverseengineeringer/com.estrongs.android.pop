package com.estrongs.android.pop.app;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

class fn
  extends BroadcastReceiver
{
  fn(PopAudioPlayer paramPopAudioPlayer) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    try
    {
      if ((!"Market".equalsIgnoreCase("Market")) && (a.a()))
      {
        if ((a.b != -1) && (a.a != -1) && (PopAudioPlayer.a(a) != null)) {
          PopAudioPlayer.b(a, a.b, a.a);
        }
        a.b = -1;
        a.a = -1;
      }
      return;
    }
    catch (Exception paramContext) {}
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.fn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */