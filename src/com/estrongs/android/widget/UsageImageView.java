package com.estrongs.android.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.Region.Op;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import com.estrongs.android.pop.esclasses.ESImageView;

public class UsageImageView
  extends RelativeLayout
{
  private ImageView a;
  private ImageView b;
  private Drawable c;
  private Drawable d;
  private Context e;
  private float f;
  private int g;
  
  public UsageImageView(Context paramContext)
  {
    super(paramContext);
    a();
  }
  
  public UsageImageView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a();
  }
  
  private Rect a(Rect paramRect)
  {
    int j = (int)(getMeasuredWidth() * f);
    int i = j;
    if (j > 0)
    {
      i = j;
      if (j < g) {
        i = g;
      }
    }
    return new Rect(left, top, i, bottom);
  }
  
  private void a()
  {
    e = getContext();
    a = new ESImageView(e);
    b = new ESImageView(e);
    RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(-1, -1);
    addView(a, localLayoutParams);
    addView(b, localLayoutParams);
    c = e.getResources().getDrawable(2130837607);
    d = e.getResources().getDrawable(2130837608);
    g = (d.getIntrinsicWidth() / 2);
    a.setBackgroundDrawable(c);
    b.setBackgroundDrawable(d);
    f = 0.0F;
  }
  
  public void a(float paramFloat)
  {
    f = paramFloat;
    invalidate();
  }
  
  protected void dispatchDraw(Canvas paramCanvas)
  {
    a.draw(paramCanvas);
    int i = paramCanvas.save();
    new Rect();
    paramCanvas.clipRect(a(paramCanvas.getClipBounds()), Region.Op.INTERSECT);
    b.draw(paramCanvas);
    paramCanvas.restoreToCount(i);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.widget.UsageImageView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */