package com.facebook.ads;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.view.View;
import android.widget.RelativeLayout;
import com.facebook.ads.internal.c;
import com.facebook.ads.internal.h;
import com.facebook.ads.internal.util.g;

public class AdView
  extends RelativeLayout
  implements Ad
{
  private static final c a = c.a;
  private final DisplayMetrics b;
  private final AdSize c;
  private final String d;
  private h e;
  private volatile boolean f;
  private AdListener g;
  private ImpressionListener h;
  private View i;
  private boolean j = false;
  
  public AdView(Context paramContext, String paramString, AdSize paramAdSize)
  {
    super(paramContext);
    if ((paramAdSize == null) || (paramAdSize == AdSize.INTERSTITIAL)) {
      throw new IllegalArgumentException("adSize");
    }
    b = getContext().getResources().getDisplayMetrics();
    c = paramAdSize;
    d = paramString;
    paramString = g.a(paramAdSize);
    e = new h(paramContext, d, paramString, paramAdSize, a, 1, false);
    e.a(new AdView.1(this));
  }
  
  public void destroy()
  {
    if (e != null)
    {
      e.d();
      e = null;
    }
    removeAllViews();
    i = null;
  }
  
  public void disableAutoRefresh()
  {
    if (e != null) {
      e.h();
    }
  }
  
  public void loadAd()
  {
    if (!f)
    {
      e.b();
      f = true;
    }
    while (e == null) {
      return;
    }
    e.g();
  }
  
  protected void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    if (i != null) {
      g.a(b, i, c);
    }
  }
  
  protected void onWindowVisibilityChanged(int paramInt)
  {
    super.onWindowVisibilityChanged(paramInt);
    if (e == null) {}
    do
    {
      return;
      if (paramInt == 0)
      {
        e.f();
        return;
      }
    } while (paramInt != 8);
    e.e();
  }
  
  public void setAdListener(AdListener paramAdListener)
  {
    g = paramAdListener;
  }
  
  @Deprecated
  public void setImpressionListener(ImpressionListener paramImpressionListener)
  {
    h = paramImpressionListener;
  }
}

/* Location:
 * Qualified Name:     com.facebook.ads.AdView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */