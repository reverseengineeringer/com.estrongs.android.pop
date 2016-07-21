package com.estrongs.android.h.a;

import android.graphics.Bitmap;
import com.nostra13.universalimageloader.core.assist.LoadedFrom;
import com.nostra13.universalimageloader.core.display.BitmapDisplayer;
import com.nostra13.universalimageloader.core.imageaware.ImageAware;
import com.nostra13.universalimageloader.core.imageaware.ImageViewAware;

public class a
  implements BitmapDisplayer
{
  protected final Integer a;
  protected final float b;
  
  public a()
  {
    this((Integer)null);
  }
  
  public a(Integer paramInteger)
  {
    this(paramInteger, 0.0F);
  }
  
  public a(Integer paramInteger, float paramFloat)
  {
    a = paramInteger;
    b = paramFloat;
  }
  
  public void display(Bitmap paramBitmap, ImageAware paramImageAware, LoadedFrom paramLoadedFrom)
  {
    if (!(paramImageAware instanceof ImageViewAware)) {
      throw new IllegalArgumentException("ImageAware should wrap ImageView. ImageViewAware is expected.");
    }
    paramImageAware.setImageDrawable(new b(paramBitmap, a, b));
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.h.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */