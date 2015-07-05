package com.estrongs.android.pop.app.imageviewer;

import android.graphics.Bitmap;
import android.graphics.Matrix;

public class an
{
  private Bitmap a;
  private int b;
  
  public an(Bitmap paramBitmap)
  {
    a = paramBitmap;
    b = 0;
  }
  
  public an(Bitmap paramBitmap, int paramInt)
  {
    a = paramBitmap;
    b = (paramInt % 360);
  }
  
  public int a()
  {
    return b;
  }
  
  public void a(int paramInt)
  {
    b = paramInt;
  }
  
  public void a(Bitmap paramBitmap)
  {
    a = paramBitmap;
  }
  
  public Bitmap b()
  {
    return a;
  }
  
  public Matrix c()
  {
    Matrix localMatrix = new Matrix();
    if (b != 0)
    {
      int i = a.getWidth() / 2;
      int j = a.getHeight() / 2;
      localMatrix.preTranslate(-i, -j);
      localMatrix.postRotate(b);
      localMatrix.postTranslate(f() / 2, e() / 2);
    }
    return localMatrix;
  }
  
  public boolean d()
  {
    return b / 90 % 2 != 0;
  }
  
  public int e()
  {
    if (d()) {
      return a.getWidth();
    }
    return a.getHeight();
  }
  
  public int f()
  {
    if (d()) {
      return a.getHeight();
    }
    return a.getWidth();
  }
  
  public boolean g()
  {
    return (a == null) || (a.isRecycled());
  }
  
  public void h()
  {
    if (a != null)
    {
      a.recycle();
      a = null;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.imageviewer.an
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */