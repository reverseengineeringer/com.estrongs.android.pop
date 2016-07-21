package android.support.design.internal;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.support.design.i;
import android.support.design.j;
import android.support.v4.view.cn;
import android.util.AttributeSet;
import android.widget.FrameLayout;

public class ScrimInsetsFrameLayout
  extends FrameLayout
{
  private Drawable a;
  private Rect b;
  private Rect c = new Rect();
  
  public ScrimInsetsFrameLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public ScrimInsetsFrameLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, j.ScrimInsetsFrameLayout, paramInt, i.Widget_Design_ScrimInsetsFrameLayout);
    a = paramContext.getDrawable(j.ScrimInsetsFrameLayout_insetForeground);
    paramContext.recycle();
    setWillNotDraw(true);
    cn.a(this, new p(this));
  }
  
  protected void a(Rect paramRect) {}
  
  public void draw(Canvas paramCanvas)
  {
    super.draw(paramCanvas);
    int i = getWidth();
    int j = getHeight();
    if ((b != null) && (a != null))
    {
      int k = paramCanvas.save();
      paramCanvas.translate(getScrollX(), getScrollY());
      c.set(0, 0, i, b.top);
      a.setBounds(c);
      a.draw(paramCanvas);
      c.set(0, j - b.bottom, i, j);
      a.setBounds(c);
      a.draw(paramCanvas);
      c.set(0, b.top, b.left, j - b.bottom);
      a.setBounds(c);
      a.draw(paramCanvas);
      c.set(i - b.right, b.top, i, j - b.bottom);
      a.setBounds(c);
      a.draw(paramCanvas);
      paramCanvas.restoreToCount(k);
    }
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    if (a != null) {
      a.setCallback(this);
    }
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    if (a != null) {
      a.setCallback(null);
    }
  }
}

/* Location:
 * Qualified Name:     android.support.design.internal.ScrimInsetsFrameLayout
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */