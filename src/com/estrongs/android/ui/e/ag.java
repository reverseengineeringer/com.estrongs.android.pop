package com.estrongs.android.ui.e;

import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.pop.view.utils.ac;
import com.estrongs.android.ui.dialog.gu;
import com.estrongs.android.ui.dialog.gx;
import com.estrongs.android.util.am;
import com.estrongs.android.view.aw;
import com.estrongs.fs.util.a.a;

class ag
  implements gx
{
  ag(ae paramae) {}
  
  public void a(int paramInt)
  {
    aw localaw = a.a.k.y();
    a locala;
    if (localaw != null)
    {
      ac.a(a.a.b, localaw.c(), paramInt % 4, paramInt / 4);
      if ((!am.Y(localaw.c())) || (am.af(localaw.c()))) {
        break label111;
      }
      locala = a.a.k.m.A(localaw.c());
      if (!ac.c(localaw.c())) {
        break label135;
      }
      localaw.a(locala);
    }
    for (;;)
    {
      w.i(a.a).dismiss();
      return;
      label111:
      locala = a.a.k.m.z(localaw.c());
      break;
      label135:
      localaw.b(locala);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.ag
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */