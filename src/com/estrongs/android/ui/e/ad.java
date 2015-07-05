package com.estrongs.android.ui.e;

import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.pop.view.utils.ac;
import com.estrongs.android.ui.dialog.gs;
import com.estrongs.android.ui.dialog.gx;
import com.estrongs.android.util.am;
import com.estrongs.android.view.aw;
import com.estrongs.fs.util.a.a;

class ad
  implements gx
{
  ad(aa paramaa) {}
  
  public void a(int paramInt)
  {
    aw localaw = a.a.k.y();
    if (localaw != null)
    {
      ac.a(a.a.b, localaw.c(), paramInt % 4, paramInt / 4);
      if ((!am.Y(localaw.c())) || (am.af(localaw.c()))) {
        break label101;
      }
    }
    label101:
    for (a locala = a.a.k.m.A(localaw.c());; locala = a.a.k.m.z(localaw.c()))
    {
      localaw.b(locala);
      w.h(a.a).dismiss();
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.ad
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */