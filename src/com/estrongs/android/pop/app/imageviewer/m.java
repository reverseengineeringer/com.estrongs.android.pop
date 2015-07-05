package com.estrongs.android.pop.app.imageviewer;

import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.media.FaceDetector;
import android.media.FaceDetector.Face;
import android.os.Handler;

class m
  implements Runnable
{
  float a = 1.0F;
  Matrix b;
  FaceDetector.Face[] c = new FaceDetector.Face[3];
  int d;
  
  m(CropImage paramCropImage) {}
  
  private void a()
  {
    boolean bool2 = false;
    HighlightView localHighlightView = new HighlightView(CropImage.d(e));
    int n = CropImage.c(e).getWidth();
    int m = CropImage.c(e).getHeight();
    Rect localRect = new Rect(0, 0, n, m);
    int i = Math.min(n, m) * 4 / 5;
    int k;
    int j;
    if ((CropImage.i(e) != 0) && (CropImage.j(e) != 0)) {
      if (CropImage.i(e) > CropImage.j(e))
      {
        k = CropImage.j(e) * i / CropImage.i(e);
        j = i;
        i = k;
      }
    }
    for (;;)
    {
      k = (n - j) / 2;
      m = (m - i) / 2;
      RectF localRectF = new RectF(k, m, j + k, i + m);
      Matrix localMatrix = b;
      boolean bool3 = CropImage.h(e);
      boolean bool1 = bool2;
      if (CropImage.i(e) != 0)
      {
        bool1 = bool2;
        if (CropImage.j(e) != 0) {
          bool1 = true;
        }
      }
      localHighlightView.a(localMatrix, localRect, localRectF, bool3, bool1, e.a);
      CropImage.d(e).a(localHighlightView);
      return;
      j = CropImage.i(e) * i / CropImage.j(e);
      continue;
      j = i;
      k = i;
      i = j;
      j = k;
    }
  }
  
  private void a(FaceDetector.Face paramFace)
  {
    boolean bool2 = false;
    Object localObject = new PointF();
    int i = (int)(paramFace.eyesDistance() * a) * 2;
    paramFace.getMidPoint((PointF)localObject);
    x *= a;
    y *= a;
    int j = (int)x;
    int k = (int)y;
    paramFace = new HighlightView(CropImage.d(e));
    localObject = new Rect(0, 0, CropImage.c(e).getWidth(), CropImage.c(e).getHeight());
    RectF localRectF = new RectF(j, k, j, k);
    localRectF.inset(-i, -i);
    if (left < 0.0F) {
      localRectF.inset(-left, -left);
    }
    if (top < 0.0F) {
      localRectF.inset(-top, -top);
    }
    if (right > right) {
      localRectF.inset(right - right, right - right);
    }
    if (bottom > bottom) {
      localRectF.inset(bottom - bottom, bottom - bottom);
    }
    Matrix localMatrix = b;
    boolean bool3 = CropImage.h(e);
    boolean bool1 = bool2;
    if (CropImage.i(e) != 0)
    {
      bool1 = bool2;
      if (CropImage.j(e) != 0) {
        bool1 = true;
      }
    }
    paramFace.a(localMatrix, (Rect)localObject, localRectF, bool3, bool1, e.a);
    CropImage.d(e).a(paramFace);
  }
  
  private Bitmap b()
  {
    if (CropImage.c(e) == null) {
      return null;
    }
    if (CropImage.c(e).getWidth() > 256) {
      a = (256.0F / CropImage.c(e).getWidth());
    }
    Matrix localMatrix = new Matrix();
    localMatrix.setScale(a, a);
    return Bitmap.createBitmap(CropImage.c(e), 0, 0, CropImage.c(e).getWidth(), CropImage.c(e).getHeight(), localMatrix, true);
  }
  
  public void run()
  {
    b = CropImage.d(e).getImageMatrix();
    Bitmap localBitmap = b();
    a = (1.0F / a);
    if ((localBitmap != null) && (CropImage.k(e))) {
      d = new FaceDetector(localBitmap.getWidth(), localBitmap.getHeight(), c.length).findFaces(localBitmap, c);
    }
    if ((localBitmap != null) && (localBitmap != CropImage.c(e))) {
      localBitmap.recycle();
    }
    CropImage.e(e).post(new n(this));
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.imageviewer.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */