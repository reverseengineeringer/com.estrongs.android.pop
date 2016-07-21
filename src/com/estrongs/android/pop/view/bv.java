package com.estrongs.android.pop.view;

import com.estrongs.android.j.c;
import com.estrongs.android.ui.controller.a;
import com.estrongs.android.ui.drag.DragActionZone;
import com.estrongs.android.ui.drag.DragLayer;
import com.estrongs.android.ui.drag.d;
import com.estrongs.android.ui.drag.g;
import com.estrongs.android.ui.drag.l;
import com.estrongs.android.ui.pcs.u;
import com.estrongs.android.util.ap;
import com.estrongs.android.view.cr;
import com.estrongs.fs.h;
import com.estrongs.fs.impl.pcs.b;
import com.estrongs.fs.w;
import java.util.List;

class bv
  implements g
{
  bv(bu parambu, String paramString) {}
  
  public void a()
  {
    FileExplorerActivity.a(b.a).k();
    if ((FileExplorerActivity.g(b.a) != null) && (FileExplorerActivity.g(b.a).getVisibility() == 0))
    {
      FileExplorerActivity.k(b.a).startAnimation(FileExplorerActivity.t(b.a));
      FileExplorerActivity.j(b.a).startAnimation(FileExplorerActivity.u(b.a));
      FileExplorerActivity.m(b.a).startAnimation(FileExplorerActivity.v(b.a));
      FileExplorerActivity.n(b.a).startAnimation(FileExplorerActivity.w(b.a));
    }
    if (FileExplorerActivity.x(b.a) != null) {
      FileExplorerActivity.x(b.a).setVisibility(8);
    }
    cr localcr = b.a.O();
    if (localcr != null) {
      localcr.e();
    }
  }
  
  public void a(l paraml, Object paramObject, int paramInt)
  {
    if (FileExplorerActivity.g(b.a) == null) {
      FileExplorerActivity.i(b.a);
    }
    FileExplorerActivity.a(b.a).j();
    if ((ap.ai(a)) && (!ap.ap(a)))
    {
      FileExplorerActivity.j(b.a).setImage(b.a.c(2130838521));
      FileExplorerActivity.g(b.a).setVisibility(0);
      FileExplorerActivity.l(b.a).b(FileExplorerActivity.k(b.a));
      FileExplorerActivity.l(b.a).b(FileExplorerActivity.j(b.a));
      FileExplorerActivity.l(b.a).b(FileExplorerActivity.m(b.a));
      FileExplorerActivity.l(b.a).b(FileExplorerActivity.n(b.a));
      FileExplorerActivity.k(b.a).startAnimation(FileExplorerActivity.o(b.a));
      FileExplorerActivity.j(b.a).startAnimation(FileExplorerActivity.p(b.a));
      FileExplorerActivity.m(b.a).startAnimation(FileExplorerActivity.q(b.a));
      FileExplorerActivity.n(b.a).startAnimation(FileExplorerActivity.r(b.a));
      paraml = b.a.O();
      boolean bool = paraml.o().contains(b.a());
      if (((paraml == null) || (!ap.bm(a)) || ((paraml.o().size() == 1) && (!((h)paraml.o().get(0)).getFileType().a()))) && (!bool)) {
        break label490;
      }
      FileExplorerActivity.k(b.a).setEnabled(false);
      FileExplorerActivity.m(b.a).setEnabled(false);
      if ((!bool) || (u.a().b())) {
        break label473;
      }
      FileExplorerActivity.j(b.a).setEnabled(false);
    }
    for (;;)
    {
      try
      {
        if (FileExplorerActivity.s(b.a) != null) {
          FileExplorerActivity.s(b.a).a("Drag_Start");
        }
        return;
      }
      catch (Exception paraml)
      {
        label473:
        label490:
        paraml.printStackTrace();
      }
      FileExplorerActivity.j(b.a).setImage(b.a.c(2130838139));
      break;
      FileExplorerActivity.j(b.a).setEnabled(true);
      continue;
      FileExplorerActivity.k(b.a).setEnabled(true);
      FileExplorerActivity.j(b.a).setEnabled(true);
      FileExplorerActivity.m(b.a).setEnabled(true);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.bv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */