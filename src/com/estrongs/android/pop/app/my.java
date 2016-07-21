package com.estrongs.android.pop.app;

import com.estrongs.android.ui.dialog.bl;
import java.util.ArrayList;

class my
  implements Runnable
{
  my(mx parammx, ArrayList paramArrayList, String paramString) {}
  
  public void run()
  {
    if ((a == null) || (a.isEmpty()))
    {
      c.b.finish();
      return;
    }
    if (UninstallMonitorActivity.a == null)
    {
      UninstallMonitorActivity.a = new bl(c.b, b, c.a, a, new mz(this));
      return;
    }
    UninstallMonitorActivity.a.a(b, c.a, a);
    c.b.finish();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.my
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */