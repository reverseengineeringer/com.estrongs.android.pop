package com.estrongs.android.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.util.AttributeSet;
import android.widget.TextView;
import com.estrongs.android.ui.theme.al;

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
  
  private int a()
  {
    return al.a(a).d(2131230730);
  }
  
  public void a(int paramInt)
  {
    c = paramInt;
    postInvalidate();
  }
  
  public void a(boolean paramBoolean)
  {
    b = paramBoolean;
    if (paramBoolean)
    {
      f = getBackground();
      g = new ColorDrawable(a());
      h = new LayerDrawable(new Drawable[] { f, g });
      setBackgroundDrawable(h);
    }
    for (;;)
    {
      invalidate();
      return;
      if (f != null) {
        setBackgroundDrawable(f);
      }
    }
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