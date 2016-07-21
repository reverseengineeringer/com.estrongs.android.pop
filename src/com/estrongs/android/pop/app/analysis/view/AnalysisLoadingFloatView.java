package com.estrongs.android.pop.app.analysis.view;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.graphics.Path.Direction;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.Region.Op;
import android.os.Build.VERSION;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.LinearInterpolator;

public class AnalysisLoadingFloatView
  extends View
{
  private Paint a;
  private Paint b;
  private Paint c;
  private Point d;
  private int e = 2131165306;
  private int f = 2131165306;
  private int g = 2131165273;
  private int h = 2131165270;
  private String i = "#7f000000";
  private String j = "#3335a4f2";
  private String k = "#b2000000";
  private String l = "#ff35a4f2";
  private long m = 2000L;
  private int n = 2130837612;
  private int o = 2130837611;
  private boolean p;
  private boolean q;
  private AnimatorSet r;
  private float s = 0.0F;
  private ObjectAnimator t;
  private boolean u;
  private Bitmap v;
  private Bitmap w;
  private Bitmap x;
  
  public AnalysisLoadingFloatView(Context paramContext)
  {
    super(paramContext);
    e();
  }
  
  public AnalysisLoadingFloatView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    e();
  }
  
  public AnalysisLoadingFloatView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    e();
  }
  
  private int a(int paramInt)
  {
    return getContext().getResources().getDimensionPixelSize(paramInt);
  }
  
  private void a(Canvas paramCanvas)
  {
    if (p) {
      c.setColor(Color.parseColor(j));
    }
    for (;;)
    {
      paramCanvas.drawCircle(d.x, d.y, a(g), c);
      return;
      c.setColor(Color.parseColor(i));
    }
  }
  
  private void b(Canvas paramCanvas)
  {
    if (p) {
      b.setColor(Color.parseColor(l));
    }
    for (;;)
    {
      paramCanvas.drawCircle(d.x, d.y, a(h), b);
      return;
      b.setColor(Color.parseColor(k));
    }
  }
  
  private void c(Canvas paramCanvas)
  {
    if (p)
    {
      localRect = new Rect();
      left = (d.x - w.getWidth() / 2);
      top = (d.y - w.getHeight() / 2);
      right = (d.x + w.getWidth() / 2);
      bottom = (d.y + w.getHeight() / 2);
      paramCanvas.drawBitmap(w, null, localRect, null);
      return;
    }
    Rect localRect = new Rect();
    left = (d.x - v.getWidth() / 2);
    top = (d.y - v.getHeight() / 2);
    right = (d.x + v.getWidth() / 2);
    bottom = (d.y + v.getHeight() / 2);
    paramCanvas.drawBitmap(v, null, localRect, null);
  }
  
  private void d(Canvas paramCanvas)
  {
    paramCanvas.save();
    Object localObject = new Path();
    ((Path)localObject).addCircle(d.x, d.y, a(g), Path.Direction.CCW);
    paramCanvas.clipPath((Path)localObject, Region.Op.REPLACE);
    localObject = new Rect();
    left = (-Math.round(getWidth() * (1.0F - s)));
    top = 0;
    right = (left + getWidth());
    bottom = getWidth();
    if (u) {
      paramCanvas.rotate(180.0F, d.x, d.y);
    }
    paramCanvas.drawBitmap(x, null, (Rect)localObject, a);
    paramCanvas.restore();
  }
  
  private void e()
  {
    if (Build.VERSION.SDK_INT > 11) {
      setLayerType(1, null);
    }
    v = BitmapFactory.decodeResource(getResources(), n);
    w = BitmapFactory.decodeResource(getResources(), o);
    x = BitmapFactory.decodeResource(getResources(), 2130837616);
    a = new Paint(1);
    a.setStyle(Paint.Style.STROKE);
    a.setStrokeWidth(0.0F);
    b = new Paint(1);
    b.setStyle(Paint.Style.FILL_AND_STROKE);
    b.setStrokeWidth(a(2131165254));
    c = new Paint(1);
    c.setStyle(Paint.Style.STROKE);
    c.setStrokeWidth(a(2131165254));
    t = ObjectAnimator.ofFloat(this, "animateScan", new float[] { 0.0F, 1.0F });
    t.setRepeatCount(-1);
    t.setRepeatMode(1);
    t.setInterpolator(new LinearInterpolator());
    t.setDuration(m);
    t.addListener(new a(this));
    r = new AnimatorSet();
    r.playTogether(new Animator[] { t });
  }
  
  private void f()
  {
    if (Build.VERSION.SDK_INT < 11) {}
    while (r.isRunning()) {
      return;
    }
    s = 0.0F;
    r.start();
  }
  
  private void g()
  {
    if (Build.VERSION.SDK_INT < 11) {}
    while ((r == null) || (!r.isRunning())) {
      return;
    }
    r.end();
    r.cancel();
  }
  
  public void a()
  {
    if (d()) {
      return;
    }
    q = true;
    f();
  }
  
  public void b()
  {
    q = false;
    p = false;
    if (getParent() != null)
    {
      g();
      ((ViewGroup)getParent()).removeView(this);
    }
  }
  
  public void c()
  {
    p = true;
    g();
    invalidate();
  }
  
  public boolean d()
  {
    return q;
  }
  
  public float getAnimateScan()
  {
    return s;
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    paramCanvas.drawColor(0);
    d = new Point(getWidth() / 2, getHeight() / 2);
    a(paramCanvas);
    b(paramCanvas);
    c(paramCanvas);
    if (!p) {
      d(paramCanvas);
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    int i1 = a(e);
    int i2 = a(f);
    setMeasuredDimension(Math.max(getSuggestedMinimumWidth(), resolveSize(i1, paramInt1)), Math.max(getSuggestedMinimumHeight(), resolveSize(i2, paramInt2)));
  }
  
  public void setAnimateScan(float paramFloat)
  {
    s = paramFloat;
    postInvalidate();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.analysis.view.AnalysisLoadingFloatView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */