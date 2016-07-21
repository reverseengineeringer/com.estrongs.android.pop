package com.flurry.sdk;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import com.flurry.android.FlurryFullscreenTakeoverActivity;
import com.flurry.android.FlurryShareActivity;

public class fi
{
  private static final String a = fi.class.getSimpleName();
  
  private static boolean a(Context paramContext)
  {
    if (paramContext.getPackageManager().resolveActivity(new Intent(paramContext, FlurryShareActivity.class), 0) == null)
    {
      kg.b(a, "com.flurry.android.FlurryShareActivity must be declared in manifest.");
      return false;
    }
    return true;
  }
  
  private static boolean a(Context paramContext, Intent paramIntent)
  {
    if ((paramContext == null) || (paramIntent == null)) {
      return false;
    }
    try
    {
      if (!(paramContext instanceof Activity)) {
        paramIntent.addFlags(276824064);
      }
      paramContext.startActivity(paramIntent);
      return true;
    }
    catch (ActivityNotFoundException paramContext) {}
    return false;
  }
  
  public static boolean a(Context paramContext, Bundle paramBundle)
  {
    if (paramContext == null) {
      return false;
    }
    int i = paramBundle.getInt("com.flurry.android.post_id", -1);
    if (!jl.a().c())
    {
      kg.a(5, a, "There is no network connectivity. Not doing post");
      ec.a(ed.b, i, "Network not available.");
      return false;
    }
    if (!a(paramContext))
    {
      ec.a(ed.o, i, "FlurryShareActivity is missing. Please declare it in AndroidManifest.xml");
      return false;
    }
    Intent localIntent = new Intent(paramContext, FlurryShareActivity.class);
    localIntent.putExtra("com.flurry.android.tumblr_post", true);
    localIntent.putExtras(paramBundle);
    return a(paramContext, localIntent);
  }
  
  public static boolean a(Context paramContext, s params, String paramString, boolean paramBoolean1, boolean paramBoolean2)
  {
    if (paramContext == null) {
      return false;
    }
    Intent localIntent = new Intent(paramContext, FlurryFullscreenTakeoverActivity.class);
    localIntent.putExtra("ad_object_legacy", params instanceof v);
    localIntent.putExtra("ad_object_id", params.e());
    localIntent.putExtra("url", paramString);
    localIntent.putExtra("close_ad", paramBoolean1);
    localIntent.putExtra("send_y_cookies", paramBoolean2);
    return a(paramContext, localIntent);
  }
  
  public static boolean a(Context paramContext, s params, boolean paramBoolean1, boolean paramBoolean2)
  {
    if (paramContext == null) {
      return false;
    }
    return a(paramContext, params, null, paramBoolean1, paramBoolean2);
  }
  
  public static boolean a(Context paramContext, String paramString)
  {
    if ((paramContext == null) || (TextUtils.isEmpty(paramString))) {}
    while (!ma.d(paramString)) {
      return false;
    }
    return a(paramContext, new Intent("android.intent.action.VIEW").setData(Uri.parse(paramString)));
  }
  
  public static boolean a(Context paramContext, String paramString, s params, boolean paramBoolean)
  {
    Intent localIntent = js.a().e().getLaunchIntentForPackage(paramString);
    if ((localIntent != null) && (lt.a(localIntent))) {
      return a(paramContext, localIntent);
    }
    return a(paramContext, "https://play.google.com/store/apps/details?id=" + paramString, false, params, true, paramBoolean);
  }
  
  public static boolean a(Context paramContext, String paramString, boolean paramBoolean)
  {
    if ((paramContext == null) || (TextUtils.isEmpty(paramString))) {
      return false;
    }
    paramString = new Intent("android.intent.action.VIEW").setData(Uri.parse(paramString));
    if (paramBoolean)
    {
      Bundle localBundle = new Bundle();
      localBundle.putString("Cookie", i.a().h().d());
      localBundle.putString("Cookie", i.a().h().e());
      paramString.putExtra("com.android.browser.headers", localBundle);
    }
    return a(paramContext, paramString);
  }
  
  public static boolean a(Context paramContext, String paramString, boolean paramBoolean1, s params, boolean paramBoolean2, boolean paramBoolean3)
  {
    boolean bool2 = false;
    if (ma.d(paramString)) {
      bool2 = a(paramContext, paramString);
    }
    boolean bool1 = bool2;
    if (!bool2)
    {
      bool1 = bool2;
      if (ma.f(paramString)) {
        bool1 = b(paramContext, paramString);
      }
    }
    bool2 = bool1;
    if (!bool1)
    {
      if (paramBoolean1) {
        bool2 = a(paramContext, paramString, paramBoolean3);
      }
    }
    else {
      return bool2;
    }
    return a(paramContext, params, paramString, paramBoolean2, paramBoolean3);
  }
  
  public static boolean b(Context paramContext, String paramString)
  {
    paramString = fe.a(paramContext, paramString);
    return (paramString != null) && (a(paramContext, paramString));
  }
  
  public static boolean c(Context paramContext, String paramString)
  {
    paramString = fe.a(paramContext, paramString);
    return (paramString != null) && (lt.a(paramString)) && (a(paramContext, paramString));
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.fi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */