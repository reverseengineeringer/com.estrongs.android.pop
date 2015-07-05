package com.estrongs.android.pop.esclasses;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.widget.TextView;

public class ESTextView
  extends TextView
{
  private String a;
  private String b;
  private String c;
  private int d = 0;
  private boolean e = false;
  
  public ESTextView(Context paramContext)
  {
    super(paramContext);
  }
  
  public ESTextView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public ESTextView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  private String a(int paramInt)
  {
    int m = 0;
    TextPaint localTextPaint = getPaint();
    if (a != null)
    {
      k = (int)localTextPaint.measureText(a);
      if (b == null) {
        break label83;
      }
      j = (int)localTextPaint.measureText(b);
      label46:
      if (c == null) {
        break label88;
      }
    }
    label83:
    label88:
    for (int i = (int)localTextPaint.measureText(c);; i = 0)
    {
      if ((j != 0) || (i != 0)) {
        break label93;
      }
      return a;
      k = 0;
      break;
      j = 0;
      break label46;
    }
    label93:
    int n = (int)localTextPaint.measureText(" ");
    int i1 = paramInt / 3;
    StringBuilder localStringBuilder = new StringBuilder();
    int i2 = (i1 - k - 1) / n;
    if (i2 > 0)
    {
      localStringBuilder.append(a);
      k = 0;
      while (k < i2)
      {
        localStringBuilder.append(' ');
        k += 1;
      }
    }
    localStringBuilder.append(a(a, i1, k));
    localStringBuilder.append(' ');
    int k = (i1 - j - 1) / 2 / n;
    int j = 0;
    while (j < k)
    {
      localStringBuilder.append(' ');
      j += 1;
    }
    localStringBuilder.append(b);
    j = 0;
    while (j < k)
    {
      localStringBuilder.append(' ');
      j += 1;
    }
    i = (paramInt - (int)localTextPaint.measureText(localStringBuilder.toString()) - i - 1) / n;
    paramInt = m;
    while (paramInt < i)
    {
      localStringBuilder.append(' ');
      paramInt += 1;
    }
    localStringBuilder.append(c);
    return localStringBuilder.toString();
  }
  
  private String a(String paramString, int paramInt1, int paramInt2)
  {
    String str = paramString;
    if (paramInt2 > paramInt1) {
      paramInt1 /= paramInt2 / paramString.length();
    }
    try
    {
      str = paramString.substring(0, paramInt1 - 2) + "...";
      return str;
    }
    catch (Exception localException) {}
    return paramString;
  }
  
  public void a(String paramString1, String paramString2, String paramString3)
  {
    setEllipsize(null);
    a = paramString1;
    b = paramString2;
    c = paramString3;
    d = 0;
    e = true;
    invalidate();
  }
  
  public void onDraw(Canvas paramCanvas)
  {
    int i;
    if (e)
    {
      i = getWidth();
      if (i == d) {}
    }
    try
    {
      setText(a(i - getPaddingLeft() - getPaddingRight()));
      d = i;
      super.onDraw(paramCanvas);
      return;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append(a).append("  ").append(b).append("  ").append(c);
        setText(localStringBuilder.toString());
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.esclasses.ESTextView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */