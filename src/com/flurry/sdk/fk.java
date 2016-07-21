package com.flurry.sdk;

import android.annotation.TargetApi;
import android.content.Context;
import android.os.Build.VERSION;
import android.text.TextUtils;
import android.webkit.WebSettings;
import android.webkit.WebView;

public final class fk
{
  public static String a(Context paramContext)
  {
    Object localObject;
    if (paramContext == null) {
      localObject = null;
    }
    String str;
    do
    {
      return (String)localObject;
      str = b(paramContext);
      localObject = str;
    } while (!TextUtils.isEmpty(str));
    return c(paramContext);
  }
  
  @TargetApi(17)
  static String b(Context paramContext)
  {
    if (paramContext == null) {}
    while (Build.VERSION.SDK_INT < 17) {
      return null;
    }
    return WebSettings.getDefaultUserAgent(paramContext);
  }
  
  static String c(Context paramContext)
  {
    if (paramContext == null) {
      return null;
    }
    return new WebView(paramContext).getSettings().getUserAgentString();
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.fk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */