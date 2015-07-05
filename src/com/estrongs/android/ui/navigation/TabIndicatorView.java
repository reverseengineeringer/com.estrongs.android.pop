package com.estrongs.android.ui.navigation;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;

public class TabIndicatorView
  extends View
{
  Paint a;
  Rect b;
  Rect c;
  int d = -1;
  int e = -1;
  int f;
  int g = 0;
  float h = 0.0F;
  
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
    a.setColor(-13520930);
  }
  
  public void a(int paramInt, float paramFloat)
  {
    try
    {
      g = paramInt;
      h = paramFloat;
      invalidate();
      return;
    }
    catch (Exception localException) {}
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    if (b == null)
    {
      d = getWidth();
      e = getHeight();
      f = (d / 2);
      b = new Rect();
      b.left = 0;
      b.top = 0;
      b.bottom = e;
      b.right = f;
      c = new Rect();
      c.left = 0;
      c.top = 0;
      c.bottom = e;
      c.right = 0;
    }
    int i = (int)(f * (g + h));
    b.left = i;
    b.right = (i + f);
    c.right = (b.left - f);
    paramCanvas.drawRect(b, a);
    paramCanvas.drawRect(c, a);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.navigation.TabIndicatorView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */