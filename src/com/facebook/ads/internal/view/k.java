package com.facebook.ads.internal.view;

import android.content.Context;
import android.text.TextUtils.TruncateAt;
import android.view.View.MeasureSpec;
import android.widget.TextView;

public class k
  extends TextView
{
  private int a;
  private float b;
  private float c = 8.0F;
  
  public k(Context paramContext, int paramInt)
  {
    super(paramContext);
    setMaxLines(paramInt);
    setEllipsize(TextUtils.TruncateAt.END);
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.setMaxLines(a + 1);
    super.setTextSize(b);
    int i = paramInt3 - paramInt1;
    int j = paramInt4 - paramInt2;
    measure(View.MeasureSpec.makeMeasureSpec(i, 1073741824), View.MeasureSpec.makeMeasureSpec(j, 0));
    if (getMeasuredHeight() > j)
    {
      float f1 = b;
      do
      {
        float f2;
        do
        {
          if (f1 <= c) {
            break;
          }
          f2 = f1 - 0.5F;
          super.setTextSize(f2);
          measure(View.MeasureSpec.makeMeasureSpec(i, 1073741824), 0);
          f1 = f2;
        } while (getMeasuredHeight() > j);
        f1 = f2;
      } while (getLineCount() > a);
    }
    super.setMaxLines(a);
    setMeasuredDimension(i, j);
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  public void setMaxLines(int paramInt)
  {
    a = paramInt;
    super.setMaxLines(paramInt);
  }
  
  public void setMinTextSize(float paramFloat)
  {
    c = paramFloat;
  }
  
  public void setTextSize(float paramFloat)
  {
    b = paramFloat;
    super.setTextSize(paramFloat);
  }
}

/* Location:
 * Qualified Name:     com.facebook.ads.internal.view.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */