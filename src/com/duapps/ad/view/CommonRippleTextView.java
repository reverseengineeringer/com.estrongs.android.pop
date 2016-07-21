package com.duapps.ad.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.TextView;
import com.dianxinos.a.a.h;

public class CommonRippleTextView
  extends TextView
{
  private final a a;
  private int b = 150994944;
  private int c = Integer.MIN_VALUE;
  
  public CommonRippleTextView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public CommonRippleTextView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    setWillNotDraw(false);
    a = new a(this);
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, h.TBRipple);
    int i = paramContext.getDimensionPixelSize(h.TBRipple_TBRippleCornerRadius, 0);
    int j = paramContext.getColor(h.TBRipple_TBRippleBackground, b);
    int k = paramContext.getColor(h.TBRipple_TBRippleColor, c);
    a.a(i);
    a.a(j);
    a.b(k);
    paramContext.recycle();
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    a.a(paramCanvas);
    super.onDraw(paramCanvas);
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    a.a(paramMotionEvent);
    return super.onTouchEvent(paramMotionEvent);
  }
  
  public boolean performClick()
  {
    if (a.a())
    {
      a.b();
      return true;
    }
    return super.performClick();
  }
}

/* Location:
 * Qualified Name:     com.duapps.ad.view.CommonRippleTextView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */