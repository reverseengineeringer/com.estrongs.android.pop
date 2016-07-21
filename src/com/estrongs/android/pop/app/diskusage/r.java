package com.estrongs.android.pop.app.diskusage;

import android.support.v7.widget.RecyclerView;
import com.estrongs.android.ui.adapter.k;

class r
  implements Runnable
{
  r(h paramh) {}
  
  public void run()
  {
    if (h.n(a) != null)
    {
      h.n(a).a(null);
      h.p(a).setAdapter(h.n(a));
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.diskusage.r
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */