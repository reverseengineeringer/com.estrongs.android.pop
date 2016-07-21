package com.estrongs.android.ui.fastscroller;

import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.OnScrollListener;
import com.estrongs.android.ui.fastscroller.a.b.a;
import com.estrongs.android.ui.fastscroller.a.b.b;

class c
  extends RecyclerView.OnScrollListener
{
  c(AbsRecyclerViewFastScroller paramAbsRecyclerViewFastScroller) {}
  
  public void onScrollStateChanged(RecyclerView paramRecyclerView, int paramInt)
  {
    super.onScrollStateChanged(paramRecyclerView, paramInt);
    if (paramInt == 0) {
      a.b();
    }
  }
  
  public void onScrolled(RecyclerView paramRecyclerView, int paramInt1, int paramInt2)
  {
    float f = 0.0F;
    b localb = a.getScrollProgressCalculator();
    if (localb != null) {
      f = localb.a(paramRecyclerView);
    }
    if ((!AbsRecyclerViewFastScroller.b(a)) && (paramInt2 != 0)) {
      a.a(f);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.fastscroller.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */