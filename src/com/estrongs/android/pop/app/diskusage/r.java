package com.estrongs.android.pop.app.diskusage;

import android.widget.ListView;
import com.estrongs.android.ui.a.k;

class r
  implements Runnable
{
  r(h paramh) {}
  
  public void run()
  {
    if (h.m(a) != null)
    {
      h.m(a).a(null);
      h.n(a).setAdapter(h.m(a));
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.diskusage.r
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */