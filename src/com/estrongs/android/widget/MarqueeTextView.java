package com.estrongs.android.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.TextView;

public class MarqueeTextView
  extends TextView
{
  public MarqueeTextView(Context paramContext)
  {
    super(paramContext);
    setMarqueeRepeatLimit(-1);
  }
  
  public MarqueeTextView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    setMarqueeRepeatLimit(-1);
  }
  
  public MarqueeTextView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    setMarqueeRepeatLimit(-1);
  }
  
  public boolean isFocused()
  {
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.widget.MarqueeTextView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */