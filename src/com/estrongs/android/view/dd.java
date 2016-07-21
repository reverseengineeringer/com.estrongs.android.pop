package com.estrongs.android.view;

import android.support.v7.widget.RecyclerView;
import android.view.View;
import com.estrongs.android.util.bm;
import com.estrongs.fs.h;
import com.estrongs.fs.impl.c.b;
import com.estrongs.fs.impl.s.a;
import com.estrongs.fs.w;

class dd
  implements co
{
  dd(cr paramcr) {}
  
  public void a(RecyclerView paramRecyclerView, View paramView, int paramInt)
  {
    paramView = (h)a.e(paramInt);
    if ((paramView instanceof a)) {}
    for (paramRecyclerView = ((a)paramView).a();; paramRecyclerView = paramView)
    {
      if ((paramRecyclerView != null) && (paramRecyclerView.getFileType().a()))
      {
        cr.a(a, true);
        a.c(paramRecyclerView);
        if (!(paramRecyclerView instanceof b)) {
          bm.c().a(paramRecyclerView.getAbsolutePath(), true);
        }
      }
      while ((paramView == null) || (a.E == null)) {
        return;
      }
      a.E.a(paramView);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.dd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */