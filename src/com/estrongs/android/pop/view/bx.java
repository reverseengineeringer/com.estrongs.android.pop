package com.estrongs.android.pop.view;

import android.view.LayoutInflater;
import android.widget.FrameLayout;
import com.estrongs.android.pop.esclasses.g;
import com.estrongs.android.ui.drag.DragLayer;
import com.estrongs.android.ui.drag.d;
import com.estrongs.android.ui.drag.l;
import com.estrongs.android.ui.drag.p;
import com.estrongs.android.util.am;
import com.estrongs.android.widget.ThumbContentViewSwitcher;
import java.util.ArrayList;
import java.util.List;

class bx
  implements com.estrongs.android.ui.drag.c
{
  bx(FileExplorerActivity paramFileExplorerActivity) {}
  
  public void a(l paraml, Object paramObject)
  {
    if ((am.Y(a.z())) && (!am.af(a.z())))
    {
      paraml = (List)paramObject;
      paramObject = new ArrayList(paraml.size());
      int i = 0;
      while (i < paraml.size())
      {
        ((List)paramObject).add((com.estrongs.fs.impl.b.c)paraml.get(i));
        i += 1;
      }
      a.Q().a(a, (List)paramObject);
      a.s();
    }
  }
  
  public void b(l paraml, Object paramObject)
  {
    if ((am.Y(a.z())) && (!am.af(a.z()))) {
      return;
    }
    if (FileExplorerActivity.z(a) == null)
    {
      FileExplorerActivity.a(a, (DragLayer)g.a(a).inflate(2130903115, null));
      FileExplorerActivity.K(a).addView(FileExplorerActivity.z(a));
      FileExplorerActivity.z(a).setVisibility(0);
      FileExplorerActivity.a(a, new p(a, FileExplorerActivity.z(a), FileExplorerActivity.o(a)));
    }
    for (;;)
    {
      if (FileExplorerActivity.j(a) != null) {
        FileExplorerActivity.j(a).setVisibility(8);
      }
      if (a.f != null) {
        a.f.c(a.f.h());
      }
      FileExplorerActivity.o(a).c();
      FileExplorerActivity.o(a).d();
      FileExplorerActivity.L(a).a();
      return;
      FileExplorerActivity.z(a).setVisibility(0);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.bx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */