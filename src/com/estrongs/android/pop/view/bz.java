package com.estrongs.android.pop.view;

import com.estrongs.android.ui.drag.l;
import com.estrongs.android.util.am;
import java.util.ArrayList;
import java.util.List;

class bz
  implements com.estrongs.android.ui.drag.c
{
  bz(FileExplorerActivity paramFileExplorerActivity) {}
  
  public void a(l paraml, Object paramObject)
  {
    paraml = (List)paramObject;
    if ((am.Y(a.z())) && (!am.af(a.z())))
    {
      paramObject = new ArrayList(paraml.size());
      int i = 0;
      while (i < paraml.size())
      {
        ((List)paramObject).add((com.estrongs.fs.impl.b.c)paraml.get(i));
        i += 1;
      }
      a.Q().a((List)paramObject);
      a.s();
      return;
    }
    a.a(paraml);
  }
  
  public void b(l paraml, Object paramObject) {}
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.bz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */