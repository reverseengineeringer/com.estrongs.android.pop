package com.estrongs.android.pop.view;

import android.os.Handler;
import com.estrongs.android.ui.d.i;
import com.estrongs.android.ui.e.ik;
import com.estrongs.android.view.cr;
import com.estrongs.android.view.dw;
import java.util.List;

class aq
  implements dw
{
  aq(FileExplorerActivity paramFileExplorerActivity) {}
  
  public void a()
  {
    FileExplorerActivity.b(a);
  }
  
  public void a(cr paramcr, boolean paramBoolean)
  {
    FileExplorerActivity.b(a);
    if ((a.e == 4) || (a.e == 2) || (a.e == 1) || (a.e == 3) || (a.e == 28))
    {
      cr localcr = a.O();
      if ((localcr != null) && (localcr.h() != null) && (localcr.h().isEmpty()))
      {
        int i = a.au().a();
        FileExplorerActivity.a(a, ik.a(a.e), i);
      }
    }
    a.i.postDelayed(new ar(this), 1000L);
    if ((paramBoolean) && (paramcr != null)) {
      FileExplorerActivity.a(a, paramcr);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.aq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */