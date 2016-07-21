package com.facebook.ads;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.support.v4.content.r;
import com.facebook.ads.internal.adapters.o;
import com.facebook.ads.internal.adapters.p;
import java.util.HashMap;
import java.util.Map;

class NativeAd$b
  extends BroadcastReceiver
{
  private boolean b;
  
  private NativeAd$b(NativeAd paramNativeAd) {}
  
  public void a()
  {
    IntentFilter localIntentFilter = new IntentFilter();
    localIntentFilter.addAction("com.facebook.ads.native.impression:" + NativeAd.e(a).o());
    localIntentFilter.addAction("com.facebook.ads.native.click:" + NativeAd.e(a).o());
    r.a(NativeAd.c(a)).a(this, localIntentFilter);
    b = true;
  }
  
  public void b()
  {
    if (!b) {
      return;
    }
    try
    {
      r.a(NativeAd.c(a)).a(this);
      return;
    }
    catch (Exception localException) {}
  }
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    paramContext = paramIntent.getAction().split(":")[0];
    if ("com.facebook.ads.native.impression".equals(paramContext)) {
      NativeAd.g(a).a();
    }
    while (!"com.facebook.ads.native.click".equals(paramContext)) {
      return;
    }
    paramContext = new HashMap();
    paramContext.put("mil", Boolean.valueOf(true));
    NativeAd.e(a).b(paramContext);
  }
}

/* Location:
 * Qualified Name:     com.facebook.ads.NativeAd.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */