package com.estrongs.a.b;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.estrongs.android.util.ak;

final class h
  extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    paramContext = paramIntent.getAction();
    if (paramContext.equals("android.net.conn.CONNECTIVITY_CHANGE")) {
      if (ak.b()) {
        d.d();
      }
    }
    do
    {
      return;
      d.e();
      return;
      if (paramContext.equals("android.intent.action.SCREEN_OFF"))
      {
        d.e();
        return;
      }
    } while ((!paramContext.equals("android.intent.action.SCREEN_ON")) || (!ak.b()));
    d.d();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.a.b.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */