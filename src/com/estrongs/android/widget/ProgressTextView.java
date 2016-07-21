package com.estrongs.android.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.util.AttributeSet;
import android.widget.TextView;
import com.estrongs.android.ui.theme.at;

public class ProgressTextView
  extends TextView
{
  private Context a;
  private boolean b;
  private int c = 0;
  private Rect d = new Rect();
  private Rect e = new Rect();
  private Drawable f;
  private ColorDrawable g;
  private LayerDrawable h;
  
  public ProgressTextView(Context paramContext)
  {
    super(paramContext);
  }
  
  public ProgressTextView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public ProgressTextView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  private int getProgressColor()
  {
    return at.a(a).c(2131558676);
  }
  
  public void a(int paramInt)
  {
    c = paramInt;
    postInvalidate();
  }
  
  public void a(boolean paramBoolean)
  {
    if (b == paramBoolean)
    {
      invalidate();
      return;
    }
    b = paramBoolean;
    if (paramBoolean)
    {
      f = getBackground();
      g = new ColorDrawable(getProgressColor());
      h = new LayerDrawable(new Drawable[] { f, g });
      setBackgroundDrawable(h);
    }
    for (;;)
    {
      invalidate();
      return;
      setBackgroundColor(getContext().getResources().getColor(2131558555));
    }
  }
  
  public int getProgress()
  {
    return c;
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    if (b)
    {
      getDrawingRect(d);
      e.set(d.left, d.top, d.left + (d.right - d.left) * c / 100, d.bottom);
      g.setBounds(e);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.widget.ProgressTextView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */