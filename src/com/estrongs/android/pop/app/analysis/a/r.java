package com.estrongs.android.pop.app.analysis.a;

import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.OnScrollListener;

class r
  extends RecyclerView.OnScrollListener
{
  r(o paramo) {}
  
  public void onScrolled(RecyclerView paramRecyclerView, int paramInt1, int paramInt2)
  {
    super.onScrolled(paramRecyclerView, paramInt1, paramInt2);
    paramRecyclerView = o.f(a).getLayoutManager();
    if ((paramRecyclerView instanceof LinearLayoutManager))
    {
      o.a(a, (LinearLayoutManager)paramRecyclerView);
      o.a(a, paramInt2);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.analysis.a.r
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */