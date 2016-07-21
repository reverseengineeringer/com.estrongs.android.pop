package com.estrongs.android.h.a;

import android.graphics.Bitmap;
import android.view.View;
import android.widget.ImageView;
import com.estrongs.fs.h;
import com.nostra13.universalimageloader.core.assist.FailReason;
import com.nostra13.universalimageloader.core.listener.ImageLoadingListener;

final class f
  implements ImageLoadingListener
{
  public void onLoadingCancelled(String paramString, View paramView) {}
  
  public void onLoadingComplete(String paramString, View paramView, Bitmap paramBitmap)
  {
    e.a((ImageView)paramView, (h)paramView.getTag());
  }
  
  public void onLoadingFailed(String paramString, View paramView, FailReason paramFailReason)
  {
    e.a((ImageView)paramView, (h)paramView.getTag());
  }
  
  public void onLoadingStarted(String paramString, View paramView) {}
}

/* Location:
 * Qualified Name:     com.estrongs.android.h.a.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */