package com.flurry.sdk;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.os.Build.VERSION;
import android.view.View;

class fh$3$1
  extends ly
{
  fh$3$1(fh.3 param3, Bitmap paramBitmap) {}
  
  public void a()
  {
    if (Build.VERSION.SDK_INT < 16)
    {
      b.a.setBackgroundDrawable(new BitmapDrawable(a));
      return;
    }
    b.a.setBackground(new BitmapDrawable(a));
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.fh.3.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */