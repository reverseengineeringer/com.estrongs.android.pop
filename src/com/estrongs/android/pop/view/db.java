package com.estrongs.android.pop.view;

import com.estrongs.android.util.ap;
import com.estrongs.android.view.cr;

class db
  implements Runnable
{
  db(FileExplorerActivity paramFileExplorerActivity) {}
  
  public void run()
  {
    cr localcr = a.O();
    String str = a.P();
    if ((localcr != null) && (str != null) && (!localcr.ae()))
    {
      if ((ap.bi(a.P())) && (!ap.ah(ap.bQ(a.P()))))
      {
        a.O().d(0L);
        a.O().o("all");
      }
      localcr.f();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.db
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */