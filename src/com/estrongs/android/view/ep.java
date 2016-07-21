package com.estrongs.android.view;

import android.support.v7.widget.GridLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;

class ep
  extends dt
  implements View.OnTouchListener
{
  int b;
  
  ep(eb parameb)
  {
    super(parameb);
  }
  
  public void onScrollStateChanged(RecyclerView paramRecyclerView, int paramInt)
  {
    super.onScrollStateChanged(paramRecyclerView, paramInt);
    if ((eb.c(c)) && (eb.d(c)) && (c.g.findLastVisibleItemPosition() == c.i.getItemCount() - 1) && (!eb.e(c))) {
      eb.f(c);
    }
  }
  
  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    if (eb.d(c)) {
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
      eb.b(paramView, bool);
      return false;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.ep
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */