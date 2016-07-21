package com.estrongs.android.pop.app.cleaner;

import com.estrongs.android.k.d;
import com.estrongs.android.pop.app.unlock.g;
import java.util.List;
import java.util.Map;

class l
  implements g
{
  l(i parami) {}
  
  public void a(d paramd)
  {
    if (i.a(a).containsKey(paramd))
    {
      int i = i.b(a).indexOf(i.a(a).get(paramd));
      if (i != -1)
      {
        i.b(a).remove(i);
        a.notifyItemRemoved(i);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.cleaner.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */