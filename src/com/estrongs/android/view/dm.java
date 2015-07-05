package com.estrongs.android.view;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import java.lang.reflect.Field;

class dm
  extends BroadcastReceiver
{
  dm(dj paramdj) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    paramContext = paramIntent.getAction();
    try
    {
      String str1 = (String)dj.d(a).getClass().getField("WIFI_AP_STATE_CHANGED_ACTION").get(dj.d(a));
      String str2 = (String)dj.d(a).getClass().getField("EXTRA_WIFI_AP_STATE").get(dj.d(a));
      int i = dj.d(a).getClass().getField("WIFI_AP_STATE_FAILED").getInt(dj.d(a));
      if (str1.equals(paramContext)) {
        dj.a(a, paramIntent.getIntExtra(str2, i));
      }
      return;
    }
    catch (Exception paramContext)
    {
      paramContext.printStackTrace();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.dm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */