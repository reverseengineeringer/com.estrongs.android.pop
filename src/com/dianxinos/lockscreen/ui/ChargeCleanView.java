package com.dianxinos.lockscreen.ui;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.View;
import com.dianxinos.lockscreen.aa;
import com.dianxinos.lockscreen.ab;
import com.dianxinos.lockscreen.c.j;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public class ChargeCleanView
  extends View
{
  private Paint A;
  private Paint[] B = new Paint[3];
  private Path C = new Path();
  private Matrix D = new Matrix();
  private final PointF E = new PointF();
  private final PointF F = new PointF();
  private long G;
  private long[] H = new long[3];
  private int I;
  private int J;
  private float K = 0.0F;
  private LinkedList<g> L = new LinkedList();
  private h M;
  private ChargeCleanView.Status N = ChargeCleanView.Status.IDLE;
  private float a;
  private float b;
  private float c;
  private float d;
  private float e;
  private float f;
  private float g;
  private float h;
  private float i;
  private float j;
  private float k;
  private long l;
  private long m;
  private long n;
  private long o;
  private float p = 0.25F;
  private float q = 0.5F;
  private float r = 0.75F;
  private float s = 1.0F;
  private Bitmap t;
  private Bitmap u;
  private int v;
  private int w;
  private int x;
  private int y;
  private Paint z;
  
  public ChargeCleanView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a(paramContext);
  }
  
  private double a(int paramInt)
  {
    float f1 = 0.0F;
    float f2 = (float)((G - H[paramInt]) % 2000L) / 2000.0F;
    if (f2 < 0.0F) {}
    for (;;)
    {
      return f1;
      if (f2 < 0.5D) {
        f1 = f2 / 0.5F * 1.0F;
      }
    }
  }
  
  private void a(Context paramContext)
  {
    paramContext = paramContext.getResources();
    a = paramContext.getDimensionPixelSize(aa.lock_screen_outer_radius_width);
    b = paramContext.getDimensionPixelSize(aa.lock_screen_middle_radius_width);
    c = paramContext.getDimensionPixelSize(aa.lock_screen_inner_radius_width);
    e = paramContext.getDimensionPixelSize(aa.lock_screen_outer_line_width);
    f = paramContext.getDimensionPixelSize(aa.lock_screen_middle_line_width);
    g = paramContext.getDimensionPixelSize(aa.lock_screen_inner_line_width);
    d = paramContext.getDimensionPixelSize(aa.lock_screen_halo_radius_width);
    t = ((BitmapDrawable)paramContext.getDrawable(ab.lock_screen_turbine)).getBitmap();
    u = ((BitmapDrawable)paramContext.getDrawable(ab.lock_screen_scan)).getBitmap();
    v = (t.getWidth() / 2);
    w = (t.getHeight() / 2);
    x = (u.getWidth() / 2);
    y = (u.getHeight() / 2);
    z = new Paint(1);
    A = new Paint(1);
    A.setColor(-11950882);
    A.setStyle(Paint.Style.STROKE);
    A.setStrokeWidth(e);
    B[0] = new Paint(1);
    B[0].setColor(-1);
    B[0].setStyle(Paint.Style.STROKE);
    B[1] = new Paint(1);
    B[1].setColor(-1);
    B[1].setStyle(Paint.Style.STROKE);
    B[2] = new Paint(1);
    B[2].setColor(-14573071);
    B[2].setStyle(Paint.Style.FILL);
  }
  
  private void a(Canvas paramCanvas)
  {
    double d1 = 1.0D;
    switch (f.a[N.ordinal()])
    {
    default: 
      return;
    }
    for (d1 = getInitOuterInter();; d1 = getFinishOuterSizeInter())
    {
      z.setStyle(Paint.Style.FILL);
      z.setColor(452984831);
      h = ((float)(d1 * a));
      paramCanvas.drawCircle(I, J, h, z);
      z.setStyle(Paint.Style.STROKE);
      z.setColor(1711276031);
      z.setStrokeWidth(e);
      paramCanvas.drawCircle(I, J, h, z);
      return;
    }
  }
  
  private boolean a()
  {
    return (L.isEmpty()) || (G - L.getLast()).d > 800L);
  }
  
  private double b(int paramInt)
  {
    float f1 = 0.0F;
    float f2 = (float)((G - H[paramInt]) % 2000L) / 2000.0F;
    if (f2 < 0.0F) {}
    for (;;)
    {
      return f1;
      if (f2 < 0.5D) {
        f1 = 1.0F - f2 / 0.5F * 1.0F;
      }
    }
  }
  
  private void b(Canvas paramCanvas)
  {
    double d1 = 1.0D;
    switch (f.a[N.ordinal()])
    {
    default: 
      return;
    }
    for (d1 = getInitInnerInter();; d1 = getFinishMiddleSizeInter())
    {
      z.setStyle(Paint.Style.FILL);
      z.setColor(452984831);
      i = ((float)(d1 * b));
      paramCanvas.drawCircle(I, J, i, z);
      z.setStyle(Paint.Style.STROKE);
      z.setColor(1258291199);
      z.setStrokeWidth(f);
      paramCanvas.drawCircle(I, J, i, z);
      return;
    }
  }
  
  private void c(Canvas paramCanvas)
  {
    double d2 = 1.0D;
    double d1;
    switch (f.a[N.ordinal()])
    {
    default: 
      return;
    case 1: 
      d1 = getInitInnerInter();
      d2 = getInitInnerAlphaInter();
    }
    for (;;)
    {
      int i1 = (int)(d2 * 255.0D);
      z.setStyle(Paint.Style.FILL);
      z.setColor(-16747844);
      z.setAlpha(i1);
      j = ((float)(d1 * c));
      paramCanvas.drawCircle(I, J, j, z);
      z.setStyle(Paint.Style.STROKE);
      z.setColor(-637534209);
      z.setAlpha(i1);
      z.setStrokeWidth(g);
      paramCanvas.drawCircle(I, J, j, z);
      return;
      d1 = 1.0D;
      continue;
      d1 = 1.0D;
      continue;
      d1 = getFinishInnerSizeInter();
      d2 = getFinishInnerAlphaInter();
    }
  }
  
  private void d(Canvas paramCanvas)
  {
    switch (f.a[N.ordinal()])
    {
    default: 
      return;
    case 1: 
      d1 = getInitInnerInter();
      d2 = getInitInnerAlphaInter();
      z.setAlpha((int)(d2 * 255.0D));
      D.reset();
      D.setScale((float)d1, (float)d1, v, w);
      D.postTranslate(I - v, J - w);
      paramCanvas.drawBitmap(t, D, z);
      return;
    case 2: 
      D.reset();
      D.postRotate(K, v, w);
      D.postTranslate(I - v, J - w);
      paramCanvas.drawBitmap(t, D, null);
      return;
    case 3: 
      D.reset();
      D.postRotate(K, v, w);
      D.postTranslate(I - v, J - w);
      paramCanvas.drawBitmap(t, D, null);
      return;
    }
    double d1 = getFinishInnerSizeInter();
    double d2 = getFinishInnerAlphaInter();
    float f1 = (float)(G - o) / 800.0F;
    z.setAlpha((int)(d2 * 255.0D));
    D.reset();
    D.setScale((float)d1, (float)d1, v, w);
    if (f1 <= q) {
      D.postRotate(K, v, w);
    }
    D.postTranslate(I - v, J - w);
    paramCanvas.drawBitmap(t, D, z);
  }
  
  private void e(Canvas paramCanvas)
  {
    switch (f.a[N.ordinal()])
    {
    default: 
      return;
    case 1: 
      d1 = getInitScanAlphaInter();
      z.setAlpha((int)(d1 * 255.0D));
      D.reset();
      D.postTranslate(I - x, J - y);
      paramCanvas.drawBitmap(u, D, z);
      return;
    case 2: 
      D.reset();
      D.postRotate(K, x, y);
      D.postTranslate(I - x, J - y);
      paramCanvas.drawBitmap(u, D, null);
      return;
    case 3: 
      D.reset();
      D.postRotate(K, x, y);
      D.postTranslate(I - x, J - y);
      paramCanvas.drawBitmap(u, D, null);
      return;
    }
    double d1 = getFinishScanAlphaInter();
    z.setAlpha((int)(d1 * 255.0D));
    D.reset();
    D.postRotate(K, x, y);
    D.postTranslate(I - x, J - y);
    paramCanvas.drawBitmap(u, D, z);
  }
  
  private void f(Canvas paramCanvas)
  {
    switch (f.a[N.ordinal()])
    {
    default: 
      return;
    case 4: 
      float f1 = (float)getFinishGridAlphaInter();
      A.setAlpha((int)(f1 * 255.0F));
    }
    paramCanvas.drawPath(C, A);
  }
  
  private void g(Canvas paramCanvas)
  {
    switch (f.a[N.ordinal()])
    {
    }
    for (;;)
    {
      return;
      int i1 = 0;
      while (i1 < H.length)
      {
        double d1 = a(i1);
        double d2 = b(i1);
        k = ((float)(d1 * d));
        B[i1].setAlpha((int)(255.0D * d2));
        paramCanvas.drawCircle(I, J, k, B[i1]);
        i1 += 1;
      }
    }
  }
  
  private double getFinishGridAlphaInter()
  {
    float f1 = 0.0F;
    float f2 = (float)(G - o) / 800.0F;
    if (f2 < 0.0F) {}
    for (;;)
    {
      return f1;
      if (f2 <= q) {
        f1 = 1.0F - f2 / q;
      }
    }
  }
  
  private double getFinishInnerAlphaInter()
  {
    float f1 = 0.0F;
    float f2 = (float)(G - o) / 800.0F;
    if (f2 < 0.0F) {}
    for (;;)
    {
      return f1;
      if (f2 <= r) {
        f1 = 1.0F;
      } else if (f2 <= s) {
        f1 = 1.0F - (f2 - r) * 1.0F / (s - r);
      }
    }
  }
  
  private double getFinishInnerSizeInter()
  {
    float f1 = 0.0F;
    float f2 = (float)(G - o) / 800.0F;
    if (f2 < 0.0F) {}
    for (;;)
    {
      return f1;
      if (f2 <= q) {
        f1 = 1.0F;
      } else if (f2 <= r) {
        f1 = 0.20000005F * (f2 - q) / (r - q) + 1.0F;
      } else if (f2 <= s) {
        f1 = 1.2F - (f2 - r) * 1.2F / (s - r);
      }
    }
  }
  
  private double getFinishMiddleSizeInter()
  {
    float f1 = 0.0F;
    float f2 = (float)(G - o) / 800.0F;
    if (f2 < 0.0F) {}
    for (;;)
    {
      return f1;
      if (f2 <= q) {
        f1 = 1.0F - 1.0F * f2 / q;
      }
    }
  }
  
  private double getFinishOuterSizeInter()
  {
    float f1 = 1.0F;
    float f2 = (float)(G - o) / 800.0F;
    if (f2 <= q) {}
    for (;;)
    {
      return f1;
      if (f2 <= s) {
        f1 = 1.0F - (f2 - q) * 1.0F / (s - q);
      } else {
        f1 = 0.0F;
      }
    }
  }
  
  private double getFinishScanAlphaInter()
  {
    float f1 = 0.0F;
    float f2 = (float)(G - o) / 800.0F;
    if (f2 < 0.0F) {}
    for (;;)
    {
      return f1;
      if (f2 <= q) {
        f1 = 1.0F - 1.0F * f2 / q;
      }
    }
  }
  
  private double getInitInnerAlphaInter()
  {
    float f1 = 0.0F;
    float f2 = (float)(G - m) / 300.0F;
    if (f2 < 0.0F) {}
    for (;;)
    {
      return f1;
      if (f2 <= 1.0F) {
        f1 = f2;
      } else {
        f1 = 1.0F;
      }
    }
  }
  
  private double getInitInnerInter()
  {
    float f1 = 0.0F;
    float f2 = (float)(G - m) / 800.0F;
    if (f2 < 0.0F) {}
    for (;;)
    {
      return f1;
      if (f2 < p) {
        f1 = f2 / p * 1.2F;
      } else if (f2 < q) {
        f1 = 1.2F - 0.30000007F * (f2 - p) / (q - p);
      } else if (f2 < r) {
        f1 = 0.9F + (f2 - q) * 0.20000005F / (r - q);
      } else if (f2 < s) {
        f1 = 1.1F - (f2 - r) * 0.100000024F / (s - r);
      } else {
        f1 = 1.0F;
      }
    }
  }
  
  private double getInitOuterInter()
  {
    float f1 = 0.0F;
    float f2 = (float)(G - l) / 800.0F;
    if (f2 < 0.0F) {}
    for (;;)
    {
      return f1;
      if (f2 < p) {
        f1 = f2 / p * 1.2F;
      } else if (f2 < q) {
        f1 = 1.2F - (f2 - p) * 0.30000007F / (q - p);
      } else if (f2 < r) {
        f1 = 0.9F + (f2 - q) * 0.30000007F / (r - q);
      } else if (f2 < s) {
        f1 = 1.2F - 0.20000005F * (f2 - r) / (s - r);
      } else {
        f1 = 1.0F;
      }
    }
  }
  
  private double getInitScanAlphaInter()
  {
    float f1 = 0.0F;
    float f2 = (float)(G - n) / 300.0F;
    if (f2 < 0.0F) {}
    for (;;)
    {
      return f1;
      if (f2 <= 1.0F) {
        f1 = f2;
      } else {
        f1 = 1.0F;
      }
    }
  }
  
  private void h(Canvas paramCanvas)
  {
    switch (f.a[N.ordinal()])
    {
    }
    label207:
    do
    {
      return;
      Iterator localIterator = L.iterator();
      for (;;)
      {
        if (!localIterator.hasNext()) {
          break label207;
        }
        g localg = (g)localIterator.next();
        if (d > G) {
          break;
        }
        if (G - d > 800L)
        {
          localIterator.remove();
        }
        else
        {
          PointF localPointF = localg.a();
          D.reset();
          D.setScale(localg.b(), localg.b(), E.x, E.y);
          D.postRotate(localg.c(), E.x, E.y);
          D.postTranslate(x, y);
          paramCanvas.save();
          paramCanvas.concat(D);
          a.draw(paramCanvas);
          paramCanvas.restore();
        }
      }
    } while (!a());
    a(ChargeCleanView.Status.FINISH);
  }
  
  public void a(ChargeCleanView.Status paramStatus)
  {
    if (N == paramStatus) {
      return;
    }
    G = SystemClock.elapsedRealtime();
    switch (f.a[paramStatus.ordinal()])
    {
    default: 
      return;
    case 1: 
      if (N != ChargeCleanView.Status.IDLE)
      {
        M.a(false);
        N = ChargeCleanView.Status.IDLE;
        return;
      }
      l = G;
      m = (((float)l + 800.0F * p));
      n = (((float)m + 800.0F * p));
    }
    for (;;)
    {
      N = paramStatus;
      invalidate();
      return;
      if (N != ChargeCleanView.Status.INIT)
      {
        return;
        if (N != ChargeCleanView.Status.ROTATE)
        {
          postDelayed(new c(this), 500L);
          return;
        }
        int i1 = 0;
        while (i1 < L.size())
        {
          L.get(i1)).d = (G + i1 * 200);
          L.get(i1)).b.set(I + (float)(a * Math.cos(-1.0471975511965976D * i1) - E.x), J + (float)(a * Math.sin(-1.0471975511965976D * i1) - E.y));
          i1 += 1;
        }
        H[0] = G;
        H[1] = (H[0] + 400L);
        H[2] = (H[1] + 400L);
        continue;
        if (N != ChargeCleanView.Status.CLEAN) {
          break;
        }
        o = G;
        continue;
        if (N != ChargeCleanView.Status.FINISH) {
          break;
        }
        if (M != null)
        {
          M.a(true);
          M = null;
        }
      }
    }
  }
  
  public ChargeCleanView.Status getStatus()
  {
    return N;
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    if (N == ChargeCleanView.Status.IDLE) {
      return;
    }
    G = SystemClock.elapsedRealtime();
    if (G - m > 800L) {
      a(ChargeCleanView.Status.ROTATE);
    }
    if (G - o > 800L) {
      a(ChargeCleanView.Status.DONE);
    }
    switch (f.a[N.ordinal()])
    {
    default: 
      return;
    }
    for (;;)
    {
      g(paramCanvas);
      f(paramCanvas);
      a(paramCanvas);
      e(paramCanvas);
      b(paramCanvas);
      c(paramCanvas);
      d(paramCanvas);
      h(paramCanvas);
      invalidate();
      return;
      K += 8.0F;
      continue;
      K += 12.0F;
      continue;
      K += 10.0F;
    }
  }
  
  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    I = (paramInt1 >> 1);
    J = (paramInt2 >> 1);
    PointF[] arrayOfPointF = new PointF[8];
    paramInt1 = 0;
    while (paramInt1 < arrayOfPointF.length)
    {
      arrayOfPointF[paramInt1] = new PointF(I + (float)(a * Math.cos(0.7853981633974483D * paramInt1)), J + (float)(a * Math.sin(0.7853981633974483D * paramInt1)));
      paramInt1 += 1;
    }
    C.reset();
    paramInt1 = 0;
    while (paramInt1 < arrayOfPointF.length / 2)
    {
      C.moveTo(x, y);
      C.lineTo(length2x, length2y);
      paramInt1 += 1;
    }
  }
  
  public void setDrawables(List<Drawable> paramList)
  {
    j.a().a(new d(this, paramList));
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.lockscreen.ui.ChargeCleanView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */