package com.facebook.ads.internal.view;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.util.DisplayMetrics;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;

public class f
  extends LinearLayout
{
  private DisplayMetrics a;
  private Bitmap b;
  private Bitmap c;
  private ImageView d;
  private ImageView e;
  private ImageView f;
  private float g;
  private Bitmap h;
  private Bitmap i;
  private int j;
  private int k;
  
  public f(Context paramContext)
  {
    super(paramContext);
    b();
  }
  
  private void a()
  {
    if (getHeight() > 0)
    {
      k = c();
      j = ((int)Math.ceil((getHeight() - k) / 2.0F));
      Matrix localMatrix = new Matrix();
      localMatrix.preScale(1.0F, -1.0F);
      int m = (int)Math.floor((getHeight() - k) / 2.0F);
      float f1 = b.getHeight() / k;
      int n = Math.round(j * f1);
      if (n > 0)
      {
        h = Bitmap.createBitmap(c, 0, 0, c.getWidth(), n, localMatrix, true);
        d.setImageBitmap(h);
      }
      m = Math.round(m * f1);
      if (m > 0)
      {
        i = Bitmap.createBitmap(c, 0, c.getHeight() - m, c.getWidth(), m, localMatrix, true);
        f.setImageBitmap(i);
      }
    }
  }
  
  private void b()
  {
    a = getContext().getResources().getDisplayMetrics();
    setOrientation(1);
    d = new ImageView(getContext());
    d.setScaleType(ImageView.ScaleType.FIT_XY);
    addView(d);
    e = new ImageView(getContext());
    e.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
    e.setScaleType(ImageView.ScaleType.FIT_CENTER);
    addView(e);
    f = new ImageView(getContext());
    f.setScaleType(ImageView.ScaleType.FIT_XY);
    addView(f);
  }
  
  private int c()
  {
    return (int)Math.round(getWidth() / 1.91D);
  }
  
  public void a(Bitmap paramBitmap1, Bitmap paramBitmap2)
  {
    if (paramBitmap1 == null)
    {
      e.setImageDrawable(null);
      return;
    }
    e.setImageBitmap(Bitmap.createBitmap(paramBitmap1));
    b = paramBitmap1;
    c = paramBitmap2;
    g = (paramBitmap1.getHeight() / paramBitmap1.getWidth());
    a();
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if ((b == null) || (c == null))
    {
      super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
      return;
    }
    int m = c();
    if ((h == null) || (k != m)) {
      a();
    }
    d.layout(paramInt1, paramInt2, paramInt3, j);
    e.layout(paramInt1, j + paramInt2, paramInt3, j + k);
    f.layout(paramInt1, j + paramInt2 + k, paramInt3, paramInt4);
  }
}

/* Location:
 * Qualified Name:     com.facebook.ads.internal.view.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */