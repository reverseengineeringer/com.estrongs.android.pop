package com.estrongs.android.widget;

import android.content.Context;
import android.graphics.Rect;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.widget.RelativeLayout;

public class ba
  extends RelativeLayout
{
  public ba(aw paramaw, Context paramContext)
  {
    super(paramContext);
  }
  
  public boolean dispatchKeyEvent(KeyEvent paramKeyEvent)
  {
    if (paramKeyEvent.getKeyCode() == 4)
    {
      if ((paramKeyEvent.getAction() == 0) && (paramKeyEvent.getRepeatCount() == 0))
      {
        a.f();
        return true;
      }
      if ((paramKeyEvent.getAction() == 1) && (!paramKeyEvent.isCanceled()))
      {
        a.f();
        return true;
      }
      return super.dispatchKeyEvent(paramKeyEvent);
    }
    return super.dispatchKeyEvent(paramKeyEvent);
  }
  
  public boolean dispatchTouchEvent(MotionEvent paramMotionEvent)
  {
    if ((aw.a(a) != null) && (aw.a(a).onTouch(this, paramMotionEvent))) {
      return true;
    }
    return super.dispatchTouchEvent(paramMotionEvent);
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    if (paramBoolean) {}
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    int i = (int)paramMotionEvent.getX();
    int j = (int)paramMotionEvent.getY();
    if (paramMotionEvent.getAction() == 0)
    {
      paramMotionEvent = new Rect();
      aw.b(a).getGlobalVisibleRect(paramMotionEvent);
      if (!paramMotionEvent.contains(i, j)) {
        a.f();
      }
      return true;
    }
    if (paramMotionEvent.getAction() == 4)
    {
      a.f();
      return true;
    }
    return super.onTouchEvent(paramMotionEvent);
  }
  
  public void sendAccessibilityEvent(int paramInt)
  {
    if (aw.b(a) != null)
    {
      aw.b(a).sendAccessibilityEvent(paramInt);
      return;
    }
    super.sendAccessibilityEvent(paramInt);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.widget.ba
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */