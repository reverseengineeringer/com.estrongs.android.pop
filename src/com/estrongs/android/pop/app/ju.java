package com.estrongs.android.pop.app;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

class ju
  extends BroadcastReceiver
{
  ju(PopVideoPlayer paramPopVideoPlayer) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    try
    {
      PopVideoPlayer.m(a);
      a.finish();
      return;
    }
    catch (Exception paramContext) {}
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.ju
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */