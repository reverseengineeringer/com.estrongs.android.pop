package com.estrongs.android.pop.app.b;

import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.Adapter;
import android.support.v7.widget.RecyclerView.OnScrollListener;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.ui.c.a;
import java.util.List;

class t
  extends RecyclerView.OnScrollListener
{
  t(k paramk) {}
  
  public void onScrolled(RecyclerView paramRecyclerView, int paramInt1, int paramInt2)
  {
    super.onScrolled(paramRecyclerView, paramInt1, paramInt2);
    if ((FexApplication.a) && (paramInt2 > 0) && (k.d(a).size() > 0))
    {
      int i = ((LinearLayoutManager)k.m(a).getLayoutManager()).findLastVisibleItemPosition();
      paramInt2 = k.m(a).getAdapter().getItemCount();
      paramInt1 = paramInt2;
      if ((k.m(a).getAdapter() instanceof a)) {
        paramInt1 = paramInt2 - a.a;
      }
      if ((!k.g(a)) && (!k.b(a)) && (!k.n(a)) && (i >= paramInt1 - 2)) {
        k.o(a);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.b.t
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */