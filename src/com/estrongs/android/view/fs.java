package com.estrongs.android.view;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import java.lang.reflect.Field;

class fs
  extends BroadcastReceiver
{
  fs(fp paramfp) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    paramContext = paramIntent.getAction();
    try
    {
      String str1 = (String)fp.e(a).getClass().getField("WIFI_AP_STATE_CHANGED_ACTION").get(fp.e(a));
      String str2 = (String)fp.e(a).getClass().getField("EXTRA_WIFI_AP_STATE").get(fp.e(a));
      int i = fp.e(a).getClass().getField("WIFI_AP_STATE_FAILED").getInt(fp.e(a));
      if (str1.equals(paramContext)) {
        fp.a(a, paramIntent.getIntExtra(str2, i));
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
 * Qualified Name:     com.estrongs.android.view.fs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */