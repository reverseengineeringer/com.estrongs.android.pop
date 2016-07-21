package com.dianxinos.lockscreen.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.FrameLayout;

public class LockScreenDrawerView
  extends FrameLayout
{
  private i a;
  private boolean b;
  
  public LockScreenDrawerView(Context paramContext)
  {
    super(paramContext);
    c();
  }
  
  public LockScreenDrawerView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    c();
  }
  
  private void c()
  {
    a = new i(this);
  }
  
  public boolean a()
  {
    if (a == null) {
      return false;
    }
    return a.b();
  }
  
  public void b()
  {
    if (!b)
    {
      boolean bool = a.a();
      b = bool;
      if (!bool) {}
    }
    else
    {
      a.c();
    }
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    if (!b)
    {
      boolean bool = a.a();
      b = bool;
      if (!bool) {
        return super.onInterceptTouchEvent(paramMotionEvent);
      }
    }
    switch (paramMotionEvent.getActionMasked())
    {
    default: 
    case 0: 
      for (;;)
      {
        return super.onInterceptTouchEvent(paramMotionEvent);
        a.a(paramMotionEvent);
      }
    case 2: 
      return a.b(paramMotionEvent);
    }
    return a.c(paramMotionEvent);
  }
  
  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    b = a.a();
  }
  
  public void setListener(j paramj)
  {
    if (a != null) {
      a.a(paramj);
    }
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.lockscreen.ui.LockScreenDrawerView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */