package com.estrongs.android.pop.app.imageviewer;

import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.widget.ImageView;
import com.estrongs.android.pop.app.imageviewer.gallery.e;
import com.estrongs.android.pop.utils.cd;

class s
  implements Runnable
{
  s(r paramr, Bitmap paramBitmap, e parame) {}
  
  public void run()
  {
    if (Math.abs(c.a - q.a(c.c)) < 5)
    {
      if (a == null) {
        c.b.setImageBitmap(q.b(c.c));
      }
    }
    else {
      return;
    }
    int i = cd.c(b.d());
    if (i != 0)
    {
      Object localObject = new Matrix();
      ((Matrix)localObject).setRotate(i);
      localObject = Bitmap.createBitmap(a, 0, 0, a.getWidth(), a.getHeight(), (Matrix)localObject, false);
      a.recycle();
      c.b.setImageBitmap((Bitmap)localObject);
      return;
    }
    c.b.setImageBitmap(a);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.imageviewer.s
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */