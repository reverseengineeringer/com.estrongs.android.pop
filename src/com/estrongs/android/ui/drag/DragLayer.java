package com.estrongs.android.ui.drag;

import android.content.Context;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;

public class DragLayer
  extends FrameLayout
{
  d a;
  
  public DragLayer(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public boolean dispatchKeyEvent(KeyEvent paramKeyEvent)
  {
    try
    {
      if (a != null)
      {
        if (!a.a(paramKeyEvent))
        {
          if (!super.dispatchKeyEvent(paramKeyEvent)) {
            break label39;
          }
          return true;
        }
      }
      else
      {
        boolean bool = super.dispatchKeyEvent(paramKeyEvent);
        return bool;
      }
    }
    catch (IllegalStateException paramKeyEvent) {}
    return true;
    label39:
    return false;
  }
  
  public boolean dispatchUnhandledMove(View paramView, int paramInt)
  {
    if (a != null) {
      return a.a(paramView, paramInt);
    }
    return super.dispatchUnhandledMove(paramView, paramInt);
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    if (a != null) {
      return a.a(paramMotionEvent);
    }
    return super.onInterceptTouchEvent(paramMotionEvent);
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    if (a != null) {
      return a.b(paramMotionEvent);
    }
    return super.onTouchEvent(paramMotionEvent);
  }
  
  public void setDragController(d paramd)
  {
    a = paramd;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.drag.DragLayer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */