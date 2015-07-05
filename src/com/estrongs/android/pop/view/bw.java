package com.estrongs.android.pop.view;

import com.estrongs.android.pop.utils.aj;
import com.estrongs.android.ui.drag.c;
import com.estrongs.android.ui.drag.l;
import com.estrongs.android.ui.view.ag;
import com.estrongs.android.util.am;
import com.estrongs.android.util.bd;
import com.estrongs.fs.h;
import com.estrongs.fs.m;
import java.util.Iterator;
import java.util.List;

class bw
  implements c
{
  bw(FileExplorerActivity paramFileExplorerActivity) {}
  
  public void a(l paraml, Object paramObject)
  {
    paraml = a.z();
    paramObject = (List)paramObject;
    if (am.bb(paraml))
    {
      if (((List)paramObject).size() >= 2)
      {
        ag.a(a, 2131428219, 0);
        return;
      }
      if (am.aV(paraml))
      {
        ag.a(a, 2131428220, 0);
        return;
      }
    }
    paraml = ((List)paramObject).iterator();
    do
    {
      if (!paraml.hasNext()) {
        break;
      }
    } while (!((h)paraml.next()).getFileType().a());
    for (int i = 1;; i = 0)
    {
      if (i != 0)
      {
        ag.a(a, 2131428103, 0);
        return;
      }
      if (((List)paramObject).size() == 1)
      {
        aj.a(a, ((h)((List)paramObject).get(0)).getAbsolutePath());
        a.s();
        return;
      }
      if (((List)paramObject).size() <= 1) {
        break;
      }
      aj.b(a, bd.a((List)paramObject));
      a.s();
      return;
    }
  }
  
  public void b(l paraml, Object paramObject) {}
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.bw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */