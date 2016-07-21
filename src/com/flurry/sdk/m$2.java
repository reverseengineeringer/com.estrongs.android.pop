package com.flurry.sdk;

import android.graphics.Bitmap;
import android.widget.ImageView;

class m$2
  implements kn.a<Void, Bitmap>
{
  m$2(m paramm, ImageView paramImageView) {}
  
  public void a(kn<Void, Bitmap> paramkn, Bitmap paramBitmap)
  {
    kg.a(3, m.a(), "Image request -- HTTP status code is:" + paramkn.h());
    if (paramkn.f()) {
      m.a(b, a, paramBitmap);
    }
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.m.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */