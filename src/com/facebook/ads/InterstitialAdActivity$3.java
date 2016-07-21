package com.facebook.ads;

import android.view.View;
import android.widget.RelativeLayout;
import com.facebook.ads.internal.view.i.a;

class InterstitialAdActivity$3
  implements i.a
{
  InterstitialAdActivity$3(InterstitialAdActivity paramInterstitialAdActivity) {}
  
  public void a(View paramView)
  {
    InterstitialAdActivity.a(a).addView(paramView);
    if (InterstitialAdActivity.b(a) != null) {
      InterstitialAdActivity.a(a).addView(InterstitialAdActivity.b(a));
    }
  }
  
  public void a(String paramString)
  {
    InterstitialAdActivity.a(a, paramString);
  }
}

/* Location:
 * Qualified Name:     com.facebook.ads.InterstitialAdActivity.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */