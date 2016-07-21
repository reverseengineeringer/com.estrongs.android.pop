package com.estrongs.android.ui.e;

import com.estrongs.android.pop.ad;
import com.estrongs.android.view.a.b;
import com.estrongs.fs.impl.adb.c;
import java.util.ArrayList;

class hu
  implements b
{
  hu(cr paramcr) {}
  
  public boolean a(cp paramcp)
  {
    if ((Q) && (!E) && (c.b()))
    {
      paramcp = new ArrayList();
      ad.a(cr.b(a)).e(paramcp);
      if (!paramcp.isEmpty()) {
        return true;
      }
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.hu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */