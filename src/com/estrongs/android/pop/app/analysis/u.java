package com.estrongs.android.pop.app.analysis;

import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.OnScrollListener;
import com.estrongs.android.j.c;

class u
  extends RecyclerView.OnScrollListener
{
  u(AnalysisResultActivity paramAnalysisResultActivity) {}
  
  public void onScrolled(RecyclerView paramRecyclerView, int paramInt1, int paramInt2)
  {
    super.onScrolled(paramRecyclerView, paramInt1, paramInt2);
    if ((!AnalysisResultActivity.a(a)) && (paramInt2 > 20)) {
      AnalysisResultActivity.a(a, true);
    }
    try
    {
      AnalysisResultActivity.b(a).a("A_scroll");
      AnalysisResultActivity.b(a).c("analysis", "A_scroll");
      return;
    }
    catch (Exception paramRecyclerView)
    {
      paramRecyclerView.printStackTrace();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.analysis.u
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */