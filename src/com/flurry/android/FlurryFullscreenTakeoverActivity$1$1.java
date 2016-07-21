package com.flurry.android;

import com.flurry.sdk.gr;
import com.flurry.sdk.gr.a;
import com.flurry.sdk.hb;
import com.flurry.sdk.kg;
import com.flurry.sdk.ly;
import com.flurry.sdk.s;

class FlurryFullscreenTakeoverActivity$1$1
  extends ly
{
  FlurryFullscreenTakeoverActivity$1$1(FlurryFullscreenTakeoverActivity.1 param1, gr paramgr) {}
  
  public void a()
  {
    gr.a locala = a.e;
    switch (FlurryFullscreenTakeoverActivity.3.a[locala.ordinal()])
    {
    default: 
      return;
    case 1: 
      kg.a(3, FlurryFullscreenTakeoverActivity.a(), "RELOAD_ACTIVITY Event was fired for adObject:" + a.a.e() + " for url:" + a.b + " and should Close Ad:" + a.c);
      FlurryFullscreenTakeoverActivity.a(b.a, new hb(a.a, a.b, a.c, a.d));
      FlurryFullscreenTakeoverActivity.a(b.a, FlurryFullscreenTakeoverActivity.a(b.a).c());
      if (FlurryFullscreenTakeoverActivity.b(b.a) == null)
      {
        kg.b(FlurryFullscreenTakeoverActivity.a(), "Cannot launch Activity. No Ad Controller");
        b.a.finish();
        return;
      }
      FlurryFullscreenTakeoverActivity.c(b.a);
      FlurryFullscreenTakeoverActivity.d(b.a);
      FlurryFullscreenTakeoverActivity.a(b.a, true);
      FlurryFullscreenTakeoverActivity.e(b.a);
      return;
    }
    kg.a(FlurryFullscreenTakeoverActivity.a(), "CLOSE_ACTIVITY Event was fired :");
    b.a.finish();
  }
}

/* Location:
 * Qualified Name:     com.flurry.android.FlurryFullscreenTakeoverActivity.1.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */