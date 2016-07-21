package com.estrongs.android.ui.c;

import com.estrongs.android.k.d;
import com.estrongs.android.pop.app.unlock.g;
import com.estrongs.android.util.l;
import java.util.List;
import java.util.Map;

class c
  implements g
{
  c(a parama) {}
  
  public void a(d paramd)
  {
    l.c("onRemoveUnLockCardView");
    if (a.a(a).containsKey(paramd))
    {
      int i = a.b(a).indexOf(a.a(a).get(paramd));
      if (i != -1)
      {
        a.b(a).remove(i);
        a.notifyItemRemoved(i);
      }
      l.c(i + ", " + a.b(a).size());
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.c.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */