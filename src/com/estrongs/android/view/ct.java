package com.estrongs.android.view;

import android.widget.TextView;
import java.util.ArrayList;
import java.util.Iterator;

class ct
  implements Runnable
{
  ct(cs paramcs, aw paramaw) {}
  
  public void run()
  {
    Iterator localIterator = cq.a(b.a).iterator();
    while (localIterator.hasNext())
    {
      dd localdd = (dd)localIterator.next();
      if ((a == d) && (c != null)) {
        c.setText(a + " (" + a.d() + ")");
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.ct
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */