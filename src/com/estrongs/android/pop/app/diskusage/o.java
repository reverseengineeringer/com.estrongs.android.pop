package com.estrongs.android.pop.app.diskusage;

import com.estrongs.android.view.ca;
import com.estrongs.android.widget.bj;
import java.io.File;

class o
  implements bj
{
  o(h paramh) {}
  
  public boolean a()
  {
    h.B(a);
    if (h.C(a) != null)
    {
      h.a(a, h.C(a));
      if (h.D(a) != null) {
        h.E(a).a("du://" + h.o(a).getAbsolutePath(), true);
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