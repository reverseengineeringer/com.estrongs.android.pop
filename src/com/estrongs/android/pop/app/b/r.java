package com.estrongs.android.pop.app.b;

import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.view.cq;
import java.util.ArrayList;
import java.util.List;

class r
  implements c
{
  r(k paramk) {}
  
  public void a(i parami, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      k.i(a).add(parami);
      if (k.i(a).size() <= 0) {
        break label115;
      }
      if (!k.j(a))
      {
        k.c(a, true);
        ((FileExplorerActivity)k.h(a)).p();
      }
    }
    for (;;)
    {
      ha)).F.a(new ArrayList(k.i(a)));
      return;
      k.i(a).remove(parami);
      break;
      label115:
      k.c(a, false);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.b.r
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */