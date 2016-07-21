package com.estrongs.android.pop.view;

import com.estrongs.android.ui.drag.l;
import com.estrongs.android.util.ap;
import com.estrongs.fs.impl.b.d;
import java.util.ArrayList;
import java.util.List;

class aw
  implements com.estrongs.android.ui.drag.c
{
  aw(FileExplorerActivity paramFileExplorerActivity) {}
  
  public void a(l paraml, Object paramObject)
  {
    paraml = (List)paramObject;
    if ((ap.ai(a.P())) && (!ap.ap(a.P())))
    {
      paramObject = new ArrayList(paraml.size());
      int i = 0;
      while (i < paraml.size())
      {
        ((List)paramObject).add((d)paraml.get(i));
        i += 1;
      }
      a.ag().a((List)paramObject);
      a.B();
      return;
    }
    a.a(paraml);
  }
  
  public void b(l paraml, Object paramObject) {}
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.aw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */