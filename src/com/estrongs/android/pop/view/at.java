package com.estrongs.android.pop.view;

import com.estrongs.android.pop.utils.ao;
import com.estrongs.android.ui.drag.c;
import com.estrongs.android.ui.drag.l;
import com.estrongs.android.ui.view.ak;
import com.estrongs.android.util.ap;
import com.estrongs.android.util.bk;
import com.estrongs.fs.d;
import com.estrongs.fs.h;
import com.estrongs.fs.w;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

class at
  implements c
{
  at(FileExplorerActivity paramFileExplorerActivity) {}
  
  public void a(l paraml, Object paramObject)
  {
    paraml = a.P();
    Object localObject1 = (List)paramObject;
    if (ap.bm(paraml))
    {
      if (((List)localObject1).size() >= 2)
      {
        ak.a(a, 2131232343, 0);
        return;
      }
      if (ap.bg(paraml))
      {
        ak.a(a, 2131232341, 0);
        return;
      }
    }
    paraml = new LinkedList();
    paramObject = new LinkedList();
    Object localObject2 = ((List)localObject1).iterator();
    while (((Iterator)localObject2).hasNext())
    {
      h localh = (h)((Iterator)localObject2).next();
      if (localh.getFileType().a()) {
        ((List)paramObject).add(localh);
      } else {
        paraml.add(localh);
      }
    }
    if (ap.bl(((h)((List)localObject1).get(0)).getAbsolutePath())) {
      try
      {
        while (((List)paramObject).size() != 0)
        {
          localObject1 = d.a(a).a(((h)((List)paramObject).remove(0)).getAbsolutePath());
          if ((localObject1 != null) && (((List)localObject1).size() > 0))
          {
            localObject1 = ((List)localObject1).iterator();
            while (((Iterator)localObject1).hasNext())
            {
              localObject2 = (h)((Iterator)localObject1).next();
              if (!((h)localObject2).getFileType().a()) {
                break label304;
              }
              ((List)paramObject).add(localObject2);
            }
          }
        }
        if (paraml.size() != 1) {
          break label316;
        }
      }
      catch (Exception paramObject) {}
    }
    ao.a(a, ((h)paraml.get(0)).getAbsolutePath());
    for (;;)
    {
      a.B();
      return;
      label304:
      paraml.add(localObject2);
      break;
      label316:
      if (paraml.size() > 1) {
        ao.b(a, bk.a(paraml));
      }
    }
  }
  
  public void b(l paraml, Object paramObject) {}
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.at
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */