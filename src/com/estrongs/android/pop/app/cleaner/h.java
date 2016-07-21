package com.estrongs.android.pop.app.cleaner;

import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.OnScrollListener;

class h
  extends RecyclerView.OnScrollListener
{
  h(c paramc) {}
  
  public void onScrollStateChanged(RecyclerView paramRecyclerView, int paramInt)
  {
    super.onScrollStateChanged(paramRecyclerView, paramInt);
    if (paramInt == 0)
    {
      paramInt = ((LinearLayoutManager)c.c(a).getLayoutManager()).findFirstVisibleItemPosition();
      int i = ((LinearLayoutManager)c.c(a).getLayoutManager()).findLastVisibleItemPosition();
      if ((c.c(a).getAdapter() instanceof i)) {
        ((i)c.c(a).getAdapter()).a(paramInt, i + 1);
      }
    }
  }
  
  public void onScrolled(RecyclerView paramRecyclerView, int paramInt1, int paramInt2)
  {
    super.onScrolled(paramRecyclerView, paramInt1, paramInt2);
    if ((!c.e(a)) && (paramInt2 > 20))
    {
      c.a(a, true);
      c.a(a, "Clean_rp_scroll_pv");
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.cleaner.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */