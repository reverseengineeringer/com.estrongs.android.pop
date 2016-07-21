package com.estrongs.android.pop.view;

import android.view.LayoutInflater;
import android.widget.FrameLayout;
import com.estrongs.android.pop.esclasses.k;
import com.estrongs.android.ui.drag.DragLayer;
import com.estrongs.android.ui.drag.l;
import com.estrongs.android.ui.drag.p;
import com.estrongs.android.util.ap;
import com.estrongs.android.widget.ThumbContentViewSwitcher;
import java.util.ArrayList;
import java.util.List;

class au
  implements com.estrongs.android.ui.drag.c
{
  au(FileExplorerActivity paramFileExplorerActivity) {}
  
  public void a(l paraml, Object paramObject)
  {
    if ((ap.ai(a.P())) && (!ap.ap(a.P())))
    {
      paraml = (List)paramObject;
      paramObject = new ArrayList(paraml.size());
      int i = 0;
      while (i < paraml.size())
      {
        ((List)paramObject).add((com.estrongs.fs.impl.b.d)paraml.get(i));
        i += 1;
      }
      a.ag().a(a, (List)paramObject);
      a.B();
    }
  }
  
  public void b(l paraml, Object paramObject)
  {
    if ((ap.ai(a.P())) && (!ap.ap(a.P()))) {
      return;
    }
    if (FileExplorerActivity.x(a) == null)
    {
      FileExplorerActivity.a(a, (DragLayer)k.a(a).inflate(2130903204, null));
      a.f.addView(FileExplorerActivity.x(a));
      FileExplorerActivity.x(a).setVisibility(0);
      FileExplorerActivity.a(a, new p(a, FileExplorerActivity.x(a), FileExplorerActivity.l(a)));
    }
    for (;;)
    {
      if (FileExplorerActivity.g(a) != null) {
        FileExplorerActivity.g(a).setVisibility(8);
      }
      if (a.h != null) {
        a.h.b(a.h.getCurrentScreen());
      }
      FileExplorerActivity.l(a).c();
      FileExplorerActivity.l(a).d();
      FileExplorerActivity.E(a).a();
      return;
      FileExplorerActivity.x(a).setVisibility(0);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.au
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */