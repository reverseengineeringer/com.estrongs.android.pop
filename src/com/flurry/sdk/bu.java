package com.flurry.sdk;

import android.content.Context;
import android.os.Bundle;
import com.facebook.ads.Ad;
import com.facebook.ads.AdError;
import com.facebook.ads.AdListener;
import com.facebook.ads.AdSettings;
import com.facebook.ads.AdSize;
import com.facebook.ads.AdView;
import com.flurry.android.AdCreative;
import com.flurry.android.AdNetworkView;
import java.util.Collections;

public class bu
  extends AdNetworkView
  implements AdListener
{
  private static final String a = bu.class.getSimpleName();
  private final String b;
  private final String c;
  private final boolean d;
  private AdView e;
  
  public bu(Context paramContext, s params, AdCreative paramAdCreative, Bundle paramBundle)
  {
    super(paramContext, params, paramAdCreative);
    b = paramBundle.getString("com.flurry.fan.MY_APP_ID");
    c = paramBundle.getString("com.flurry.fan.MYTEST_AD_DEVICE_ID");
    d = paramBundle.getBoolean("com.flurry.fan.test");
    setFocusable(true);
  }
  
  public void initLayout()
  {
    kg.a(4, a, "FAN banner initLayout.");
    e = new AdView(getContext(), b, AdSize.BANNER_320_50);
    e.setAdListener(this);
    addView(e);
    if (d) {
      AdSettings.addTestDevice(c);
    }
    e.loadAd();
  }
  
  public void onActivityDestroy()
  {
    kg.a(4, a, "FAN banner onDestroy.");
    if (e != null)
    {
      e.destroy();
      e = null;
    }
    super.onActivityDestroy();
  }
  
  public void onAdClicked(Ad paramAd)
  {
    kg.a(4, a, "FAN banner onAdClicked.");
    onAdClicked(Collections.emptyMap());
  }
  
  public void onAdLoaded(Ad paramAd)
  {
    onAdShown(Collections.emptyMap());
    kg.a(4, a, "FAN banner onAdLoaded.");
  }
  
  public void onError(Ad paramAd, AdError paramAdError)
  {
    onRenderFailed(Collections.emptyMap());
    if (e != null)
    {
      e.destroy();
      e = null;
    }
    kg.a(6, a, "FAN banner onError.");
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.bu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */