package com.flurry.sdk;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.view.MotionEvent;

class gs$a$1
  extends Dialog
{
  gs$a$1(gs.a parama, Context paramContext, int paramInt, Activity paramActivity)
  {
    super(paramContext, paramInt);
  }
  
  public boolean dispatchTouchEvent(MotionEvent paramMotionEvent)
  {
    return a.dispatchTouchEvent(paramMotionEvent);
  }
  
  public boolean dispatchTrackballEvent(MotionEvent paramMotionEvent)
  {
    return a.dispatchTrackballEvent(paramMotionEvent);
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.gs.a.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */