package com.estrongs.android.pop.esclasses;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.ViewGroup.LayoutParams;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;

public class ESScreenFitImageView2
  extends ImageView
{
  private Bitmap a;
  private int b;
  private int c;
  private boolean d;
  private boolean e;
  
  public ESScreenFitImageView2(Context paramContext)
  {
    super(paramContext);
    a();
  }
  
  public ESScreenFitImageView2(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public ESScreenFitImageView2(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a();
  }
  
  private void a()
  {
    d = true;
    if (e)
    {
      c();
      e = false;
    }
  }
  
  private void b()
  {
    int k = getResourcesgetDisplayMetricswidthPixels;
    int m = getResourcesgetDisplayMetricsheightPixels;
    int j = c;
    int i = b;
    if (b > c)
    {
      double d2 = k * 1.0D / i;
      double d1 = d2;
      if (j * d2 > m) {
        d1 = m * 1.0D / j;
      }
      j = (int)(j * d1);
      i = (int)(d1 * i);
      localLayoutParams = getLayoutParams();
      width = i;
      height = j;
      setLayoutParams(localLayoutParams);
      setScaleType(ImageView.ScaleType.FIT_XY);
      return;
    }
    k = a(175.0F);
    i = (int)(k * i / j);
    ViewGroup.LayoutParams localLayoutParams = getLayoutParams();
    width = i;
    height = k;
    setLayoutParams(localLayoutParams);
    setScaleType(ImageView.ScaleType.CENTER_INSIDE);
  }
  
  private void c()
  {
    if (!d) {
      e = true;
    }
    while (a == null) {
      return;
    }
    c = a.getHeight();
    b = a.getWidth();
    invalidate();
  }
  
  public int a(float paramFloat)
  {
    return (int)(getResourcesgetDisplayMetricsdensityDpi / 160.0F * paramFloat);
  }
  
  public void setImageBitmap(Bitmap paramBitmap)
  {
    super.setImageBitmap(paramBitmap);
    a = paramBitmap;
    c();
    b();
  }
  
  public void setImageDrawable(Drawable paramDrawable)
  {
    super.setImageDrawable(paramDrawable);
    if ((paramDrawable instanceof BitmapDrawable))
    {
      a = ((BitmapDrawable)paramDrawable).getBitmap();
      c();
      b();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.esclasses.ESScreenFitImageView2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */