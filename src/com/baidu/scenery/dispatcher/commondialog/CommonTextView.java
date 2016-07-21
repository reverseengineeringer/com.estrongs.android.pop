package com.baidu.scenery.dispatcher.commondialog;

import android.content.Context;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.text.TextUtils.TruncateAt;
import android.util.AttributeSet;
import android.widget.TextView;
import com.baidu.scenery.R.styleable;
import com.baidu.scenery.dispatcher.RuleUtils;
import com.baidu.scenery.utils.LogHelper;

public class CommonTextView
  extends TextView
{
  private static final int MAX_LINES_UNSET = Integer.MAX_VALUE;
  public static final int ROBOTO_LIGHT = 1;
  public static final int ROBOTO_REGULAR = 0;
  private TextUtils.TruncateAt mEllipsize = null;
  private int mMaxLines = -1;
  
  public CommonTextView(Context paramContext, int paramInt)
  {
    super(paramContext);
    setFontType(paramInt);
  }
  
  public CommonTextView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public CommonTextView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    if (!isInEditMode())
    {
      paramContext = paramContext.getTheme().obtainStyledAttributes(paramAttributeSet, R.styleable.CommonTextView, paramInt, 0);
      paramAttributeSet = paramContext.getString(R.styleable.CommonTextView_fontFamily);
      if (paramAttributeSet != null) {
        setFontType(paramAttributeSet);
      }
      setMaxLines(paramContext.getInt(R.styleable.CommonTextView_maxLines, Integer.MAX_VALUE));
    }
  }
  
  private void reconsiderEllipsize()
  {
    setEllipsize(mEllipsize);
  }
  
  public void setEllipsize(TextUtils.TruncateAt paramTruncateAt)
  {
    if ((RuleUtils.isEqualOrLowerThanGingerbread()) && (mMaxLines > 2) && (mMaxLines != Integer.MAX_VALUE)) {}
    for (mEllipsize = null;; mEllipsize = paramTruncateAt)
    {
      super.setEllipsize(mEllipsize);
      return;
    }
  }
  
  public void setFontType(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      if (RuleUtils.DEBUG) {
        LogHelper.d("SceneryTextView", "No such a number(" + paramInt + ") matched in SceneryTextView");
      }
      return;
    }
    for (String str = "sans-serif";; str = "sans-serif-light")
    {
      setFontType(str);
      return;
    }
  }
  
  public void setFontType(String paramString)
  {
    Typeface localTypeface = Typeface.create(paramString, 0);
    if (localTypeface != null) {
      setTypeface(localTypeface);
    }
    while (!RuleUtils.DEBUG) {
      return;
    }
    LogHelper.d("SceneryTextView", "No such a font named " + paramString);
  }
  
  public void setMaxLines(int paramInt)
  {
    if ((paramInt != Integer.MAX_VALUE) && (paramInt > 0))
    {
      super.setMaxLines(paramInt);
      mMaxLines = paramInt;
      reconsiderEllipsize();
    }
  }
}

/* Location:
 * Qualified Name:     com.baidu.scenery.dispatcher.commondialog.CommonTextView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */