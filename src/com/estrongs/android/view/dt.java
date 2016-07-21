package com.estrongs.android.view;

import android.support.v7.widget.GridLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.OnScrollListener;
import java.util.HashMap;

class dt
  extends RecyclerView.OnScrollListener
{
  dt(cr paramcr) {}
  
  public void onScrollStateChanged(RecyclerView paramRecyclerView, int paramInt)
  {
    super.onScrollStateChanged(paramRecyclerView, paramInt);
    a.ao();
  }
  
  public void onScrolled(RecyclerView paramRecyclerView, int paramInt1, int paramInt2)
  {
    super.onScrolled(paramRecyclerView, paramInt1, paramInt2);
    a.M.put(a.C, a.g.onSaveInstanceState());
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.dt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */