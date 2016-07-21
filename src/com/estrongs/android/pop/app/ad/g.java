package com.estrongs.android.pop.app.ad;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import com.estrongs.android.util.bk;

class g
  extends BroadcastReceiver
{
  g(a parama) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if (("android.intent.action.SCREEN_ON".equals(paramIntent.getAction())) && (a.b)) {
      bk.n().postDelayed(new h(this), 3000L);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.ad.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */