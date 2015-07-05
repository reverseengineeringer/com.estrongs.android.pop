package com.estrongs.android.ui.e;

import com.estrongs.android.pop.ad;
import com.estrongs.android.view.a.b;
import com.estrongs.fs.impl.adb.c;
import java.util.ArrayList;

class cu
  implements b
{
  cu(cp paramcp) {}
  
  public boolean a(co paramco)
  {
    if ((I) && (!D) && (c.b()))
    {
      paramco = new ArrayList();
      ad.a(a.b).e(paramco);
      if (!paramco.isEmpty()) {
        return true;
      }
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.cu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */