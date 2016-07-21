package com.estrongs.android.pop.esclasses;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.ViewGroup.LayoutParams;
import android.widget.ImageView;

public class ESScreenFitImageView
  extends ImageView
{
  private Bitmap a;
  private int b;
  private int c;
  private boolean d;
  private boolean e;
  
  public ESScreenFitImageView(Context paramContext)
  {
    super(paramContext);
    a();
  }
  
  public ESScreenFitImageView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public ESScreenFitImageView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
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
    int j = getResourcesgetDisplayMetricswidthPixels;
    int k = getResourcesgetDisplayMetricsheightPixels;
    int m = c;
    int i = b;
    double d2 = j * 1.0D / i;
    double d1 = d2;
    if (m * d2 > k) {
      d1 = k * 1.0D / m;
    }
    j = (int)(m * d1);
    i = (int)(d1 * i);
    ViewGroup.LayoutParams localLayoutParams = getLayoutParams();
    width = i;
    height = j;
    setLayoutParams(localLayoutParams);
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
  
  public void setImageBitmap(Bitmap paramBitmap)
  {
    super.setImageBitmap(paramBitmap);
    a = paramBitmap;
    c();
    b();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.esclasses.ESScreenFitImageView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */