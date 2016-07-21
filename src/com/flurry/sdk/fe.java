package com.flurry.sdk;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.text.TextUtils;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

public class fe
{
  private static final String a = fe.class.getSimpleName();
  private static final List<String> b = Arrays.asList(new String[] { "com.android.chrome", "org.mozilla.firefox", "mobi.mgeek.TunnyBrowser", "com.UCMobile.intl", "com.opera.mini.android", "com.jiubang.browser", "com.opera.browser", "com.uc.browser.en", "acr.browser.barebones", "com.boatbrowser.free", "com.mx.browser", "com.ilegendsoft.mercury", "gpc.myweb.hinet.net.PopupWeb", "mobi.browser.flashfox", "com.baidu.browser.inter", "com.sec.webbrowserminiapp", "com.android.browser", "com.android.vending" });
  
  public static Intent a(Context paramContext, String paramString)
  {
    if ((paramContext == null) || (TextUtils.isEmpty(paramString))) {
      return null;
    }
    Object localObject = paramContext.getPackageManager();
    paramContext = new Intent("android.intent.action.VIEW", Uri.parse(paramString));
    paramString = ((PackageManager)localObject).queryIntentActivities(paramContext, 65536);
    if ((paramString != null) && (paramString.size() > 0))
    {
      paramString = paramString.iterator();
      while (paramString.hasNext())
      {
        localObject = nextactivityInfo;
        if (a(packageName)) {
          return a((ActivityInfo)localObject, paramContext);
        }
      }
    }
    return null;
  }
  
  private static Intent a(ActivityInfo paramActivityInfo, Intent paramIntent)
  {
    kg.a(3, a, "Launching App in package: " + packageName);
    paramActivityInfo = new ComponentName(applicationInfo.packageName, name);
    paramIntent.addCategory("android.intent.category.LAUNCHER");
    paramIntent.setComponent(paramActivityInfo);
    return paramIntent;
  }
  
  private static boolean a(String paramString)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (!TextUtils.isEmpty(paramString)) {
      if (!"com.android.vending".equalsIgnoreCase(paramString))
      {
        bool1 = bool2;
        if (!"com.google.market".equalsIgnoreCase(paramString)) {}
      }
      else
      {
        bool1 = true;
      }
    }
    return bool1;
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.fe
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */