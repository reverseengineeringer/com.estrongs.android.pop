package com.estrongs.android.pop.view;

import com.estrongs.android.ui.e.w;
import com.estrongs.android.view.av;
import com.estrongs.android.view.aw;
import com.estrongs.fs.h;
import java.util.List;

class bf
  implements av<h>
{
  bf(FileExplorerActivity paramFileExplorerActivity) {}
  
  public void a(List<h> paramList)
  {
    String str = a.z();
    aw localaw = a.y();
    if (localaw == null) {
      return;
    }
    int i = localaw.d();
    a.k.a(str, paramList);
    a.a(paramList.size(), i);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.bf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */