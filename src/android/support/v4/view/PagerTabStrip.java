package android.support.v4.view;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import android.widget.TextView;

public class PagerTabStrip
  extends PagerTitleStrip
{
  private int f = e;
  private int g;
  private int h;
  private int i;
  private int j;
  private int k;
  private final Paint l = new Paint();
  private final Rect m = new Rect();
  private int n = 255;
  private boolean o = false;
  private boolean p = false;
  private int q;
  private boolean r;
  private float s;
  private float t;
  private int u;
  
  public PagerTabStrip(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    l.setColor(f);
    float f1 = getResourcesgetDisplayMetricsdensity;
    g = ((int)(3.0F * f1 + 0.5F));
    h = ((int)(6.0F * f1 + 0.5F));
    i = ((int)(64.0F * f1));
    k = ((int)(16.0F * f1 + 0.5F));
    q = ((int)(1.0F * f1 + 0.5F));
    j = ((int)(f1 * 32.0F + 0.5F));
    u = ViewConfiguration.get(paramContext).getScaledTouchSlop();
    setPadding(getPaddingLeft(), getPaddingTop(), getPaddingRight(), getPaddingBottom());
    setTextSpacing(getTextSpacing());
    setWillNotDraw(false);
    b.setFocusable(true);
    b.setOnClickListener(new bx(this));
    d.setFocusable(true);
    d.setOnClickListener(new by(this));
    if (getBackground() == null) {
      o = true;
    }
  }
  
  void a(int paramInt, float paramFloat, boolean paramBoolean)
  {
    Rect localRect = m;
    int i1 = getHeight();
    int i2 = c.getLeft();
    int i3 = k;
    int i4 = c.getRight();
    int i5 = k;
    int i6 = i1 - g;
    localRect.set(i2 - i3, i6, i4 + i5, i1);
    super.a(paramInt, paramFloat, paramBoolean);
    n = ((int)(Math.abs(paramFloat - 0.5F) * 2.0F * 255.0F));
    localRect.union(c.getLeft() - k, i6, c.getRight() + k, i1);
    invalidate(localRect);
  }
  
  public boolean getDrawFullUnderline()
  {
    return o;
  }
  
  int getMinHeight()
  {
    return Math.max(super.getMinHeight(), j);
  }
  
  public int getTabIndicatorColor()
  {
    return f;
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    int i1 = getHeight();
    int i2 = c.getLeft();
    int i3 = k;
    int i4 = c.getRight();
    int i5 = k;
    int i6 = g;
    l.setColor(n << 24 | f & 0xFFFFFF);
    paramCanvas.drawRect(i2 - i3, i1 - i6, i4 + i5, i1, l);
    if (o)
    {
      l.setColor(0xFF000000 | f & 0xFFFFFF);
      paramCanvas.drawRect(getPaddingLeft(), i1 - q, getWidth() - getPaddingRight(), i1, l);
    }
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    int i1 = paramMotionEvent.getAction();
    if ((i1 != 0) && (r)) {
      return false;
    }
    float f1 = paramMotionEvent.getX();
    float f2 = paramMotionEvent.getY();
    switch (i1)
    {
    }
    for (;;)
    {
      return true;
      s = f1;
      t = f2;
      r = false;
      continue;
      if ((Math.abs(f1 - s) > u) || (Math.abs(f2 - t) > u))
      {
        r = true;
        continue;
        if (f1 < c.getLeft() - k) {
          a.setCurrentItem(a.getCurrentItem() - 1);
        } else if (f1 > c.getRight() + k) {
          a.setCurrentItem(a.getCurrentItem() + 1);
        }
      }
    }
  }
  
  public void setBackgroundColor(int paramInt)
  {
    super.setBackgroundColor(paramInt);
    if (!p) {
      if ((0xFF000000 & paramInt) != 0) {
        break label27;
      }
    }
    label27:
    for (boolean bool = true;; bool = false)
    {
      o = bool;
      return;
    }
  }
  
  public void setBackgroundDrawable(Drawable paramDrawable)
  {
    super.setBackgroundDrawable(paramDrawable);
    if (!p) {
      if (paramDrawable != null) {
        break label24;
      }
    }
    label24:
    for (boolean bool = true;; bool = false)
    {
      o = bool;
      return;
    }
  }
  
  public void setBackgroundResource(int paramInt)
  {
    super.setBackgroundResource(paramInt);
    if (!p) {
      if (paramInt != 0) {
        break label24;
      }
    }
    label24:
    for (boolean bool = true;; bool = false)
    {
      o = bool;
      return;
    }
  }
  
  public void setDrawFullUnderline(boolean paramBoolean)
  {
    o = paramBoolean;
    p = true;
    invalidate();
  }
  
  public void setPadding(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i1 = paramInt4;
    if (paramInt4 < h) {
      i1 = h;
    }
    super.setPadding(paramInt1, paramInt2, paramInt3, i1);
  }
  
  public void setTabIndicatorColor(int paramInt)
  {
    f = paramInt;
    l.setColor(f);
    invalidate();
  }
  
  public void setTabIndicatorColorResource(int paramInt)
  {
    setTabIndicatorColor(getContext().getResources().getColor(paramInt));
  }
  
  public void setTextSpacing(int paramInt)
  {
    int i1 = paramInt;
    if (paramInt < i) {
      i1 = i;
    }
    super.setTextSpacing(i1);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.PagerTabStrip
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */