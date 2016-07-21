package com.estrongs.android.view;

import android.support.v7.widget.RecyclerView;
import android.view.View;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.fs.h;

class ev
  implements co
{
  ev(eu parameu) {}
  
  public void a(RecyclerView paramRecyclerView, View paramView, int paramInt)
  {
    paramRecyclerView = (ck)paramRecyclerView.getAdapter();
    if (paramRecyclerView != null)
    {
      paramRecyclerView = (h)paramRecyclerView.a(paramInt);
      if (paramRecyclerView != null)
      {
        paramView = FileExplorerActivity.X();
        if (paramView != null) {
          paramView.d(paramRecyclerView.getAbsolutePath());
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.ev
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */