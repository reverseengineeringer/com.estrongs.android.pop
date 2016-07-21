package com.facebook.ads.internal.view;

import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils.TruncateAt;
import android.util.DisplayMetrics;
import android.view.View.MeasureSpec;
import android.widget.TextView;

public class l
  extends TextView
{
  private float a;
  private float b = 8.0F;
  
  public l(Context paramContext)
  {
    super(paramContext);
    super.setSingleLine();
    super.setMaxLines(1);
    a = (getTextSize() / getResourcesgetDisplayMetricsdensity);
    setEllipsize(TextUtils.TruncateAt.END);
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i = paramInt3 - paramInt1;
    int j = getMeasuredHeight();
    int k = getMeasuredWidth();
    for (float f = a;; f -= 0.5F) {
      if (f >= b)
      {
        super.setTextSize(f);
        measure(0, 0);
        if (getMeasuredWidth() > i) {}
      }
      else
      {
        if (getMeasuredWidth() > i) {
          measure(View.MeasureSpec.makeMeasureSpec(k, 1073741824), View.MeasureSpec.makeMeasureSpec(j, 1073741824));
        }
        setMeasuredDimension(k, j);
        super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
        return;
      }
    }
  }
  
  public void setMaxLines(int paramInt) {}
  
  public void setMinTextSize(float paramFloat)
  {
    if (paramFloat <= a) {
      b = paramFloat;
    }
  }
  
  public void setSingleLine(boolean paramBoolean) {}
  
  public void setTextSize(float paramFloat)
  {
    a = paramFloat;
    super.setTextSize(paramFloat);
  }
}

/* Location:
 * Qualified Name:     com.facebook.ads.internal.view.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */