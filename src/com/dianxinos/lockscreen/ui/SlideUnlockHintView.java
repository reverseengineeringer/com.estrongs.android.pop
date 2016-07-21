package com.dianxinos.lockscreen.ui;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Paint.Cap;
import android.graphics.Paint.FontMetrics;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.Shader;
import android.graphics.Shader.TileMode;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.animation.LinearInterpolator;
import com.dianxinos.lockscreen.ae;
import com.dianxinos.lockscreen.c.l;
import com.nineoldandroids.a.ac;

public class SlideUnlockHintView
  extends View
{
  private static int a;
  private static int b;
  private static int c;
  private static int d;
  private static int e;
  private static int f;
  private static final float[] g = { 0.0F, 0.3F, 1.0F };
  private static final int[] h = { -419430401, 822083583, 822083583 };
  private Paint i;
  private Shader j;
  private ac k;
  private Matrix l;
  private Path[] m;
  private String n;
  private Rect o;
  private Paint.FontMetrics p;
  private int q = 0;
  private int r = 0;
  private int s;
  private int t;
  private int u;
  private Context v;
  private boolean w;
  private t x;
  
  public SlideUnlockHintView(Context paramContext)
  {
    super(paramContext);
    a(paramContext, null);
  }
  
  public SlideUnlockHintView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a(paramContext, paramAttributeSet);
  }
  
  private void a(int paramInt1, int paramInt2)
  {
    int i1 = 0;
    if ((paramInt1 == 0) && (paramInt2 == 0)) {}
    do
    {
      return;
      paramInt1 = o.width();
      if (b + a * 3 + paramInt1 > 0) {
        paramInt1 += d;
      }
      for (;;)
      {
        u = paramInt1;
        paramInt2 = (s - u) / 2 - f;
        i2 = (t - c) / 2;
        paramInt1 = i1;
        while (paramInt1 < 3)
        {
          Path localPath = new Path();
          i1 = b * paramInt1 + paramInt2;
          localPath.moveTo(i1, i2);
          localPath.lineTo(b + i1, c / 2 + i2);
          localPath.lineTo(i1, c + i2);
          m[paramInt1] = localPath;
          paramInt1 += 1;
        }
        paramInt1 = 0;
      }
      paramInt1 = u;
      i1 = f;
      int i2 = u;
      int i3 = f;
      j = new LinearGradient(paramInt2 - paramInt1 - i1, 0.0F, i3 + (i2 + paramInt2), 0.0F, h, g, Shader.TileMode.MIRROR);
      i.setShader(j);
    } while ((o.width() <= 0) || (o.height() <= 0));
    q = (b * 3 + paramInt2 + d);
    r = ((int)((t - p.bottom - p.top) / 2.0F));
  }
  
  private void a(Context paramContext, AttributeSet paramAttributeSet)
  {
    v = paramContext;
    x = new t(this, null);
    a = l.a(v, 1);
    b = l.a(v, 10);
    c = l.a(v, 18);
    d = l.a(v, 8);
    e = l.a(v, 22);
    f = l.a(v, 14);
    i = new Paint();
    i.setAntiAlias(true);
    i.setStrokeCap(Paint.Cap.ROUND);
    i.setStrokeWidth(a);
    i.setStyle(Paint.Style.STROKE);
    l = new Matrix();
    m = new Path[3];
    ac localac = ac.b(new float[] { 0.0F, 1.0F });
    localac.b(1600L);
    localac.a(new LinearInterpolator());
    localac.a(new r(this));
    localac.a(new s(this));
    k = localac;
    o = new Rect();
    i.setStyle(Paint.Style.FILL);
    if (paramAttributeSet == null)
    {
      i.setTextSize(l.b(v, 20));
      i.setColor(-1);
    }
    for (;;)
    {
      p = i.getFontMetrics();
      if (!TextUtils.isEmpty(n)) {
        i.getTextBounds(n, 0, n.length(), o);
      }
      return;
      paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, ae.SlideUnlockHintView);
      n = paramContext.getString(ae.SlideUnlockHintView_hintText);
      float f1 = paramContext.getDimension(ae.SlideUnlockHintView_hintTextSize, e);
      int i1 = paramContext.getColor(ae.SlideUnlockHintView_hintTextColor, -1);
      paramContext.recycle();
      i.setTextSize(f1);
      i.setColor(i1);
    }
  }
  
  private void a(Canvas paramCanvas)
  {
    j.setLocalMatrix(l);
    i.setShader(j);
    i.setStyle(Paint.Style.STROKE);
    i.setStrokeCap(Paint.Cap.ROUND);
    i.setStrokeWidth(a);
    Path[] arrayOfPath = m;
    int i2 = arrayOfPath.length;
    int i1 = 0;
    while (i1 < i2)
    {
      Path localPath = arrayOfPath[i1];
      if (localPath != null) {
        paramCanvas.drawPath(localPath, i);
      }
      i1 += 1;
    }
  }
  
  private void b(Canvas paramCanvas)
  {
    if (o.height() == 0) {
      return;
    }
    i.setStyle(Paint.Style.FILL);
    paramCanvas.drawText(n, q, r, i);
  }
  
  private void setGradientPositionByProgress(float paramFloat)
  {
    l.setTranslate((u + f) * paramFloat * 3.0F, 0.0F);
  }
  
  public void a()
  {
    w = false;
    x.removeCallbacksAndMessages(null);
    k.c();
    x = null;
  }
  
  public void b()
  {
    w = true;
    if (!k.e()) {
      k.a();
    }
  }
  
  public void c()
  {
    w = false;
    x.removeCallbacksAndMessages(null);
    k.c();
    setGradientPositionByProgress(0.0F);
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    a(paramCanvas);
    b(paramCanvas);
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i2 = View.MeasureSpec.getMode(paramInt1);
    int i1 = View.MeasureSpec.getMode(paramInt2);
    if (i2 == 1073741824)
    {
      s = View.MeasureSpec.getSize(paramInt1);
      if (i1 != 1073741824) {
        break label97;
      }
    }
    label97:
    for (t = View.MeasureSpec.getSize(paramInt2);; t = Math.max(c, o.height()))
    {
      setMeasuredDimension(s, t);
      return;
      paramInt1 = b;
      i2 = o.width();
      if (paramInt1 * 3 + i2 > 0) {}
      for (paramInt1 = d + i2;; paramInt1 = 0)
      {
        s = paramInt1;
        break;
      }
    }
  }
  
  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    a(paramInt1, paramInt2);
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.lockscreen.ui.SlideUnlockHintView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */