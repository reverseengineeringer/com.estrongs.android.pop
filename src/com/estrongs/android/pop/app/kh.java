package com.estrongs.android.pop.app;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

class kh
  extends BroadcastReceiver
{
  kh(PopVideoPlayer paramPopVideoPlayer) {}
  
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
 * Qualified Name:     com.estrongs.android.pop.app.kh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */