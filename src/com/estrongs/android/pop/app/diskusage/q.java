package com.estrongs.android.pop.app.diskusage;

import android.support.v7.widget.RecyclerView;
import android.view.View;
import com.estrongs.android.pop.view.utils.AppRunner;
import com.estrongs.android.ui.adapter.k;
import com.estrongs.android.view.co;
import com.estrongs.android.view.dv;
import com.estrongs.android.widget.bh;
import com.estrongs.fs.util.g;
import java.io.File;

class q
  implements co
{
  q(h paramh) {}
  
  public void a(RecyclerView paramRecyclerView, View paramView, int paramInt)
  {
    try
    {
      if (h.I(a))
      {
        a.c(paramInt);
        return;
      }
      if (h.f(a) == 0L)
      {
        paramRecyclerView = (File)h.n(a).a(paramInt);
        if (paramRecyclerView.isDirectory())
        {
          h.a(a, paramRecyclerView);
          if (h.J(a) != null) {
            h.K(a).a("du://" + h.q(a).getAbsolutePath(), false);
          }
          paramRecyclerView = h.k(a).a(paramRecyclerView);
          h.a(a, 0L);
          if (h.c(a) == null) {
            h.a(a, h.L(a));
          }
          if (h.c(a) != null)
          {
            h.c(a).a();
            h.c(a).a(paramRecyclerView.b());
            h.c(a).setMessage(h.a(a, 2131231747));
            h.c(a).b(h.b(a));
          }
          a.g();
          return;
        }
        AppRunner.a(h.M(a), paramRecyclerView.getAbsolutePath(), paramRecyclerView.getAbsolutePath());
      }
      return;
    }
    catch (Exception paramRecyclerView) {}
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.diskusage.q
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */