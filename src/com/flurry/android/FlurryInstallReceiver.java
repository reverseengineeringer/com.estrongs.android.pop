package com.flurry.android;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.flurry.sdk.hm;
import com.flurry.sdk.kg;
import com.flurry.sdk.lt;

public final class FlurryInstallReceiver
  extends BroadcastReceiver
{
  static final String a = FlurryInstallReceiver.class.getSimpleName();
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    kg.a(4, a, "Received an Install nofication of " + paramIntent.getAction());
    String str = paramIntent.getExtras().getString("referrer");
    kg.a(4, a, "Received an Install referrer of " + str);
    if ((str == null) || (!"com.android.vending.INSTALL_REFERRER".equals(paramIntent.getAction())))
    {
      kg.a(5, a, "referrer is null");
      return;
    }
    paramIntent = str;
    if (!str.contains("="))
    {
      kg.a(4, a, "referrer is before decoding: " + str);
      paramIntent = lt.d(str);
      kg.a(4, a, "referrer is: " + paramIntent);
    }
    new hm(paramContext).a(paramIntent);
  }
}

/* Location:
 * Qualified Name:     com.flurry.android.FlurryInstallReceiver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */