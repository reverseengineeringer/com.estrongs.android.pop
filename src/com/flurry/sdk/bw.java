package com.flurry.sdk;

import android.content.Context;
import android.os.Bundle;
import com.facebook.ads.Ad;
import com.facebook.ads.AdError;
import com.facebook.ads.AdSettings;
import com.facebook.ads.InterstitialAd;
import com.facebook.ads.InterstitialAdListener;
import java.util.Collections;

public class bw
  extends bi
  implements InterstitialAdListener
{
  private static final String b = bw.class.getSimpleName();
  private final String c;
  private final String d;
  private final boolean e;
  private InterstitialAd f;
  
  public bw(Context paramContext, s params, Bundle paramBundle)
  {
    super(paramContext, params);
    c = paramBundle.getString("com.flurry.fan.MY_APP_ID");
    d = paramBundle.getString("com.flurry.fan.MYTEST_AD_DEVICE_ID");
    e = paramBundle.getBoolean("com.flurry.fan.test");
  }
  
  public void a()
  {
    Context localContext = c();
    if (e) {
      AdSettings.addTestDevice(d);
    }
    f = new InterstitialAd(localContext, c);
    f.setAdListener(this);
    f.loadAd();
  }
  
  public void onAdClicked(Ad paramAd)
  {
    kg.a(4, b, "FAN interstitial onAdClicked.");
    b(Collections.emptyMap());
  }
  
  public void onAdLoaded(Ad paramAd)
  {
    kg.a(4, b, "FAN interstitial onAdLoaded.");
    if ((f != null) && (f.isAdLoaded())) {
      f.show();
    }
  }
  
  public void onError(Ad paramAd, AdError paramAdError)
  {
    kg.a(4, b, "FAN interstitial onError.");
    d(Collections.emptyMap());
    f.destroy();
    f = null;
  }
  
  public void onInterstitialDismissed(Ad paramAd)
  {
    kg.a(4, b, "FAN interstitial onInterstitialDismissed.");
    c(Collections.emptyMap());
  }
  
  public void onInterstitialDisplayed(Ad paramAd)
  {
    kg.a(4, b, "FAN interstitial onInterstitialDisplayed.");
    a(Collections.emptyMap());
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.bw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */