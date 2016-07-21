package com.estrongs.android.pop.app.imageviewer;

import android.graphics.Bitmap;
import com.estrongs.android.pop.app.imageviewer.gallery.e;
import com.estrongs.android.pop.app.imageviewer.gallery.f;

class cc
  implements Runnable
{
  cc(cb paramcb, e parame, Bitmap paramBitmap, an paraman) {}
  
  public void run()
  {
    if ((d.d.a) || (!a.equals(d.d.e.a(d.a)))) {}
    for (;;)
    {
      return;
      if (Math.abs(d.d.c - d.a) < 2)
      {
        if (b != null) {
          break label155;
        }
        d.b.b(a);
        if (d.d.c == d.a) {
          d.d.g = null;
        }
      }
      while (d.c != null)
      {
        d.d.b.post(d.c);
        return;
        label155:
        d.b.a(a, c);
        if (d.d.c == d.a) {
          d.d.g = d.b.a;
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.imageviewer.cc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */