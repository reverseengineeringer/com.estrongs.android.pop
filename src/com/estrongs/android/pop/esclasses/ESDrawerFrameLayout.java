package com.estrongs.android.pop.esclasses;

import android.content.Context;
import android.util.AttributeSet;
import android.view.FocusFinder;
import android.view.View;
import android.widget.FrameLayout;

public class ESDrawerFrameLayout
  extends FrameLayout
{
  public ESDrawerFrameLayout(Context paramContext)
  {
    super(paramContext);
  }
  
  public ESDrawerFrameLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public ESDrawerFrameLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  public View focusSearch(int paramInt)
  {
    try
    {
      View localView = FocusFinder.getInstance().findNextFocus(this, null, paramInt);
      return localView;
    }
    catch (Exception localException) {}
    return super.focusSearch(paramInt);
  }
  
  public View focusSearch(View paramView, int paramInt)
  {
    try
    {
      View localView = FocusFinder.getInstance().findNextFocus(this, paramView, paramInt);
      return localView;
    }
    catch (Exception localException) {}
    return super.focusSearch(paramView, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.esclasses.ESDrawerFrameLayout
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */