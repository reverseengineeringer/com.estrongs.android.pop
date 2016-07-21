package android.support.a.a;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.Region.Op;
import android.support.v4.e.a;
import java.util.ArrayList;

class r
{
  private static final Matrix j = new Matrix();
  float a = 0.0F;
  float b = 0.0F;
  float c = 0.0F;
  float d = 0.0F;
  int e = 255;
  String f = null;
  final a<String, Object> g = new a();
  private final Path h;
  private final Path i;
  private final Matrix k = new Matrix();
  private Paint l;
  private Paint m;
  private PathMeasure n;
  private int o;
  private final p p;
  
  public r()
  {
    p = new p();
    h = new Path();
    i = new Path();
  }
  
  public r(r paramr)
  {
    p = new p(p, g);
    h = new Path(h);
    i = new Path(i);
    a = a;
    b = b;
    c = c;
    d = d;
    o = o;
    e = e;
    f = f;
    if (f != null) {
      g.put(f, this);
    }
  }
  
  private static float a(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    return paramFloat1 * paramFloat4 - paramFloat2 * paramFloat3;
  }
  
  private float a(Matrix paramMatrix)
  {
    float f1 = 0.0F;
    float[] arrayOfFloat = new float[4];
    float[] tmp9_7 = arrayOfFloat;
    tmp9_7[0] = 0.0F;
    float[] tmp13_9 = tmp9_7;
    tmp13_9[1] = 1.0F;
    float[] tmp17_13 = tmp13_9;
    tmp17_13[2] = 1.0F;
    float[] tmp21_17 = tmp17_13;
    tmp21_17[3] = 0.0F;
    tmp21_17;
    paramMatrix.mapVectors(arrayOfFloat);
    float f3 = (float)Math.hypot(arrayOfFloat[0], arrayOfFloat[1]);
    float f4 = (float)Math.hypot(arrayOfFloat[2], arrayOfFloat[3]);
    float f2 = a(arrayOfFloat[0], arrayOfFloat[1], arrayOfFloat[2], arrayOfFloat[3]);
    f3 = Math.max(f3, f4);
    if (f3 > 0.0F) {
      f1 = Math.abs(f2) / f3;
    }
    return f1;
  }
  
  private void a(p paramp, Matrix paramMatrix, Canvas paramCanvas, int paramInt1, int paramInt2, ColorFilter paramColorFilter)
  {
    p.b(paramp).set(paramMatrix);
    p.b(paramp).preConcat(p.c(paramp));
    int i1 = 0;
    if (i1 < a.size())
    {
      paramMatrix = a.get(i1);
      if ((paramMatrix instanceof p)) {
        a((p)paramMatrix, p.b(paramp), paramCanvas, paramInt1, paramInt2, paramColorFilter);
      }
      for (;;)
      {
        i1 += 1;
        break;
        if ((paramMatrix instanceof q)) {
          a(paramp, (q)paramMatrix, paramCanvas, paramInt1, paramInt2, paramColorFilter);
        }
      }
    }
  }
  
  private void a(p paramp, q paramq, Canvas paramCanvas, int paramInt1, int paramInt2, ColorFilter paramColorFilter)
  {
    float f2 = paramInt1 / c;
    float f3 = paramInt2 / d;
    float f1 = Math.min(f2, f3);
    paramp = p.b(paramp);
    k.set(paramp);
    k.postScale(f2, f3);
    f2 = a(paramp);
    if (f2 == 0.0F) {
      return;
    }
    paramq.a(h);
    Path localPath = h;
    i.reset();
    if (paramq.a())
    {
      i.addPath(localPath, k);
      paramCanvas.clipPath(i, Region.Op.REPLACE);
      return;
    }
    paramp = (o)paramq;
    float f6;
    float f4;
    if ((g != 0.0F) || (h != 1.0F))
    {
      f6 = g;
      float f7 = i;
      f4 = h;
      float f5 = i;
      if (n == null) {
        n = new PathMeasure();
      }
      n.setPath(h, false);
      f3 = n.getLength();
      f6 = (f6 + f7) % 1.0F * f3;
      f4 = (f4 + f5) % 1.0F * f3;
      localPath.reset();
      if (f6 <= f4) {
        break label506;
      }
      n.getSegment(f6, f3, localPath, true);
      n.getSegment(0.0F, f4, localPath, true);
    }
    for (;;)
    {
      localPath.rLineTo(0.0F, 0.0F);
      i.addPath(localPath, k);
      if (c != 0)
      {
        if (m == null)
        {
          m = new Paint();
          m.setStyle(Paint.Style.FILL);
          m.setAntiAlias(true);
        }
        paramq = m;
        paramq.setColor(l.a(c, f));
        paramq.setColorFilter(paramColorFilter);
        paramCanvas.drawPath(i, paramq);
      }
      if (a == 0) {
        break;
      }
      if (l == null)
      {
        l = new Paint();
        l.setStyle(Paint.Style.STROKE);
        l.setAntiAlias(true);
      }
      paramq = l;
      if (k != null) {
        paramq.setStrokeJoin(k);
      }
      if (j != null) {
        paramq.setStrokeCap(j);
      }
      paramq.setStrokeMiter(l);
      paramq.setColor(l.a(a, d));
      paramq.setColorFilter(paramColorFilter);
      paramq.setStrokeWidth(f2 * f1 * b);
      paramCanvas.drawPath(i, paramq);
      return;
      label506:
      n.getSegment(f6, f4, localPath, true);
    }
  }
  
  public int a()
  {
    return e;
  }
  
  public void a(float paramFloat)
  {
    a((int)(255.0F * paramFloat));
  }
  
  public void a(int paramInt)
  {
    e = paramInt;
  }
  
  public void a(Canvas paramCanvas, int paramInt1, int paramInt2, ColorFilter paramColorFilter)
  {
    a(p, j, paramCanvas, paramInt1, paramInt2, paramColorFilter);
  }
  
  public float b()
  {
    return a() / 255.0F;
  }
}

/* Location:
 * Qualified Name:     android.support.a.a.r
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */