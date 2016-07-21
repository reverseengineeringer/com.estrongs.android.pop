package com.estrongs.android.ui.dialog;

import android.view.View;
import com.estrongs.android.appinfo.AppFolderInfoManager.RemnantFolder;
import com.estrongs.fs.b.ao;
import com.estrongs.fs.h;
import com.estrongs.fs.impl.local.f;
import java.io.File;
import java.util.ArrayList;

class by
  implements Runnable
{
  by(bx parambx, View paramView) {}
  
  public void run()
  {
    bz localbz = (bz)a.getTag();
    AppFolderInfoManager.RemnantFolder localRemnantFolder;
    if ((localbz != null) && (e >= 0) && (e < b.a.a.i.size()))
    {
      localObject1 = (bu)b.a.a.i.get(e);
      if ((f >= 0) && (f < c.size()))
      {
        localRemnantFolder = (AppFolderInfoManager.RemnantFolder)c.get(f);
        if (localRemnantFolder != null) {
          break label118;
        }
      }
    }
    return;
    label118:
    Object localObject1 = new f(new File(a));
    hf localhf = new hf(b.a.a.a, (h)localObject1, true);
    try
    {
      ao localao = (ao)localRemnantFolder.a();
      localObject1 = localao;
      if (localao == null) {
        localObject1 = bl.a(b.a.a, f, false);
      }
      localhf.a((ao)localObject1);
      localhf.a();
      return;
    }
    finally {}
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.by
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */