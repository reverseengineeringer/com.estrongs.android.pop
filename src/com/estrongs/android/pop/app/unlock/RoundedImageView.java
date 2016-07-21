package com.estrongs.android.pop.app.unlock;

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
    setImageDrawable(new c(paramBitmap, paramInt1, paramInt2));
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.unlock.RoundedImageView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */