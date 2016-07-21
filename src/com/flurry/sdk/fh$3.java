package com.flurry.sdk;

import android.graphics.Bitmap;
import android.view.View;

class fh$3
  implements kn.a<Void, Bitmap>
{
  fh$3(fh paramfh, View paramView) {}
  
  public void a(kn<Void, Bitmap> paramkn, Bitmap paramBitmap)
  {
    kg.a(3, fh.a(), "Image request -- HTTP status code is:" + paramkn.h());
    if (paramkn.f()) {
      js.a().a(new fh.3.1(this, paramBitmap));
    }
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.fh.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */