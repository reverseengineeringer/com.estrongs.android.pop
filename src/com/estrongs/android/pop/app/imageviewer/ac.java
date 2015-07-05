package com.estrongs.android.pop.app.imageviewer;

import android.os.Handler;

class ac
  implements Runnable
{
  ac(ImageViewTouchBase paramImageViewTouchBase, float paramFloat1, long paramLong, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5) {}
  
  public void run()
  {
    long l = System.currentTimeMillis();
    float f1 = Math.min(a, (float)(l - b));
    float f2 = c;
    float f3 = d;
    g.a(f2 + f3 * f1, e, f);
    if (f1 < a) {
      g.o.post(this);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.imageviewer.ac
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */