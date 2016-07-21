package com.facebook.ads.internal;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Handler;
import com.facebook.ads.AdError;
import com.facebook.ads.internal.adapters.InterstitialAdapter;
import com.facebook.ads.internal.adapters.InterstitialAdapterListener;
import com.facebook.ads.internal.dto.e;
import com.facebook.ads.internal.util.s;

class h$6
  implements InterstitialAdapterListener
{
  h$6(h paramh, Runnable paramRunnable) {}
  
  public void onInterstitialAdClicked(InterstitialAdapter paramInterstitialAdapter, String paramString, boolean paramBoolean)
  {
    h.d(b);
    b.a.b();
    if (!s.a(paramString)) {}
    for (int i = 1;; i = 0)
    {
      if ((paramBoolean) && (i != 0))
      {
        paramInterstitialAdapter = new Intent("android.intent.action.VIEW");
        if (!(ib).d instanceof Activity)) {
          paramInterstitialAdapter.addFlags(268435456);
        }
        paramInterstitialAdapter.setData(Uri.parse(paramString));
        ib).d.startActivity(paramInterstitialAdapter);
      }
      return;
    }
  }
  
  public void onInterstitialAdDismissed(InterstitialAdapter paramInterstitialAdapter)
  {
    h.d(b);
    b.a.e();
  }
  
  public void onInterstitialAdDisplayed(InterstitialAdapter paramInterstitialAdapter)
  {
    h.d(b);
    b.a.d();
  }
  
  public void onInterstitialAdLoaded(InterstitialAdapter paramInterstitialAdapter)
  {
    h.d(b);
    h.e(b).removeCallbacks(a);
    h.b(b, paramInterstitialAdapter);
    b.a.a();
    h.b(b);
  }
  
  public void onInterstitialError(InterstitialAdapter paramInterstitialAdapter, AdError paramAdError)
  {
    h.d(b);
    h.e(b).removeCallbacks(a);
    h.a(b, paramInterstitialAdapter);
    h.c(b);
  }
  
  public void onInterstitialLoggingImpression(InterstitialAdapter paramInterstitialAdapter)
  {
    h.d(b);
    b.a.c();
  }
}

/* Location:
 * Qualified Name:     com.facebook.ads.internal.h.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */