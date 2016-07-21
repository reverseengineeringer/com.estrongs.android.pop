package com.flurry.android;

import com.flurry.sdk.gt.a;
import com.flurry.sdk.hb;
import com.flurry.sdk.kg;

class FlurryFullscreenTakeoverActivity$2
  implements gt.a
{
  FlurryFullscreenTakeoverActivity$2(FlurryFullscreenTakeoverActivity paramFlurryFullscreenTakeoverActivity) {}
  
  public void a()
  {
    kg.a(FlurryFullscreenTakeoverActivity.a(), "onViewBack");
    if ((FlurryFullscreenTakeoverActivity.a(a) != null) && (FlurryFullscreenTakeoverActivity.a(a).b()))
    {
      FlurryFullscreenTakeoverActivity.d(a);
      a.finish();
      FlurryFullscreenTakeoverActivity.a(a, null);
      return;
    }
    a.removeViewState();
    a.loadViewState();
    FlurryFullscreenTakeoverActivity.a(a, true);
    FlurryFullscreenTakeoverActivity.e(a);
  }
  
  public void b()
  {
    kg.a(FlurryFullscreenTakeoverActivity.a(), "onViewClose");
    FlurryFullscreenTakeoverActivity.d(a);
    a.finish();
    FlurryFullscreenTakeoverActivity.a(a, null);
  }
  
  public void c()
  {
    kg.a(FlurryFullscreenTakeoverActivity.a(), "onViewError");
    FlurryFullscreenTakeoverActivity.d(a);
    a.finish();
    FlurryFullscreenTakeoverActivity.a(a, null);
  }
}

/* Location:
 * Qualified Name:     com.flurry.android.FlurryFullscreenTakeoverActivity.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */