package com.facebook.ads.internal.adapters;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.support.v4.content.r;
import com.facebook.ads.AdError;

public class d
  extends BroadcastReceiver
{
  private String a;
  private Context b;
  private InterstitialAdapterListener c;
  private InterstitialAdapter d;
  
  public d(Context paramContext, String paramString, InterstitialAdapter paramInterstitialAdapter, InterstitialAdapterListener paramInterstitialAdapterListener)
  {
    b = paramContext;
    a = paramString;
    c = paramInterstitialAdapterListener;
    d = paramInterstitialAdapter;
  }
  
  public void a()
  {
    IntentFilter localIntentFilter = new IntentFilter();
    localIntentFilter.addAction("com.facebook.ads.interstitial.impression.logged:" + a);
    localIntentFilter.addAction("com.facebook.ads.interstitial.displayed:" + a);
    localIntentFilter.addAction("com.facebook.ads.interstitial.dismissed:" + a);
    localIntentFilter.addAction("com.facebook.ads.interstitial.clicked:" + a);
    localIntentFilter.addAction("com.facebook.ads.interstitial.error:" + a);
    r.a(b).a(this, localIntentFilter);
  }
  
  public void b()
  {
    try
    {
      r.a(b).a(this);
      return;
    }
    catch (Exception localException) {}
  }
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    paramContext = paramIntent.getAction().split(":")[0];
    if ((c == null) || (paramContext == null)) {}
    do
    {
      return;
      if ("com.facebook.ads.interstitial.clicked".equals(paramContext))
      {
        paramContext = paramIntent.getStringExtra("com.facebook.ads.interstitial.ad.click.url");
        boolean bool = paramIntent.getBooleanExtra("com.facebook.ads.interstitial.ad.player.handles.click", true);
        c.onInterstitialAdClicked(d, paramContext, bool);
        return;
      }
      if ("com.facebook.ads.interstitial.dismissed".equals(paramContext))
      {
        c.onInterstitialAdDismissed(d);
        return;
      }
      if ("com.facebook.ads.interstitial.displayed".equals(paramContext))
      {
        c.onInterstitialAdDisplayed(d);
        return;
      }
      if ("com.facebook.ads.interstitial.impression.logged".equals(paramContext))
      {
        c.onInterstitialLoggingImpression(d);
        return;
      }
    } while (!"com.facebook.ads.interstitial.error".equals(paramContext));
    c.onInterstitialError(d, AdError.INTERNAL_ERROR);
  }
}

/* Location:
 * Qualified Name:     com.facebook.ads.internal.adapters.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */