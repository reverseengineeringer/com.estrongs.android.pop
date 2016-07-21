package com.facebook.ads;

import android.view.View;
import com.facebook.ads.internal.b;
import com.facebook.ads.internal.h;
import com.facebook.ads.internal.util.g;

class AdView$1
  extends com.facebook.ads.internal.a
{
  AdView$1(AdView paramAdView) {}
  
  public void a()
  {
    if (AdView.b(a) != null) {
      AdView.b(a).c();
    }
  }
  
  public void a(View paramView)
  {
    if (paramView == null) {
      throw new IllegalStateException("Cannot present null view");
    }
    AdView.a(a, true);
    AdView.a(a, paramView);
    a.removeAllViews();
    a.addView(AdView.c(a));
    if ((AdView.c(a) instanceof com.facebook.ads.internal.view.a)) {
      g.a(AdView.d(a), AdView.c(a), AdView.e(a));
    }
    if (AdView.a(a) != null) {
      AdView.a(a).onAdLoaded(a);
    }
  }
  
  public void a(b paramb)
  {
    if (AdView.a(a) != null) {
      AdView.a(a).onError(a, paramb.b());
    }
  }
  
  public void b()
  {
    if (AdView.a(a) != null) {
      AdView.a(a).onAdClicked(a);
    }
  }
  
  public void c()
  {
    if (AdView.f(a) != null) {
      AdView.f(a).onLoggingImpression(a);
    }
    if (((AdView.a(a) instanceof ImpressionListener)) && (AdView.a(a) != AdView.f(a))) {
      ((ImpressionListener)AdView.a(a)).onLoggingImpression(a);
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.ads.AdView.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */