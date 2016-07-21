package com.estrongs.android.ui.view;

import android.content.Context;
import android.content.res.Configuration;
import android.util.AttributeSet;
import android.widget.ViewFlipper;

public class ESViewFlipper
  extends ViewFlipper
{
  public static final String a = ESViewFlipper.class.getSimpleName();
  private ax b;
  
  public ESViewFlipper(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  protected void onConfigurationChanged(Configuration paramConfiguration)
  {
    if (b != null) {
      b.a(paramConfiguration);
    }
    super.onConfigurationChanged(paramConfiguration);
  }
  
  protected void onDetachedFromWindow()
  {
    try
    {
      super.onDetachedFromWindow();
      return;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      stopFlipping();
    }
  }
  
  public void setConfigListener(ax paramax)
  {
    b = paramax;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.view.ESViewFlipper
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */