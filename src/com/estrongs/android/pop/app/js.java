package com.estrongs.android.pop.app;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

class js
  extends BroadcastReceiver
{
  js(PopVideoPlayer paramPopVideoPlayer) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if ((a.a()) && (a.c))
    {
      PopVideoPlayer.c(a);
      a.c = false;
    }
    a.j = true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.js
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */