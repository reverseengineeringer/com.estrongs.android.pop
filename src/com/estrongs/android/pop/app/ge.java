package com.estrongs.android.pop.app;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.estrongs.android.pop.view.a;

class ge
  extends BroadcastReceiver
{
  ge(PopAudioPlayer paramPopAudioPlayer) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    try
    {
      if ((!a.a.equalsIgnoreCase("Market")) && (a.d()))
      {
        if ((a.c != -1) && (a.b != -1) && (PopAudioPlayer.a(a) != null)) {
          PopAudioPlayer.b(a, a.c, a.b);
        }
        a.c = -1;
        a.b = -1;
      }
      return;
    }
    catch (Exception paramContext) {}
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.ge
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */