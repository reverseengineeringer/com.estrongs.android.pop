package com.estrongs.android.pop.app;

import com.estrongs.android.ui.dialog.bj;
import java.util.ArrayList;

class mh
  implements Runnable
{
  mh(mg parammg, ArrayList paramArrayList, String paramString) {}
  
  public void run()
  {
    if ((a == null) || (a.isEmpty()))
    {
      c.b.finish();
      return;
    }
    if (UninstallMonitorActivity.a == null)
    {
      UninstallMonitorActivity.a = new bj(c.b, b, c.a, a, new mi(this));
      return;
    }
    UninstallMonitorActivity.a.a(b, c.a, a);
    c.b.finish();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.mh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */