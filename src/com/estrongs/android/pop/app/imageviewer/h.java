package com.estrongs.android.pop.app.imageviewer;

import android.graphics.Bitmap;
import java.util.concurrent.CountDownLatch;

class h
  implements Runnable
{
  h(g paramg, Bitmap paramBitmap, CountDownLatch paramCountDownLatch) {}
  
  public void run()
  {
    if ((a != CropImage.c(c.a)) && (a != null))
    {
      CropImage.d(c.a).a(a, true);
      CropImage.c(c.a).recycle();
      CropImage.a(c.a, a);
    }
    if (CropImage.d(c.a).getScale() == 1.0F) {
      CropImage.d(c.a).a(true, true);
    }
    b.countDown();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.imageviewer.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */