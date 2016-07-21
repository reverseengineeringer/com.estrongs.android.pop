package com.dianxinos.lockscreen.ui;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.widget.TextView;
import com.dianxinos.lockscreen.ae;

public class FontTextView
  extends TextView
{
  private int a = -1;
  private int b = 50;
  private int c = 70;
  private boolean d = false;
  private boolean e = false;
  private TextPaint f;
  
  public FontTextView(Context paramContext)
  {
    this(paramContext, null, 0);
  }
  
  public FontTextView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public FontTextView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a(paramContext, paramAttributeSet);
  }
  
  private void a(Context paramContext, AttributeSet paramAttributeSet)
  {
    if (paramAttributeSet == null) {
      return;
    }
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, ae.lsFontTextView);
    int m = paramContext.getIndexCount();
    int i = 0;
    int j = 1;
    if (i < m)
    {
      int n = paramContext.getIndex(i);
      int k;
      if (n == ae.lsFontTextView_lsFontType) {
        k = paramContext.getInteger(n, 1);
      }
      for (;;)
      {
        i += 1;
        j = k;
        break;
        if (n == ae.lsFontTextView_lsAutoResize)
        {
          d = paramContext.getBoolean(n, d);
          k = j;
        }
        else if (n == ae.lsFontTextView_lsFontSize1)
        {
          b = paramContext.getDimensionPixelSize(n, b);
          k = j;
        }
        else if (n == ae.lsFontTextView_lsFontSize2)
        {
          c = paramContext.getDimensionPixelSize(n, c);
          k = j;
        }
        else
        {
          k = j;
          if (n == ae.lsFontTextView_lsIsUseFontEver)
          {
            e = paramContext.getBoolean(n, false);
            k = j;
          }
        }
      }
    }
    paramContext.recycle();
    setFontType(j);
  }
  
  private void a(String paramString, int paramInt)
  {
    int i = paramInt - getPaddingLeft() - getPaddingRight();
    if (i <= 0) {
      return;
    }
    paramInt = b;
    if (f == null) {
      f = new TextPaint();
    }
    f.set(getPaint());
    f.setTextSize(paramInt);
    if (f.measureText(paramString) >= i) {
      paramInt = c;
    }
    setTextSize(0, paramInt);
  }
  
  public int getFontType()
  {
    return a;
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    if ((d) && (length() > 0)) {
      a(getText().toString(), getMeasuredWidth());
    }
  }
  
  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    if ((paramInt1 != paramInt3) && (d) && (length() > 0)) {
      a(getText().toString(), paramInt1);
    }
  }
  
  protected void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    super.onTextChanged(paramCharSequence, paramInt1, paramInt2, paramInt3);
    if ((d) && (length() > 0)) {
      a(paramCharSequence.toString(), getWidth());
    }
  }
  
  public void setFontType(int paramInt)
  {
    if (paramInt == a) {}
    Typeface localTypeface;
    do
    {
      do
      {
        return;
      } while ((!e) && (!l.a(getContext())));
      localTypeface = l.a(getContext(), paramInt);
    } while (localTypeface == null);
    setIncludeFontPadding(false);
    setTypeface(localTypeface);
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.lockscreen.ui.FontTextView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */