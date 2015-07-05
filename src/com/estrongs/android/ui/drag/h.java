package com.estrongs.android.ui.drag;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.os.Handler;
import java.util.List;

class h
  implements Runnable
{
  private m b;
  private long c;
  private int d;
  private int e;
  private int f;
  
  public h(d paramd, m paramm, int paramInt1, int paramInt2, int paramInt3)
  {
    b = paramm;
    c = System.currentTimeMillis();
    d = paramInt1;
    e = paramInt2;
    f = paramInt3;
  }
  
  private int a()
  {
    int i = 30 / d.j(a).size();
    if (i < 5) {
      return 5;
    }
    if (i > 15) {
      return 15;
    }
    return i;
  }
  
  private Bitmap a(Bitmap paramBitmap1, Bitmap paramBitmap2)
  {
    int i = paramBitmap1.getWidth() + a();
    int j = paramBitmap1.getHeight() + a();
    Bitmap localBitmap = Bitmap.createBitmap(i, j, Bitmap.Config.ARGB_8888);
    Canvas localCanvas = new Canvas(localBitmap);
    Paint localPaint = new Paint();
    localCanvas.drawBitmap(paramBitmap2, i - paramBitmap2.getWidth(), 0.0F, localPaint);
    localCanvas.drawBitmap(paramBitmap1, 0.0F, j - paramBitmap1.getHeight(), localPaint);
    return localBitmap;
  }
  
  private int b()
  {
    int i = d * a();
    if (i > 30) {
      return 30;
    }
    return i;
  }
  
  double a(float paramFloat1, float paramFloat2)
  {
    return Math.sqrt((paramFloat2 - paramFloat1) / paramFloat2);
  }
  
  public void run()
  {
    if (d.f(a) == null)
    {
      b.c();
      b = null;
    }
    do
    {
      return;
      int i = (int)(System.currentTimeMillis() - c);
      if (i >= 700) {
        break;
      }
      int k = e - d.f(a).e();
      int j = f - d.f(a).f();
      k = (int)(d.g(a) + b() + k - a(i, 700.0F) * (k + b()));
      double d1 = d.h(a) - b() + j;
      double d2 = a(i, 700.0F);
      i = (int)(d1 - (j - b()) * d2);
      b.a(k, i);
    } while (d.i(a));
    d.e(a).postDelayed(this, 25L);
    return;
    Bitmap localBitmap1 = d.f(a).d();
    Bitmap localBitmap2 = b.d();
    Bitmap localBitmap3 = a(localBitmap1, localBitmap2);
    d.f(a).a(localBitmap3, a());
    d.f(a).a(d.g(a), d.h(a));
    localBitmap1.recycle();
    localBitmap2.recycle();
    b.c();
    b = null;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.drag.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */