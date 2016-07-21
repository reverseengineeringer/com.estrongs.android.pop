package com.estrongs.android.pop.app.ad.a;

import android.util.Log;
import com.flurry.android.ads.FlurryAdErrorType;
import com.flurry.android.ads.FlurryAdNative;
import com.flurry.android.ads.FlurryAdNativeListener;
import java.util.List;

class d
  implements FlurryAdNativeListener
{
  private d(a parama) {}
  
  public void onAppExit(FlurryAdNative paramFlurryAdNative)
  {
    Log.e("...", "onAppExit");
  }
  
  public void onClicked(FlurryAdNative paramFlurryAdNative)
  {
    Log.e("...", "onClicked");
    if (a.a(a) != null) {
      a.a(a).a();
    }
  }
  
  public void onCloseFullscreen(FlurryAdNative paramFlurryAdNative)
  {
    Log.e("...", "onCloseFullscreen");
  }
  
  public void onCollapsed(FlurryAdNative paramFlurryAdNative)
  {
    Log.e("...", "onCollapsed");
  }
  
  public void onError(FlurryAdNative paramFlurryAdNative, FlurryAdErrorType paramFlurryAdErrorType, int paramInt)
  {
    Log.e("...", "onError, " + paramInt);
    if (a.b(a).contains(paramFlurryAdNative))
    {
      paramFlurryAdNative.destroy();
      a.b(a).remove(paramFlurryAdNative);
    }
    if (a.c(a) != null)
    {
      a.c(a).a();
      a.a(a, null);
    }
    if (a.d(a) < 2)
    {
      a.e(a);
      a.a(a, a.f(a));
    }
  }
  
  public void onExpanded(FlurryAdNative paramFlurryAdNative)
  {
    Log.e("...", "onExpanded");
  }
  
  public void onFetched(FlurryAdNative paramFlurryAdNative)
  {
    Log.e("...", "onFetched!!!!!onFetched!!!!!onFetched!!!!!");
    if (a.a(a, paramFlurryAdNative))
    {
      a.g(a).add(paramFlurryAdNative);
      if (a.c(a) != null)
      {
        a.c(a).a(paramFlurryAdNative);
        a.a(a, null);
      }
    }
    for (;;)
    {
      a.b();
      return;
      if (a.b(a).contains(paramFlurryAdNative))
      {
        paramFlurryAdNative.destroy();
        a.b(a).remove(paramFlurryAdNative);
      }
    }
  }
  
  public void onImpressionLogged(FlurryAdNative paramFlurryAdNative)
  {
    Log.e("...", "onImpressionLogged");
  }
  
  public void onShowFullscreen(FlurryAdNative paramFlurryAdNative)
  {
    Log.e("...", "onShowFullscreen");
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.ad.a.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */