package com.estrongs.android.pop.view;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemLongClickListener;
import com.estrongs.android.pop.z;
import com.estrongs.android.ui.drag.d;
import com.estrongs.android.ui.e.w;
import com.estrongs.android.util.am;
import com.estrongs.android.view.aw;
import com.estrongs.android.widget.ThumbContentViewSwitcher;
import java.util.List;

class cz
  implements AdapterView.OnItemLongClickListener
{
  cz(FileExplorerActivity paramFileExplorerActivity) {}
  
  public boolean onItemLongClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    a.k();
    aw localaw = a.y();
    if (localaw == null) {}
    label58:
    label271:
    label273:
    label335:
    for (;;)
    {
      return true;
      String str = a.z();
      boolean bool2;
      boolean bool1;
      if ((localaw instanceof com.estrongs.android.pop.app.diskusage.h))
      {
        a.t = ((com.estrongs.fs.h)localaw.e(paramInt - 1));
        if (a.t == null) {
          break label271;
        }
        bool2 = false;
        if (!localaw.z()) {
          break label273;
        }
        if (!localaw.w().contains(a.t)) {
          paramAdapterView.performItemClick(paramView, paramInt, paramLong);
        }
        bool1 = true;
      }
      for (;;)
      {
        if ((z.v) || (am.bg(str)) || (am.aO(str)) || (am.aG(str)) || (am.T(str)) || (am.r(str)) || (am.aQ(str)) || (am.ae(str)) || (am.bP(str))) {
          break label335;
        }
        if (FileExplorerActivity.j(a) == null) {
          FileExplorerActivity.k(a);
        }
        FileExplorerActivity.o(a).a(new da(this, str));
        if (FileExplorerActivity.o(a).b()) {
          break;
        }
        a.f.a(a.t, localaw, bool1);
        return true;
        a.t = ((com.estrongs.fs.h)localaw.e(paramInt));
        break label58;
        break;
        a.k.b(FileExplorerActivity.h(a));
        paramAdapterView.performItemClick(paramView, paramInt, paramLong);
        bool1 = bool2;
        if (!FileExplorerActivity.i(a))
        {
          a.b(true);
          FileExplorerActivity.b(a, true);
          bool1 = bool2;
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.cz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */