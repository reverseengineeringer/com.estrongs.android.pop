package com.estrongs.android.pop.app.cleaner;

import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.OnScrollListener;

class f
  extends RecyclerView.OnScrollListener
{
  f(e parame) {}
  
  public void onScrollStateChanged(RecyclerView paramRecyclerView, int paramInt)
  {
    if ((paramInt == 0) || (2 == paramInt))
    {
      c.c(a.b).removeOnScrollListener(this);
      a.b.d();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.cleaner.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */