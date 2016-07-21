package com.estrongs.android.pop.app.unlock;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.view.View;
import com.nostra13.universalimageloader.core.assist.FailReason;
import com.nostra13.universalimageloader.core.listener.ImageLoadingListener;

class d
  implements ImageLoadingListener
{
  d(UnLockCardView paramUnLockCardView) {}
  
  public void onLoadingCancelled(String paramString, View paramView) {}
  
  public void onLoadingComplete(String paramString, View paramView, Bitmap paramBitmap)
  {
    UnLockCardView.a(a).a(paramBitmap, a.getResources().getDimensionPixelSize(2131165289), 5);
  }
  
  public void onLoadingFailed(String paramString, View paramView, FailReason paramFailReason) {}
  
  public void onLoadingStarted(String paramString, View paramView) {}
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.unlock.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */