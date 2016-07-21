package com.baidu.bottom.service;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.baidu.mobstat.ar;
import com.baidu.mobstat.bb;
import com.baidu.mobstat.ct;
import com.baidu.mobstat.m;

public class BottomReceiver
  extends BroadcastReceiver
{
  private static ct a;
  private static long b;
  private static long c;
  
  private void a(Context paramContext, Intent paramIntent)
  {
    paramIntent = paramIntent.getAction();
    long l = System.currentTimeMillis();
    if ((Math.abs(c - l) > 30000L) && (("android.net.wifi.STATE_CHANGE".equals(paramIntent)) || ("android.net.wifi.WIFI_STATE_CHANGED".equals(paramIntent)) || ("android.net.wifi.SCAN_RESULTS".equals(paramIntent))))
    {
      c = l;
      m.a(paramContext);
    }
  }
  
  private void b(Context paramContext, Intent paramIntent)
  {
    String str = paramIntent.getAction();
    if (("android.intent.action.PACKAGE_ADDED".equals(str)) || ("android.intent.action.PACKAGE_REMOVED".equals(str)) || ("android.intent.action.PACKAGE_REPLACED".equals(str)))
    {
      Object localObject = null;
      Uri localUri = paramIntent.getData();
      paramIntent = (Intent)localObject;
      if (localUri != null) {
        paramIntent = localUri.getSchemeSpecificPart();
      }
      if (!TextUtils.isEmpty(paramIntent)) {
        m.a(paramContext, str, paramIntent);
      }
    }
  }
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if (a != null) {
      bb.a("Bottom has alread analyzed.");
    }
    ct localct;
    do
    {
      return;
      localct = new ct();
    } while (!localct.a());
    a = localct;
    new ar(this, paramContext, paramIntent, localct).start();
  }
}

/* Location:
 * Qualified Name:     com.baidu.bottom.service.BottomReceiver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */