package com.estrongs.android.pop.view;

import android.widget.RelativeLayout;
import com.estrongs.android.ui.drag.DragActionZone;
import com.estrongs.android.ui.drag.DragLayer;
import com.estrongs.android.ui.drag.d;
import com.estrongs.android.ui.drag.g;
import com.estrongs.android.ui.drag.l;
import com.estrongs.android.ui.pcs.r;
import com.estrongs.android.ui.view.by;
import com.estrongs.android.util.am;
import com.estrongs.android.view.aw;
import com.estrongs.fs.h;
import com.estrongs.fs.impl.pcs.b;
import com.estrongs.fs.m;
import java.util.List;

class da
  implements g
{
  da(cz paramcz, String paramString) {}
  
  public void a()
  {
    if (b.a.i != null) {
      b.a.i.b(true);
    }
    if (b.a.g != null) {
      b.a.g.setVisibility(0);
    }
    if ((FileExplorerActivity.j(b.a) != null) && (FileExplorerActivity.j(b.a).getVisibility() == 0))
    {
      FileExplorerActivity.n(b.a).startAnimation(FileExplorerActivity.v(b.a));
      FileExplorerActivity.m(b.a).startAnimation(FileExplorerActivity.w(b.a));
      FileExplorerActivity.p(b.a).startAnimation(FileExplorerActivity.x(b.a));
      FileExplorerActivity.q(b.a).startAnimation(FileExplorerActivity.y(b.a));
    }
    if (FileExplorerActivity.z(b.a) != null) {
      FileExplorerActivity.z(b.a).setVisibility(8);
    }
    aw localaw = b.a.y();
    if (localaw != null) {
      localaw.e();
    }
  }
  
  public void a(l paraml, Object paramObject, int paramInt)
  {
    b.a.i.b(false);
    if (b.a.g != null) {
      b.a.g.setVisibility(4);
    }
    if (FileExplorerActivity.j(b.a) == null) {
      FileExplorerActivity.l(b.a);
    }
    if ((am.Y(a)) && (!am.af(a))) {
      FileExplorerActivity.m(b.a).a(b.a.c(2130838166));
    }
    for (;;)
    {
      FileExplorerActivity.j(b.a).setVisibility(0);
      FileExplorerActivity.o(b.a).b(FileExplorerActivity.n(b.a));
      FileExplorerActivity.o(b.a).b(FileExplorerActivity.m(b.a));
      FileExplorerActivity.o(b.a).b(FileExplorerActivity.p(b.a));
      FileExplorerActivity.o(b.a).b(FileExplorerActivity.q(b.a));
      FileExplorerActivity.n(b.a).startAnimation(FileExplorerActivity.r(b.a));
      FileExplorerActivity.m(b.a).startAnimation(FileExplorerActivity.s(b.a));
      FileExplorerActivity.p(b.a).startAnimation(FileExplorerActivity.t(b.a));
      FileExplorerActivity.q(b.a).startAnimation(FileExplorerActivity.u(b.a));
      paraml = b.a.y();
      boolean bool = paraml.w().contains(b.a());
      if (((paraml == null) || (!am.bb(a)) || ((paraml.w().size() == 1) && (!((h)paraml.w().get(0)).getFileType().a()))) && (!bool)) {
        break label488;
      }
      FileExplorerActivity.n(b.a).setEnabled(false);
      FileExplorerActivity.p(b.a).setEnabled(false);
      if ((!bool) || (r.a().b())) {
        break;
      }
      FileExplorerActivity.m(b.a).setEnabled(false);
      return;
      FileExplorerActivity.m(b.a).a(b.a.c(2130837801));
    }
    FileExplorerActivity.m(b.a).setEnabled(true);
    return;
    label488:
    FileExplorerActivity.n(b.a).setEnabled(true);
    FileExplorerActivity.m(b.a).setEnabled(true);
    FileExplorerActivity.p(b.a).setEnabled(true);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.da
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */