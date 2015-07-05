package com.estrongs.android.ui.view;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.ImageView;
import com.estrongs.android.ui.theme.al;

public class ESPullImageView
  extends ImageView
{
  private double a = 0.0D;
  private Rect b = new Rect();
  private Rect c = new Rect();
  private Drawable d;
  private Bitmap e;
  private Drawable f;
  private Bitmap g;
  
  public ESPullImageView(Context paramContext)
  {
    super(paramContext);
  }
  
  public ESPullImageView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public ESPullImageView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  public void a(double paramDouble)
  {
    double d1 = paramDouble;
    if (paramDouble > 1.0D)
    {
      if (a == 1.0D) {
        return;
      }
      d1 = 1.0D;
    }
    a = d1;
    if (d == null) {
      d = al.a(getContext()).a(2130837990);
    }
    if (f == null) {
      f = al.a(getContext()).a(2130837991);
    }
    if (e == null) {
      e = BitmapFactory.decodeResource(getContext().getResources(), 2130837990);
    }
    if (g == null) {
      g = BitmapFactory.decodeResource(getContext().getResources(), 2130837991);
    }
    postInvalidate();
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    try
    {
      paramCanvas.drawBitmap(g, 0.0F, 0.0F, null);
      getDrawingRect(b);
      c.set(b.left, (int)(b.bottom - (b.bottom - b.top) * a), b.right, b.bottom);
      paramCanvas.save();
      paramCanvas.clipRect(c);
      paramCanvas.drawBitmap(e, 0.0F, 0.0F, null);
      paramCanvas.restore();
      return;
    }
    catch (Exception paramCanvas)
    {
      paramCanvas.printStackTrace();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.view.ESPullImageView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */