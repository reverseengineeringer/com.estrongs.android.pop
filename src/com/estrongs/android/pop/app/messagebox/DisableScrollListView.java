package com.estrongs.android.pop.app.messagebox;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.ListView;

public class DisableScrollListView
  extends ListView
{
  private boolean a = true;
  
  public DisableScrollListView(Context paramContext)
  {
    super(paramContext);
  }
  
  public DisableScrollListView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public DisableScrollListView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    if (a) {
      return super.onInterceptTouchEvent(paramMotionEvent);
    }
    return false;
  }
  
  public void setListScrool(boolean paramBoolean)
  {
    a = paramBoolean;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.messagebox.DisableScrollListView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */