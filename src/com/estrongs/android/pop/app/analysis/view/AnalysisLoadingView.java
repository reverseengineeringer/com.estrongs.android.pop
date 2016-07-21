package com.estrongs.android.pop.app.analysis.view;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.graphics.Path.Direction;
import android.graphics.Point;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region.Op;
import android.graphics.Shader.TileMode;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.GradientDrawable.Orientation;
import android.os.Build.VERSION;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.LinearInterpolator;
import com.estrongs.android.ui.d.g;

public class AnalysisLoadingView
  extends View
{
  private Paint a;
  private TextPaint b;
  private Paint c;
  private Paint d;
  private Point e;
  private int f = 2131165283;
  private int g = 2131165275;
  private int h = 2131165262;
  private int i = 2131165262;
  private String j = "#ffffff";
  private long k = 3000L;
  private String l;
  private AnimatorSet m;
  private float n = 0.0F;
  private ObjectAnimator o;
  private boolean p;
  private w q;
  private PorterDuffXfermode r;
  private BitmapShader s;
  private Matrix t;
  private Bitmap u;
  private Bitmap v;
  private Bitmap w;
  private Bitmap x;
  private Bitmap y;
  private RectF z;
  
  public AnalysisLoadingView(Context paramContext)
  {
    super(paramContext);
    c();
  }
  
  public AnalysisLoadingView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    c();
  }
  
  public AnalysisLoadingView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    c();
  }
  
  public AnalysisLoadingView(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2)
  {
    super(paramContext, paramAttributeSet, paramInt1, paramInt2);
    c();
  }
  
  private int a(int paramInt)
  {
    return getContext().getResources().getDimensionPixelSize(paramInt);
  }
  
  private void a(Canvas paramCanvas)
  {
    if ((l == null) || (l.length() <= 0)) {
      return;
    }
    StringBuffer localStringBuffer = new StringBuffer(l);
    float f1 = b.descent();
    float f2 = b.ascent();
    float f3 = (b.descent() + b.ascent()) / 2.0F;
    f3 = b.measureText(localStringBuffer.toString()) / 2.0F;
    if (z == null)
    {
      z = new RectF();
      z.left = 0.0F;
      z.top = 0.0F;
      z.right = getWidth();
      z.bottom = (f1 - f2 + a(h) * 2);
    }
    paramCanvas.drawText(localStringBuffer.toString(), z.centerX() - f3, z.centerY(), b);
  }
  
  private void b(Canvas paramCanvas)
  {
    Rect localRect = new Rect();
    left = (e.x - x.getWidth() / 2);
    top = (e.y - x.getHeight() / 2);
    right = (e.x + x.getWidth() / 2);
    bottom = (e.y + x.getHeight() / 2);
    paramCanvas.drawBitmap(x, null, localRect, null);
  }
  
  private void c()
  {
    if (Build.VERSION.SDK_INT > 11) {
      setLayerType(1, null);
    }
    r = new PorterDuffXfermode(PorterDuff.Mode.SRC_OUT);
    u = BitmapFactory.decodeResource(getResources(), 2130837618);
    v = BitmapFactory.decodeResource(getResources(), 2130837617);
    w = BitmapFactory.decodeResource(getResources(), 2130837616);
    x = BitmapFactory.decodeResource(getResources(), 2130837615);
    y = BitmapFactory.decodeResource(getResources(), 2130837609);
    a = new Paint(1);
    a.setStyle(Paint.Style.STROKE);
    a.setStrokeWidth(0.0F);
    b = new TextPaint(1);
    b.setColor(Color.parseColor(j));
    b.setTextSize(a(i));
    c = new Paint(1);
    c.setColor(Color.parseColor("#dedfe0"));
    d = new Paint(1);
    s = new BitmapShader(y, Shader.TileMode.REPEAT, Shader.TileMode.REPEAT);
    t = new Matrix();
    s.setLocalMatrix(t);
    d.setShader(s);
    o = ObjectAnimator.ofFloat(this, "animateScan", new float[] { 0.0F, 1.0F });
    o.setRepeatCount(-1);
    o.setRepeatMode(1);
    o.setInterpolator(new LinearInterpolator());
    o.setDuration(k);
    o.addListener(new v(this));
    m = new AnimatorSet();
    m.playTogether(new Animator[] { o });
    q = new w(this, null);
  }
  
  private void c(Canvas paramCanvas)
  {
    int i1 = paramCanvas.saveLayer(0.0F, 0.0F, getWidth(), getHeight(), null, 31);
    Rect localRect = new Rect();
    left = 0;
    top = 0;
    right = getWidth();
    bottom = getHeight();
    b(paramCanvas);
    t.setTranslate(0.0F, getWidth() * n);
    s.setLocalMatrix(t);
    d.setShader(s);
    paramCanvas.drawCircle(e.x, e.y, g.a(getContext(), 75.0F), d);
    d.setXfermode(null);
    paramCanvas.restoreToCount(i1);
  }
  
  private void d(Canvas paramCanvas)
  {
    Rect localRect = new Rect();
    left = (e.x - u.getWidth() / 2);
    top = (e.y - u.getHeight() / 2);
    right = (e.x + u.getWidth() / 2);
    bottom = (e.y + u.getHeight() / 2);
    int i1;
    if (p)
    {
      paramCanvas.drawBitmap(v, null, localRect, null);
      paramCanvas.save();
      Path localPath = new Path();
      localPath.addCircle(e.x, e.y, a(2131165327), Path.Direction.CCW);
      paramCanvas.clipPath(localPath, Region.Op.REPLACE);
      i1 = paramCanvas.saveLayer(0.0F, 0.0F, getWidth(), getHeight(), null, 31);
      if (!p) {
        break label347;
      }
      paramCanvas.drawBitmap(u, null, localRect, null);
    }
    for (;;)
    {
      a.setXfermode(r);
      localRect = new Rect();
      left = (-Math.round(getWidth() * (1.0F - n)));
      top = 0;
      right = (left + getWidth());
      bottom = getWidth();
      if (p) {
        paramCanvas.rotate(180.0F, e.x, e.y);
      }
      paramCanvas.drawBitmap(w, null, localRect, a);
      a.setXfermode(null);
      paramCanvas.restoreToCount(i1);
      paramCanvas.restore();
      return;
      paramCanvas.drawBitmap(u, null, localRect, null);
      break;
      label347:
      paramCanvas.drawBitmap(v, null, localRect, null);
    }
  }
  
  private void e(Canvas paramCanvas)
  {
    paramCanvas.save();
    Rect localRect = new Rect();
    left = 0;
    top = 0;
    right = getWidth();
    bottom = getHeight();
    GradientDrawable localGradientDrawable = new GradientDrawable(GradientDrawable.Orientation.TL_BR, new int[] { -13261582, -13261582, -13261582 });
    localGradientDrawable.setShape(0);
    localGradientDrawable.setGradientType(0);
    localGradientDrawable.setCornerRadii(new float[] { a(2131165312), a(2131165312), a(2131165312), a(2131165312), 0.0F, 0.0F, 0.0F, 0.0F });
    localGradientDrawable.setBounds(localRect);
    localGradientDrawable.draw(paramCanvas);
    paramCanvas.restore();
  }
  
  public void a()
  {
    if (Build.VERSION.SDK_INT < 11) {
      if (!q.a()) {}
    }
    while (m.isRunning())
    {
      return;
      n = 0.0F;
      startAnimation(q);
      return;
    }
    n = 0.0F;
    m.start();
  }
  
  public void b()
  {
    if (Build.VERSION.SDK_INT < 11) {
      if ((q != null) && (q.a())) {
        q.cancel();
      }
    }
    while ((m == null) || (!m.isRunning())) {
      return;
    }
    m.end();
    m.cancel();
  }
  
  public float getAnimateScan()
  {
    return n;
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    paramCanvas.drawColor(0);
    e = new Point(getWidth() / 2, (getHeight() + a(2131165273)) / 2);
    e(paramCanvas);
    a(paramCanvas);
    c(paramCanvas);
    d(paramCanvas);
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    int i1 = a(f);
    int i2 = a(g);
    setMeasuredDimension(Math.max(getSuggestedMinimumWidth(), resolveSize(i1, paramInt1)), Math.max(getSuggestedMinimumHeight(), resolveSize(i2, paramInt2)));
  }
  
  public void setAnimateScan(float paramFloat)
  {
    n = paramFloat;
    postInvalidate();
  }
  
  public void setTitle(String paramString)
  {
    l = paramString;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.analysis.view.AnalysisLoadingView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */