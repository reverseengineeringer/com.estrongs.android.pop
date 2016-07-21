package com.estrongs.android.b.a;

import android.graphics.Bitmap.Config;
import android.widget.ImageView;
import com.estrongs.android.h.a.e;
import com.nostra13.universalimageloader.core.DisplayImageOptions.Builder;
import com.nostra13.universalimageloader.core.ImageLoader;
import com.nostra13.universalimageloader.core.assist.ImageScaleType;
import com.nostra13.universalimageloader.core.listener.ImageLoadingListener;

public class c
{
  private static DisplayImageOptions.Builder a;
  
  public static ImageLoader a()
  {
    return e.a();
  }
  
  public static void a(ImageView paramImageView, String paramString, int paramInt)
  {
    paramImageView.setTag(paramString);
    if (paramString == null)
    {
      paramImageView.setImageResource(paramInt);
      return;
    }
    c();
    a.showImageOnLoading(paramInt);
    a.showImageOnFail(paramInt);
    paramImageView.post(new d(paramString, paramImageView));
  }
  
  public static void a(ImageView paramImageView, String paramString, int paramInt, ImageLoadingListener paramImageLoadingListener)
  {
    paramImageView.setTag(paramString);
    if (paramString == null)
    {
      paramImageView.setImageResource(paramInt);
      return;
    }
    c();
    a.showImageOnLoading(paramInt);
    a.showImageOnFail(paramInt);
    if (paramImageLoadingListener != null)
    {
      a().displayImage(paramString, paramImageView, a.build(), paramImageLoadingListener);
      return;
    }
    a().displayImage(paramString, paramImageView, a.build());
  }
  
  public static void a(String paramString)
  {
    a().loadImage(paramString, null);
  }
  
  private static void c()
  {
    if (a == null)
    {
      a = e.b();
      a.bitmapConfig(Bitmap.Config.ARGB_8888);
      a.imageScaleType(ImageScaleType.EXACTLY);
      a.cacheInMemory(true);
      a.cacheOnDisk(true);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.b.a.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */