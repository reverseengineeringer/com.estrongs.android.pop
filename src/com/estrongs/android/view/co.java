package com.estrongs.android.view;

import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.widget.AbsListView;

class co
  extends by
  implements View.OnTouchListener
{
  int b;
  
  co(cd paramcd)
  {
    super(paramcd);
  }
  
  public void onScrollStateChanged(AbsListView paramAbsListView, int paramInt)
  {
    super.onScrollStateChanged(paramAbsListView, paramInt);
    if ((cd.a(c)) && (cd.b(c)) && (paramAbsListView.getLastVisiblePosition() == paramAbsListView.getCount() - 1) && (!cd.c(c))) {
      cd.d(c);
    }
  }
  
  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    if (cd.b(c)) {
      i = (int)paramMotionEvent.getY();
    }
    switch (paramMotionEvent.getAction())
    {
    case 1: 
    default: 
      return false;
    case 0: 
      b = i;
      return false;
    }
    int i = (int)paramMotionEvent.getY() - b;
    paramView = c;
    if ((i < 0) && (Math.abs(i) > 100)) {}
    for (boolean bool = true;; bool = false)
    {
      cd.a(paramView, bool);
      return false;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.co
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */