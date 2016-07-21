package com.dianxinos.lockscreen.ad.extra;

import android.graphics.Bitmap;
import android.view.View;
import android.widget.ImageView;
import com.duapps.ad.base.ap;
import com.nostra13.universalimageloader.core.assist.FailReason;
import com.nostra13.universalimageloader.core.listener.ImageLoadingListener;

class h
  implements ImageLoadingListener
{
  h(g paramg) {}
  
  public void onLoadingCancelled(String paramString, View paramView) {}
  
  public void onLoadingComplete(String paramString, View paramView, Bitmap paramBitmap)
  {
    if (paramBitmap != null)
    {
      g.a(a).setVisibility(8);
      g.b(a).a(paramBitmap, ap.a(a.a, 3.0F), 12);
    }
  }
  
  public void onLoadingFailed(String paramString, View paramView, FailReason paramFailReason) {}
  
  public void onLoadingStarted(String paramString, View paramView)
  {
    g.a(a).setVisibility(0);
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.lockscreen.ad.extra.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */