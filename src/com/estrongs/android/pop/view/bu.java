package com.estrongs.android.pop.view;

import android.support.v7.widget.RecyclerView;
import android.view.View;
import com.estrongs.android.pop.z;
import com.estrongs.android.ui.drag.d;
import com.estrongs.android.util.ap;
import com.estrongs.android.view.cp;
import com.estrongs.android.view.cr;
import com.estrongs.android.widget.ThumbContentViewSwitcher;
import com.estrongs.fs.h;
import java.util.List;

class bu
  implements cp
{
  bu(FileExplorerActivity paramFileExplorerActivity) {}
  
  public boolean a(RecyclerView paramRecyclerView, View paramView, int paramInt, boolean paramBoolean)
  {
    a.o();
    paramRecyclerView = a.O();
    if (paramRecyclerView == null) {}
    label287:
    for (;;)
    {
      return true;
      String str = a.P();
      a.r = ((h)paramRecyclerView.e(paramInt));
      if (a.r != null)
      {
        boolean bool2 = false;
        boolean bool1;
        if (paramRecyclerView.N())
        {
          if (!paramRecyclerView.o().contains(a.r)) {
            paramView.performClick();
          }
          bool1 = true;
        }
        for (;;)
        {
          if ((z.v) || (paramBoolean) || (ap.br(str)) || (ap.aY(str)) || (ap.aQ(str)) || (ap.X(str)) || (ap.t(str)) || (ap.ba(str)) || (ap.ao(str)) || (ap.cg(str))) {
            break label287;
          }
          if (FileExplorerActivity.g(a) == null) {
            FileExplorerActivity.h(a);
          }
          FileExplorerActivity.l(a).a(new bv(this, str));
          if (FileExplorerActivity.l(a).b()) {
            break;
          }
          a.h.a(a.r, paramRecyclerView, bool1);
          return true;
          a.p();
          paramView.performClick();
          bool1 = bool2;
          if (!FileExplorerActivity.f(a))
          {
            a.b(true);
            FileExplorerActivity.b(a, true);
            bool1 = bool2;
          }
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.bu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */