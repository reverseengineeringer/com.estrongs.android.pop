package com.flurry.sdk;

import android.graphics.Bitmap;
import android.widget.ImageView;

class fh$1
  implements kn.a<Void, Bitmap>
{
  fh$1(fh paramfh, ImageView paramImageView) {}
  
  public void a(kn<Void, Bitmap> paramkn, Bitmap paramBitmap)
  {
    kg.a(3, fh.a(), "Image request -- HTTP status code is:" + paramkn.h());
    if (paramkn.f()) {
      js.a().a(new fh.1.1(this, paramBitmap));
    }
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.fh.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */