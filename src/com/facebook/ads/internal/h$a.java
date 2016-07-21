package com.facebook.ads.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

class h$a
  extends BroadcastReceiver
{
  private h$a(h paramh) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    paramContext = paramIntent.getAction();
    if ("android.intent.action.SCREEN_OFF".equals(paramContext)) {
      h.h(a);
    }
    while (!"android.intent.action.SCREEN_ON".equals(paramContext)) {
      return;
    }
    h.b(a);
  }
}

/* Location:
 * Qualified Name:     com.facebook.ads.internal.h.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */