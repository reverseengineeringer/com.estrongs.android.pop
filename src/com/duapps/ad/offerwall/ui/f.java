package com.duapps.ad.offerwall.ui;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import com.duapps.ad.offerwall.a;

class f
  extends BroadcastReceiver
{
  f(OfferWallAct paramOfferWallAct) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    paramContext = paramIntent.getAction();
    if ("android.intent.action.PACKAGE_ADDED".equals(paramContext)) {}
    while ((!"android.net.conn.CONNECTIVITY_CHANGE".equals(paramContext)) || ((ConnectivityManager)a.getSystemService("connectivity") == null) || (a.c() == 0) || (OfferWallAct.h(a))) {
      return;
    }
    OfferWallAct.g(a).a();
  }
}

/* Location:
 * Qualified Name:     com.duapps.ad.offerwall.ui.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */