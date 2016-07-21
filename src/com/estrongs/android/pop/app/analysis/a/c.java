package com.estrongs.android.pop.app.analysis.a;

import com.estrongs.android.k.d;
import com.estrongs.android.pop.app.unlock.g;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;

class c
  implements g
{
  c(a parama) {}
  
  public void a(d paramd)
  {
    if (a.a(a).containsKey(paramd))
    {
      int i = a.b(a).indexOf(a.a(a).get(paramd));
      if (i != -1)
      {
        a.b(a).remove(i);
        a.notifyItemRemoved(i);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.analysis.a.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */