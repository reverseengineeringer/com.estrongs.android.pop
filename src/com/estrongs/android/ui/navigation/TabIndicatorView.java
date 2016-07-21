package com.estrongs.android.ui.navigation;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import com.estrongs.android.ui.d.g;
import com.estrongs.android.ui.theme.at;

public class TabIndicatorView
  extends View
{
  Paint a;
  Paint b;
  Rect c;
  Rect d;
  Rect e;
  int f = -1;
  int g = -1;
  int h;
  int i = 0;
  float j = 0.0F;
  
  public TabIndicatorView(Context paramContext)
  {
    super(paramContext);
    a();
  }
  
  public TabIndicatorView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a();
  }
  
  public TabIndicatorView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a();
  }
  
  private void a()
  {
    a = new Paint();
    a.setColor(at.a(getContext()).c(2131558640));
    b = new Paint();
    b.setColor(at.a(getContext()).c(2131558641));
  }
  
  public void a(int paramInt, float paramFloat)
  {
    try
    {
      i = paramInt;
      j = paramFloat;
      invalidate();
      return;
    }
    catch (Exception localException) {}
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    if (c == null)
    {
      f = getWidth();
      g = getHeight();
      h = (f / 2);
      c = new Rect();
      c.left = 0;
      c.top = 0;
      c.bottom = g;
      c.right = h;
      d = new Rect();
      d.left = 0;
      d.top = 0;
      d.bottom = g;
      d.right = 0;
      k = g.a(getContext(), 1.0F);
      e = new Rect(0, g - k, f, g);
    }
    int k = (int)(h * (i + j));
    c.left = k;
    c.right = (k + h);
    d.right = (c.left - h);
    paramCanvas.drawRect(e, a);
    paramCanvas.drawRect(c, b);
    paramCanvas.drawRect(d, b);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.navigation.TabIndicatorView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */