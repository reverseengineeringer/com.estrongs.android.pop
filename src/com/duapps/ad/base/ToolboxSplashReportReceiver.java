package com.duapps.ad.base;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.duapps.ad.entity.AdData;
import com.duapps.ad.stats.p;
import com.duapps.ad.stats.u;

public class ToolboxSplashReportReceiver
  extends BroadcastReceiver
{
  private static void a(Context paramContext, p paramp)
  {
    Intent localIntent = new Intent("android.intent.action.VIEW", Uri.parse(paramp.j()));
    localIntent.setFlags(268435456);
    localIntent.setPackage("com.android.vending");
    try
    {
      if (l.a()) {
        l.c("SplashReportReceiver", "Goto Play");
      }
      paramContext.startActivity(localIntent);
      u.e(paramContext, paramp);
      return;
    }
    catch (Exception localException)
    {
      if (l.a()) {
        l.a("SplashReportReceiver", "Goto Play failed:", localException);
      }
      b(paramContext, paramp);
    }
  }
  
  static boolean a(String paramString)
  {
    if ((paramString == null) || (paramString.trim().length() == 0)) {}
    while ((!paramString.startsWith("http://market.")) && (!paramString.startsWith("https://market.")) && (!paramString.startsWith("https://play.")) && (!paramString.startsWith("http://play.")) && (!paramString.startsWith("market:"))) {
      return false;
    }
    return true;
  }
  
  private static void b(Context paramContext, p paramp)
  {
    try
    {
      if (l.a()) {
        l.c("SplashReportReceiver", "Goto browser");
      }
      Intent localIntent = new Intent("android.intent.action.VIEW", Uri.parse(paramp.j()));
      localIntent.addFlags(268435456);
      paramContext.startActivity(localIntent);
      u.d(paramContext, paramp);
      return;
    }
    catch (Exception localException)
    {
      if (l.a()) {
        l.a("SplashReportReceiver", "Goto browser failed: ", localException);
      }
      u.c(paramContext, paramp);
    }
  }
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    Object localObject = paramIntent.getAction();
    if ("com.dianxinos.action.ACTION_TOOLBOX_SHOW".equals(localObject))
    {
      localObject = paramIntent.getStringExtra("pkg");
      str = paramIntent.getStringExtra("tag");
      paramIntent = paramIntent.getStringExtra("url");
      if ((TextUtils.isEmpty((CharSequence)localObject)) || (TextUtils.isEmpty(str))) {
        l.c("SplashReportReceiver", "Invalid data: pkg=" + (String)localObject + "; tag=" + str);
      }
    }
    while (!"com.dianxinos.action.ACTION_TOOLBOX_HANDLE_CLICK".equals(localObject))
    {
      return;
      u.h(paramContext, new p(AdData.a(paramContext, 63536, (String)localObject, (String)localObject, paramIntent)));
      return;
    }
    localObject = paramIntent.getStringExtra("pkg");
    String str = paramIntent.getStringExtra("tag");
    paramIntent = paramIntent.getStringExtra("url");
    if ((TextUtils.isEmpty((CharSequence)localObject)) || (TextUtils.isEmpty(str)) || (TextUtils.isEmpty(paramIntent)))
    {
      l.c("SplashReportReceiver", "Invalid data: pkg=" + (String)localObject + "; tag=" + str + ";url=" + paramIntent);
      return;
    }
    localObject = new p(AdData.a(paramContext, 63536, (String)localObject, (String)localObject, paramIntent));
    u.a(paramContext, (p)localObject);
    if (a(paramIntent))
    {
      a(paramContext, (p)localObject);
      return;
    }
    b(paramContext, (p)localObject);
  }
}

/* Location:
 * Qualified Name:     com.duapps.ad.base.ToolboxSplashReportReceiver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */