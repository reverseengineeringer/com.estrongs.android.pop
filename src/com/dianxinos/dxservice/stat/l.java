package com.dianxinos.dxservice.stat;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.util.Log;

class l
  extends BroadcastReceiver
{
  l(k paramk) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    paramIntent = (ConnectivityManager)k.a(a).getSystemService("connectivity");
    try
    {
      paramIntent = paramIntent.getActiveNetworkInfo();
      if ((paramIntent != null) && (paramIntent.isConnectedOrConnecting()))
      {
        a.a(k.a(a)).a();
        if (paramIntent.getType() == 0)
        {
          if (com.dianxinos.dxservice.a.c.d) {
            Log.i("stat.ConnectivityChangeListener", "Mobile data connection!");
          }
          if (aa.a(paramContext)) {
            com.dianxinos.dxservice.core.c.a(paramContext).a(5);
          }
          return;
        }
      }
    }
    catch (Exception paramIntent)
    {
      do
      {
        do
        {
          for (;;)
          {
            paramIntent = null;
          }
        } while (paramIntent.getType() != 1);
        if (com.dianxinos.dxservice.a.c.d) {
          Log.i("stat.ConnectivityChangeListener", "Wifi data connection!");
        }
      } while (!aa.a(paramContext));
      com.dianxinos.dxservice.core.c.a(paramContext).a(4);
      return;
    }
    a.a(k.a(a)).b();
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.dxservice.stat.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */