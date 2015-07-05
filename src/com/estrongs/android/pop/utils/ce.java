package com.estrongs.android.pop.utils;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.estrongs.a.a;

final class ce
  extends BroadcastReceiver
{
  ce(a parama) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if (paramIntent.getAction().equals("android.intent.action.MEDIA_SCANNER_FINISHED")) {
      a.forceResume();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.utils.ce
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */