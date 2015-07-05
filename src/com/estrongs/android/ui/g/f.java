package com.estrongs.android.ui.g;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;

class f
  extends BroadcastReceiver
{
  private Context b;
  
  public f(c paramc, Context paramContext)
  {
    b = paramContext;
  }
  
  public void a()
  {
    try
    {
      b.unregisterReceiver(this);
      return;
    }
    catch (Exception localException) {}
  }
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if (paramIntent.getAction().equals("android.intent.action.PACKAGE_ADDED"))
    {
      paramContext = paramIntent.getData().getEncodedSchemeSpecificPart();
      if (c.d(a).equals(paramContext)) {
        new g(this).start();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.g.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */