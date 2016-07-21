package com.estrongs.android.pop.esclasses;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.inputmethod.InputMethodManager;
import android.webkit.WebView;
import android.webkit.WebView.HitTestResult;

public class ESWebView
  extends WebView
{
  public ESWebView(Context paramContext)
  {
    super(paramContext);
  }
  
  public ESWebView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public ESWebView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  public boolean dispatchKeyEvent(KeyEvent paramKeyEvent)
  {
    try
    {
      int i = paramKeyEvent.getAction();
      int j = paramKeyEvent.getKeyCode();
      if ((i == 0) && (j == 23) && (getHitTestResult().getType() == 9))
      {
        ((InputMethodManager)getContext().getSystemService("input_method")).toggleSoftInput(0, 2);
        return true;
      }
    }
    catch (Exception localException)
    {
      boolean bool = super.dispatchKeyEvent(paramKeyEvent);
      return bool;
    }
    catch (IllegalStateException paramKeyEvent) {}
    return true;
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    try
    {
      super.onDraw(paramCanvas);
      return;
    }
    catch (Exception paramCanvas) {}
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 23) {
      try
      {
        if (getHitTestResult().getType() == 9)
        {
          ((InputMethodManager)getContext().getSystemService("input_method")).toggleSoftInput(0, 2);
          return true;
        }
      }
      catch (Exception localException) {}
    }
    try
    {
      boolean bool = super.onKeyDown(paramInt, paramKeyEvent);
      return bool;
    }
    catch (Exception paramKeyEvent) {}
    return true;
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    invalidate();
    super.onMeasure(paramInt1, paramInt2);
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    try
    {
      boolean bool = super.onTouchEvent(paramMotionEvent);
      return bool;
    }
    catch (Exception paramMotionEvent) {}
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.esclasses.ESWebView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */