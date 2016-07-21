package com.google.android.gms.ads.internal.overlay;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.util.client.b;
import com.google.android.gms.internal.me;

@me
public class a
{
  public boolean a(Context paramContext, AdLauncherIntentInfoParcel paramAdLauncherIntentInfoParcel, w paramw)
  {
    if (paramAdLauncherIntentInfoParcel == null)
    {
      b.e("No intent data for launcher overlay.");
      return false;
    }
    Intent localIntent = new Intent();
    if (TextUtils.isEmpty(d))
    {
      b.e("Open GMSG did not contain a URL.");
      return false;
    }
    if (!TextUtils.isEmpty(e)) {
      localIntent.setDataAndType(Uri.parse(d), e);
    }
    String[] arrayOfString;
    for (;;)
    {
      localIntent.setAction("android.intent.action.VIEW");
      if (!TextUtils.isEmpty(f)) {
        localIntent.setPackage(f);
      }
      if (TextUtils.isEmpty(g)) {
        break label178;
      }
      arrayOfString = g.split("/", 2);
      if (arrayOfString.length >= 2) {
        break;
      }
      b.e("Could not parse component name from open GMSG: " + g);
      return false;
      localIntent.setData(Uri.parse(d));
    }
    localIntent.setClassName(arrayOfString[0], arrayOfString[1]);
    label178:
    paramAdLauncherIntentInfoParcel = h;
    if (!TextUtils.isEmpty(paramAdLauncherIntentInfoParcel)) {}
    try
    {
      i = Integer.parseInt(paramAdLauncherIntentInfoParcel);
      localIntent.addFlags(i);
    }
    catch (NumberFormatException paramAdLauncherIntentInfoParcel)
    {
      for (;;)
      {
        try
        {
          b.d("Launching an intent: " + localIntent.toURI());
          paramContext.startActivity(localIntent);
          if (paramw != null) {
            paramw.m();
          }
          return true;
        }
        catch (ActivityNotFoundException paramContext)
        {
          int i;
          b.e(paramContext.getMessage());
        }
        paramAdLauncherIntentInfoParcel = paramAdLauncherIntentInfoParcel;
        b.e("Could not parse intent flags.");
        i = 0;
      }
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.overlay.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */