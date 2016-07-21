package com.estrongs.android.ui.view;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.RectF;
import android.graphics.Shader.TileMode;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import com.estrongs.android.pop.ah;

public class CircleImageView
  extends ImageView
{
  private static final ImageView.ScaleType a = ImageView.ScaleType.CENTER_CROP;
  private static final Bitmap.Config b = Bitmap.Config.ARGB_8888;
  private final RectF c = new RectF();
  private final RectF d = new RectF();
  private final Matrix e = new Matrix();
  private final Paint f = new Paint();
  private final Paint g = new Paint();
  private final Paint h = new Paint();
  private int i = -16777216;
  private int j = 0;
  private int k = 0;
  private Bitmap l;
  private BitmapShader m;
  private int n;
  private int o;
  private float p;
  private float q;
  private ColorFilter r;
  private boolean s;
  private boolean t;
  private boolean u;
  
  public CircleImageView(Context paramContext)
  {
    super(paramContext);
    a();
  }
  
  public CircleImageView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public CircleImageView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, ah.CircleImageView, paramInt, 0);
    j = paramContext.getDimensionPixelSize(0, 0);
    i = paramContext.getColor(1, -16777216);
    u = paramContext.getBoolean(2, false);
    k = paramContext.getColor(3, 0);
    paramContext.recycle();
    a();
  }
  
  private Bitmap a(Drawable paramDrawable)
  {
    if (paramDrawable == null) {
      return null;
    }
    if ((paramDrawable instanceof BitmapDrawable)) {
      return ((BitmapDrawable)paramDrawable).getBitmap();
    }
    try
    {
      if ((paramDrawable instanceof ColorDrawable)) {}
      for (Bitmap localBitmap = Bitmap.createBitmap(2, 2, b);; localBitmap = Bitmap.createBitmap(paramDrawable.getIntrinsicWidth(), paramDrawable.getIntrinsicHeight(), b))
      {
        Canvas localCanvas = new Canvas(localBitmap);
        paramDrawable.setBounds(0, 0, localCanvas.getWidth(), localCanvas.getHeight());
        paramDrawable.draw(localCanvas);
        return localBitmap;
      }
      return null;
    }
    catch (Exception paramDrawable)
    {
      paramDrawable.printStackTrace();
    }
  }
  
  private void a()
  {
    super.setScaleType(a);
    s = true;
    if (t)
    {
      b();
      t = false;
    }
  }
  
  private void b()
  {
    if (!s) {
      t = true;
    }
    while ((getWidth() == 0) && (getHeight() == 0)) {
      return;
    }
    if (l == null)
    {
      invalidate();
      return;
    }
    m = new BitmapShader(l, Shader.TileMode.CLAMP, Shader.TileMode.CLAMP);
    f.setAntiAlias(true);
    f.setShader(m);
    g.setStyle(Paint.Style.STROKE);
    g.setAntiAlias(true);
    g.setColor(i);
    g.setStrokeWidth(j);
    h.setStyle(Paint.Style.FILL);
    h.setAntiAlias(true);
    h.setColor(k);
    o = l.getHeight();
    n = l.getWidth();
    d.set(0.0F, 0.0F, getWidth(), getHeight());
    q = Math.min((d.height() - j) / 2.0F, (d.width() - j) / 2.0F);
    c.set(d);
    if (!u) {
      c.inset(j, j);
    }
    p = Math.min(c.height() / 2.0F, c.width() / 2.0F);
    c();
    invalidate();
  }
  
  private void c()
  {
    float f1 = 0.0F;
    e.set(null);
    float f3;
    float f2;
    if (n * c.height() > c.width() * o)
    {
      f3 = c.height() / o;
      f2 = (c.width() - n * f3) * 0.5F;
    }
    for (;;)
    {
      e.setScale(f3, f3);
      e.postTranslate((int)(f2 + 0.5F) + c.left, (int)(f1 + 0.5F) + c.top);
      m.setLocalMatrix(e);
      return;
      f3 = c.width() / n;
      f1 = c.height();
      float f4 = o;
      f2 = 0.0F;
      f1 = (f1 - f4 * f3) * 0.5F;
    }
  }
  
  public int getBorderColor()
  {
    return i;
  }
  
  public int getBorderWidth()
  {
    return j;
  }
  
  public int getFillColor()
  {
    return k;
  }
  
  public ImageView.ScaleType getScaleType()
  {
    return a;
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    if (l == null) {}
    do
    {
      return;
      if (k != 0) {
        paramCanvas.drawCircle(getWidth() / 2.0F, getHeight() / 2.0F, p, h);
      }
      paramCanvas.drawCircle(getWidth() / 2.0F, getHeight() / 2.0F, p, f);
    } while (j == 0);
    paramCanvas.drawCircle(getWidth() / 2.0F, getHeight() / 2.0F, q, g);
  }
  
  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    b();
  }
  
  public void setAdjustViewBounds(boolean paramBoolean)
  {
    if (paramBoolean) {
      throw new IllegalArgumentException("adjustViewBounds not supported.");
    }
  }
  
  public void setBorderColor(int paramInt)
  {
    if (paramInt == i) {
      return;
    }
    i = paramInt;
    g.setColor(i);
    invalidate();
  }
  
  public void setBorderColorResource(int paramInt)
  {
    setBorderColor(getContext().getResources().getColor(paramInt));
  }
  
  public void setBorderOverlay(boolean paramBoolean)
  {
    if (paramBoolean == u) {
      return;
    }
    u = paramBoolean;
    b();
  }
  
  public void setBorderWidth(int paramInt)
  {
    if (paramInt == j) {
      return;
    }
    j = paramInt;
    b();
  }
  
  public void setColorFilter(ColorFilter paramColorFilter)
  {
    if (paramColorFilter == r) {
      return;
    }
    r = paramColorFilter;
    f.setColorFilter(r);
    invalidate();
  }
  
  public void setFillColor(int paramInt)
  {
    if (paramInt == k) {
      return;
    }
    k = paramInt;
    h.setColor(paramInt);
    invalidate();
  }
  
  public void setFillColorResource(int paramInt)
  {
    setFillColor(getContext().getResources().getColor(paramInt));
  }
  
  public void setImageBitmap(Bitmap paramBitmap)
  {
    super.setImageBitmap(paramBitmap);
    l = paramBitmap;
    b();
  }
  
  public void setImageDrawable(Drawable paramDrawable)
  {
    super.setImageDrawable(paramDrawable);
    l = a(paramDrawable);
    b();
  }
  
  public void setImageResource(int paramInt)
  {
    super.setImageResource(paramInt);
    l = a(getDrawable());
    b();
  }
  
  public void setImageURI(Uri paramUri)
  {
    super.setImageURI(paramUri);
    if (paramUri != null) {}
    for (paramUri = a(getDrawable());; paramUri = null)
    {
      l = paramUri;
      b();
      return;
    }
  }
  
  public void setScaleType(ImageView.ScaleType paramScaleType)
  {
    if (paramScaleType != a) {
      throw new IllegalArgumentException(String.format("ScaleType %s not supported.", new Object[] { paramScaleType }));
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.view.CircleImageView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */