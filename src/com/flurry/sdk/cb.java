package com.flurry.sdk;

import android.app.Activity;
import android.content.Context;
import android.graphics.Point;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.widget.LinearLayout.LayoutParams;
import com.flurry.android.AdCreative;
import com.flurry.android.AdNetworkView;
import com.inmobi.commons.InMobi;
import com.inmobi.monetization.IMBanner;
import com.inmobi.monetization.IMBannerListener;

public final class cb
  extends AdNetworkView
{
  private static final String a = cb.class.getSimpleName();
  private final String b;
  private IMBanner c;
  private IMBannerListener d;
  
  cb(Context paramContext, s params, AdCreative paramAdCreative, Bundle paramBundle)
  {
    super(paramContext, params, paramAdCreative);
    b = paramBundle.getString("com.flurry.inmobi.MY_APP_ID");
    InMobi.initialize((Activity)getContext(), b);
    setFocusable(true);
  }
  
  IMBannerListener getAdListener()
  {
    return d;
  }
  
  IMBanner getAdView()
  {
    return c;
  }
  
  public void initLayout()
  {
    kg.a(3, a, "InMobi initLayout");
    int k = getAdCreative().getWidth();
    int m = getAdCreative().getHeight();
    int n = lr.i();
    int j = lr.h();
    int i = j;
    if (k > 0)
    {
      if (k > j) {
        i = j;
      }
    }
    else
    {
      j = n;
      if (m > 0) {
        if (m <= n) {
          break label280;
        }
      }
    }
    label280:
    for (j = n;; j = m)
    {
      n = cc.a(new Point(i, j));
      if (-1 == n) {
        break label286;
      }
      c = new IMBanner((Activity)getContext(), b, n);
      j = 320;
      i = 50;
      Point localPoint = cc.a(n);
      if (localPoint != null)
      {
        j = x;
        i = y;
      }
      kg.a(3, a, "Determined InMobi AdSize as " + j + "x" + i);
      float f = ddensity;
      j = (int)(j * f + 0.5F);
      i = (int)(i * f + 0.5F);
      c.setLayoutParams(new LinearLayout.LayoutParams(j, i));
      d = new cb.a(this, null);
      c.setIMBannerListener(d);
      setGravity(17);
      addView(c);
      c.setRefreshInterval(-1);
      c.loadBanner();
      return;
      i = k;
      break;
    }
    label286:
    kg.a(3, a, "Could not find InMobi AdSize that matches size " + k + "x" + m);
    kg.a(3, a, "Could not load InMobi Ad");
  }
  
  public void onActivityDestroy()
  {
    kg.a(3, a, "InMobi onDestroy");
    if (c != null)
    {
      c.destroy();
      c = null;
    }
    super.onActivityDestroy();
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.cb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */