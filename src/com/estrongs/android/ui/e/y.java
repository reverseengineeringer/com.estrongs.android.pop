package com.estrongs.android.ui.e;

import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.pop.view.utils.ac;
import com.estrongs.android.ui.dialog.ha;
import com.estrongs.android.ui.dialog.hc;
import com.estrongs.android.util.ap;
import com.estrongs.android.view.cr;
import com.estrongs.fs.util.a.a;

class y
  implements ha
{
  y(w paramw) {}
  
  public void a(int paramInt)
  {
    cr localcr = m.a(a.a).O();
    if (localcr != null)
    {
      ac.a(m.a(a.a), localcr.c(), paramInt % 4, paramInt / 4);
      if ((!ap.ai(localcr.c())) || (ap.ap(localcr.c()))) {
        break label101;
      }
    }
    label101:
    for (a locala = aa.a).k.A(localcr.c());; locala = aa.a).k.z(localcr.c()))
    {
      localcr.b(locala);
      m.i(a.a).dismiss();
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.y
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */