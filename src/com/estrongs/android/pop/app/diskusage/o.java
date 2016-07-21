package com.estrongs.android.pop.app.diskusage;

import com.estrongs.android.view.dv;
import com.estrongs.android.widget.bk;
import java.io.File;

class o
  implements bk
{
  o(h paramh) {}
  
  public boolean a()
  {
    h.D(a);
    if (h.E(a) != null)
    {
      h.a(a, h.E(a));
      if (h.F(a) != null) {
        h.G(a).a("du://" + h.q(a).getAbsolutePath(), true);
      }
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.diskusage.o
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */