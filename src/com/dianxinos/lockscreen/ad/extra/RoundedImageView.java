package com.dianxinos.lockscreen.ad.extra;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.AttributeSet;
import android.widget.ImageView;

public class RoundedImageView
  extends ImageView
{
  public RoundedImageView(Context paramContext)
  {
    super(paramContext);
  }
  
  public RoundedImageView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public void a(Bitmap paramBitmap, int paramInt1, int paramInt2)
  {
    setImageDrawable(new f(paramBitmap, paramInt1, paramInt2));
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.lockscreen.ad.extra.RoundedImageView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */