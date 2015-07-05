package com.estrongs.android.pop.app.imageviewer;

import android.graphics.Bitmap;
import android.os.Handler;
import com.estrongs.android.pop.app.imageviewer.gallery.e;
import java.util.concurrent.CountDownLatch;

class g
  implements Runnable
{
  g(CropImage paramCropImage) {}
  
  public void run()
  {
    CountDownLatch localCountDownLatch = new CountDownLatch(1);
    if (CropImage.b(a) != null) {}
    for (Bitmap localBitmap = CropImage.b(a).a(-1, 1048576);; localBitmap = CropImage.c(a))
    {
      CropImage.e(a).post(new h(this, localBitmap, localCountDownLatch));
      try
      {
        localCountDownLatch.await();
        a.f.run();
        return;
      }
      catch (InterruptedException localInterruptedException)
      {
        throw new RuntimeException(localInterruptedException);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.imageviewer.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */