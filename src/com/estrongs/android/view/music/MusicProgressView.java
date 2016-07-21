package com.estrongs.android.view.music;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.PointF;
import android.graphics.RectF;
import android.graphics.Shader.TileMode;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.ImageView;
import com.estrongs.android.h.a.b;
import com.estrongs.android.ui.theme.at;

public class MusicProgressView
  extends ImageView
{
  private int a = 2131165305;
  private int b = 2131558647;
  private int c = 2131558646;
  private int d = 2131165289;
  private int e = 2130837909;
  private Paint f;
  private Paint g;
  private Paint h;
  private RectF i;
  private float j;
  private int k;
  private int l;
  private float m;
  private Matrix n;
  private BitmapShader o;
  private PointF p;
  private Drawable q;
  
  public MusicProgressView(Context paramContext)
  {
    super(paramContext);
    a();
  }
  
  public MusicProgressView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a();
  }
  
  public MusicProgressView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a();
  }
  
  private int a(int paramInt)
  {
    return getContext().getResources().getDimensionPixelSize(paramInt);
  }
  
  private Bitmap a(Drawable paramDrawable)
  {
    if ((paramDrawable instanceof BitmapDrawable)) {
      return ((BitmapDrawable)paramDrawable).getBitmap();
    }
    int i2;
    if ((paramDrawable instanceof b)) {
      i2 = (int)((b)paramDrawable).a().width();
    }
    for (int i1 = (int)((b)paramDrawable).a().height();; i1 = paramDrawable.getIntrinsicHeight())
    {
      Bitmap localBitmap = Bitmap.createBitmap(i2, i1, Bitmap.Config.ARGB_8888);
      Canvas localCanvas = new Canvas(localBitmap);
      paramDrawable.setBounds(0, 0, i2, i1);
      paramDrawable.draw(localCanvas);
      return localBitmap;
      i2 = paramDrawable.getIntrinsicWidth();
    }
  }
  
  private void a()
  {
    f = new Paint(1);
    f.setStyle(Paint.Style.FILL);
    f.setColor(getResources().getColor(c));
    g = new Paint(1);
    g.setStyle(Paint.Style.FILL);
    g.setColor(getResources().getColor(b));
    g.setAlpha(250);
  }
  
  private void a(Canvas paramCanvas)
  {
    f.setColor(getResources().getColor(c));
    paramCanvas.drawArc(i, -90.0F, j, true, f);
  }
  
  private void b(Canvas paramCanvas)
  {
    paramCanvas.drawCircle(p.x, p.y, l, g);
    if (q == null) {
      q = getResources().getDrawable(e);
    }
    n = new Matrix();
    h = new Paint();
    h.setAntiAlias(true);
    Bitmap localBitmap = a(q);
    o = new BitmapShader(localBitmap, Shader.TileMode.CLAMP, Shader.TileMode.CLAMP);
    int i1 = Math.min(localBitmap.getWidth(), localBitmap.getHeight()) / 2;
    float f1 = l * 1.0F / i1;
    n.setScale(f1, f1);
    i1 = getProgressWidth();
    n.postTranslate(i1, i1);
    o.setLocalMatrix(n);
    h.setShader(o);
    paramCanvas.drawCircle(p.x, p.y, l, h);
  }
  
  private int getMinWidth()
  {
    return Math.min(getWidth(), getHeight());
  }
  
  private int getProgressWidth()
  {
    return getResources().getDimensionPixelOffset(d);
  }
  
  public void a(long paramLong1, long paramLong2)
  {
    if (paramLong1 <= 0L) {
      m = 0.0F;
    }
    for (;;)
    {
      j = (m * 360.0F);
      postInvalidate();
      return;
      if (paramLong1 >= paramLong2) {
        m = 1.0F;
      } else {
        m = ((float)paramLong1 * 1.0F / (float)paramLong2);
      }
    }
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    paramCanvas.drawColor(0);
    k = (getMinWidth() / 2);
    l = (k - getProgressWidth());
    i = new RectF(0.0F, 0.0F, getWidth(), getHeight());
    p = new PointF(i.centerX(), i.centerY());
    a(paramCanvas);
    b(paramCanvas);
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    int i1 = a(a);
    setMeasuredDimension(Math.max(getSuggestedMinimumWidth(), resolveSize(i1, paramInt1)), Math.max(getSuggestedMinimumHeight(), resolveSize(i1, paramInt2)));
  }
  
  public void setBackgroundDrawable(Drawable paramDrawable)
  {
    super.setBackgroundDrawable(null);
    q = paramDrawable;
  }
  
  public void setBgColor(int paramInt)
  {
    b = paramInt;
    g.setColor(getResources().getColor(b));
  }
  
  public void setImageDrawable(Drawable paramDrawable)
  {
    super.setImageDrawable(null);
    q = paramDrawable;
  }
  
  public void setImageResource(int paramInt)
  {
    q = at.a(getContext()).a(paramInt);
  }
  
  public void setProgressColor(int paramInt)
  {
    c = paramInt;
    f.setColor(getResources().getColor(c));
  }
  
  public void setProgressWidth(int paramInt)
  {
    d = paramInt;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.music.MusicProgressView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */