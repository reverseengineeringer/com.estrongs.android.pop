package com.dianxinos.lockscreen.ui;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Build.VERSION;
import android.os.Handler;
import android.support.v4.view.ViewPager;
import android.util.AttributeSet;
import android.view.MotionEvent;

public class DXViewPager
  extends ViewPager
{
  private boolean a = false;
  private boolean b = false;
  private boolean c = false;
  private Handler d = null;
  
  @SuppressLint({"NewApi"})
  public DXViewPager(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    if (Build.VERSION.SDK_INT > 8) {
      setOverScrollMode(2);
    }
  }
  
  private void setAutoScroll(int paramInt)
  {
    scrollTo(paramInt, 0);
  }
  
  public boolean arrowScroll(int paramInt)
  {
    if (a) {}
    while ((paramInt != 17) && (paramInt != 66)) {
      return false;
    }
    return super.arrowScroll(paramInt);
  }
  
  public boolean dispatchTouchEvent(MotionEvent paramMotionEvent)
  {
    if (b) {
      return true;
    }
    return super.dispatchTouchEvent(paramMotionEvent);
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    if (a) {}
    while (c) {
      return false;
    }
    return super.onInterceptTouchEvent(paramMotionEvent);
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    if (d != null)
    {
      d.sendEmptyMessageDelayed(100, 10L);
      d = null;
    }
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    try
    {
      if (c) {
        return false;
      }
      boolean bool = super.onTouchEvent(paramMotionEvent);
      return bool;
    }
    catch (Exception paramMotionEvent) {}
    return false;
  }
  
  public void setBlockTouchEvent(boolean paramBoolean)
  {
    b = paramBoolean;
  }
  
  public void setInitMessage(Handler paramHandler)
  {
    d = paramHandler;
  }
  
  public void setNoScroll(boolean paramBoolean)
  {
    c = paramBoolean;
  }
  
  public void setViewTouchMode(boolean paramBoolean)
  {
    if ((paramBoolean) && (!isFakeDragging())) {
      beginFakeDrag();
    }
    for (;;)
    {
      a = paramBoolean;
      return;
      if ((!paramBoolean) && (isFakeDragging())) {
        endFakeDrag();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.lockscreen.ui.DXViewPager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */