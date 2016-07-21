package com.flurry.sdk;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import com.millennialmedia.android.MMInterstitial;
import com.millennialmedia.android.RequestListener;

public final class ch
  extends bi
{
  private static final String b = ch.class.getSimpleName();
  private boolean c;
  private final String d;
  private MMInterstitial e;
  private RequestListener f;
  
  public ch(Context paramContext, s params, Bundle paramBundle)
  {
    super(paramContext, params);
    d = paramBundle.getString("com.flurry.millennial.MYAPIDINTERSTITIAL");
  }
  
  public void a()
  {
    e = new MMInterstitial((Activity)c());
    e.setApid(d);
    f = new ch.a(this, null);
    e.setListener(f);
    e.fetch();
    c = e.display();
    if (c)
    {
      kg.a(3, b, "Millennial MMAdView Interstitial ad displayed immediately:" + System.currentTimeMillis() + " " + c);
      return;
    }
    kg.a(3, b, "Millennial MMAdView Interstitial ad did not display immediately:" + System.currentTimeMillis() + " " + c);
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.ch
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */