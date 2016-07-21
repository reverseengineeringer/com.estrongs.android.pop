package com.estrongs.android.ui.e;

import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.pop.view.utils.ac;
import com.estrongs.android.ui.dialog.gx;
import com.estrongs.android.ui.dialog.ha;
import com.estrongs.android.util.ap;
import com.estrongs.android.view.cr;
import com.estrongs.fs.util.a.a;

class v
  implements ha
{
  v(t paramt) {}
  
  public void a(int paramInt)
  {
    cr localcr = m.a(a.a).O();
    a locala;
    if (localcr != null)
    {
      ac.a(m.a(a.a), localcr.c(), paramInt % 4, paramInt / 4);
      if ((!ap.ai(localcr.c())) || (ap.ap(localcr.c()))) {
        break label111;
      }
      locala = aa.a).k.A(localcr.c());
      if (!ac.c(localcr.c())) {
        break label135;
      }
      localcr.a(locala);
    }
    for (;;)
    {
      m.h(a.a).dismiss();
      return;
      label111:
      locala = aa.a).k.z(localcr.c());
      break;
      label135:
      localcr.b(locala);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.v
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */