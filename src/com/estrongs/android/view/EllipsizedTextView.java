package com.estrongs.android.view;

import android.content.Context;
import android.graphics.Canvas;
import android.os.Build.VERSION;
import android.text.Layout;
import android.text.Layout.Alignment;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils.TruncateAt;
import android.util.AttributeSet;
import android.widget.TextView;
import com.estrongs.android.pop.z;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class EllipsizedTextView
  extends TextView
{
  private static final Pattern a = Pattern.compile("[\\.,…;\\:\\s]*$", 32);
  private boolean b;
  private boolean c;
  private boolean d;
  private String e;
  private int f;
  private float g = 1.0F;
  private float h = 0.0F;
  private TextPaint i = null;
  
  public EllipsizedTextView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public EllipsizedTextView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  private Layout a(String paramString)
  {
    return new StaticLayout(paramString, getPaint(), getWidth() - getPaddingLeft() - getPaddingRight(), Layout.Alignment.ALIGN_NORMAL, g, h, false);
  }
  
  private CharSequence a(CharSequence paramCharSequence)
  {
    boolean bool = false;
    if (Build.VERSION.SDK_INT >= 14)
    {
      c = false;
      return paramCharSequence;
    }
    String str2 = paramCharSequence.toString();
    try
    {
      Layout localLayout = a(str2);
      int j = c();
      if (j == 0) {
        return str2;
      }
      String str1 = str2;
      if (localLayout.getLineCount() > j)
      {
        for (str1 = str2.substring(0, localLayout.getLineEnd(j - 1)).trim(); a(str1 + "…").getLineCount() > j; str1 = str1.substring(0, str1.length() - 1)) {}
        str1 = a.matcher(str1).replaceFirst("");
        str1 = str1 + "…";
        bool = true;
      }
      if (bool != b) {
        b = bool;
      }
      return str1;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
      return paramCharSequence;
    }
    catch (Error localError) {}
    return paramCharSequence;
  }
  
  private void b()
  {
    String str = a(e).toString();
    if (!str.equals(getText())) {
      d = true;
    }
    try
    {
      setText(str);
    }
    catch (Exception localException)
    {
      for (;;)
      {
        localException.printStackTrace();
        d = false;
      }
    }
    catch (Error localError)
    {
      for (;;)
      {
        d = false;
      }
    }
    finally
    {
      d = false;
    }
    c = false;
  }
  
  private int c()
  {
    if (a())
    {
      int k = d();
      int j = k;
      if (k == -1) {
        j = 1;
      }
      return j;
    }
    return f;
  }
  
  private int d()
  {
    Layout localLayout = a("");
    return (getHeight() - getPaddingTop() - getPaddingBottom()) / localLayout.getLineBottom(0);
  }
  
  public boolean a()
  {
    return f == Integer.MAX_VALUE;
  }
  
  public int getMaxLines()
  {
    return f;
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    if (z.ab)
    {
      i = getPaint();
      if (c) {
        b();
      }
    }
    super.onDraw(paramCanvas);
  }
  
  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    if ((z.ab) && (a())) {
      c = true;
    }
  }
  
  protected void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    super.onTextChanged(paramCharSequence, paramInt1, paramInt2, paramInt3);
    if ((z.ab) && (!d))
    {
      e = paramCharSequence.toString();
      c = true;
    }
  }
  
  public void setEllipsize(TextUtils.TruncateAt paramTruncateAt)
  {
    if ((z.ab) && (Build.VERSION.SDK_INT >= 14)) {
      super.setEllipsize(paramTruncateAt);
    }
  }
  
  public void setLineSpacing(float paramFloat1, float paramFloat2)
  {
    h = paramFloat1;
    g = paramFloat2;
    super.setLineSpacing(paramFloat1, paramFloat2);
  }
  
  public void setLines(int paramInt)
  {
    super.setLines(paramInt);
    f = paramInt;
    c = true;
  }
  
  public void setMaxLines(int paramInt)
  {
    super.setMaxLines(paramInt);
    f = paramInt;
    c = true;
  }
  
  public void setPadding(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.setPadding(paramInt1, paramInt2, paramInt3, paramInt4);
    if ((z.ab) && (a())) {
      c = true;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.EllipsizedTextView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */