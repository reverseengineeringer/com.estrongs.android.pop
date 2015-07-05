package com.estrongs.android.pop.view;

import android.os.Handler;
import com.estrongs.android.ui.d.e;
import com.estrongs.android.ui.e.in;
import com.estrongs.android.view.aw;
import com.estrongs.android.view.cb;
import java.util.List;

class bp
  implements cb
{
  bp(FileExplorerActivity paramFileExplorerActivity) {}
  
  public void a()
  {
    FileExplorerActivity.b(a);
  }
  
  public void a(aw paramaw, boolean paramBoolean)
  {
    FileExplorerActivity.b(a);
    if ((FileExplorerActivity.c(a) == 4) || (FileExplorerActivity.c(a) == 2) || (FileExplorerActivity.c(a) == 1) || (FileExplorerActivity.c(a) == 3) || (FileExplorerActivity.c(a) == 28))
    {
      aw localaw = a.y();
      if ((localaw != null) && (localaw.h() != null) && (localaw.h().isEmpty()))
      {
        int i = e.a();
        FileExplorerActivity.a(a, in.a(FileExplorerActivity.c(a)), i);
      }
    }
    a.h.postDelayed(new bq(this), 1000L);
    if ((paramBoolean) && (paramaw != null)) {
      FileExplorerActivity.a(a, paramaw);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.bp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */