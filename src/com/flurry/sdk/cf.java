package com.flurry.sdk;

import android.app.Activity;
import android.content.Context;
import android.graphics.Point;
import android.os.Bundle;
import com.flurry.android.AdCreative;
import com.flurry.android.AdNetworkView;
import com.millennialmedia.android.MMAdView;
import com.millennialmedia.android.MMSDK;
import com.millennialmedia.android.RequestListener;

public final class cf
  extends AdNetworkView
{
  private static final String a = cf.class.getSimpleName();
  private final String b;
  private final String c;
  private MMAdView d;
  private RequestListener e;
  
  public cf(Context paramContext, s params, AdCreative paramAdCreative, Bundle paramBundle)
  {
    super(paramContext, params, paramAdCreative);
    b = paramBundle.getString("com.flurry.millennial.MYAPID");
    c = paramBundle.getString("com.flurry.millennial.MYAPIDRECTANGLE");
    setFocusable(true);
  }
  
  RequestListener getAdListener()
  {
    return e;
  }
  
  MMAdView getAdView()
  {
    return d;
  }
  
  public void initLayout()
  {
    kg.a(3, a, "Millennial initLayout");
    int j = getAdCreative().getWidth();
    int k = getAdCreative().getHeight();
    int i = cg.a(new Point(j, k));
    if (-1 == i)
    {
      kg.a(3, a, "Could not find Millennial AdSize that matches size " + j + "x" + k);
      kg.a(3, a, "Could not load Millennial Ad");
      return;
    }
    Point localPoint = cg.a(i);
    if (localPoint == null)
    {
      kg.a(3, a, "Could not find Millennial AdSize that matches size " + j + "x" + k);
      kg.a(3, a, "Could not load Millennial Ad");
      return;
    }
    j = x;
    k = y;
    kg.a(3, a, "Determined Millennial AdSize as " + j + "x" + k);
    d = new MMAdView((Activity)getContext());
    setId(MMSDK.getDefaultAdId());
    d.setApid(b);
    if (2 == i) {
      d.setApid(c);
    }
    d.setWidth(j);
    d.setHeight(k);
    setHorizontalScrollBarEnabled(false);
    setVerticalScrollBarEnabled(false);
    setGravity(17);
    e = new cf.a(this, null);
    d.setListener(e);
    addView(d);
    d.getAd();
  }
  
  public void onActivityDestroy()
  {
    kg.a(3, a, "Millennial onDestroy");
    if (d != null) {
      d = null;
    }
    super.onActivityDestroy();
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.cf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */