package com.estrongs.android.ui.c;

import com.estrongs.android.k.d;
import com.estrongs.android.pop.app.unlock.y;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

class b
  implements y
{
  b(a parama) {}
  
  public void a(String paramString)
  {
    Iterator localIterator = a.a(a).keySet().iterator();
    d locald;
    do
    {
      if (!localIterator.hasNext()) {
        break;
      }
      locald = (d)localIterator.next();
    } while (!paramString.equals(locald.g()));
    for (paramString = locald;; paramString = null)
    {
      if (paramString != null)
      {
        int i = a.b(a).indexOf(a.a(a).get(paramString));
        if (i != -1) {
          a.notifyItemChanged(i);
        }
      }
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.c.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */