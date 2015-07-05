package com.estrongs.android.ui.dialog;

import android.view.View;
import com.estrongs.android.appinfo.AppFolderInfoManager.RemnantFolder;
import com.estrongs.fs.b.am;
import com.estrongs.fs.h;
import com.estrongs.fs.impl.local.f;
import java.io.File;
import java.util.ArrayList;

class bw
  implements Runnable
{
  bw(bv parambv, View paramView) {}
  
  public void run()
  {
    bx localbx = (bx)a.getTag();
    AppFolderInfoManager.RemnantFolder localRemnantFolder;
    if ((localbx != null) && (e >= 0) && (e < b.a.a.i.size()))
    {
      localObject1 = (bs)b.a.a.i.get(e);
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
    hc localhc = new hc(b.a.a.a, (h)localObject1, true);
    try
    {
      am localam = (am)localRemnantFolder.a();
      localObject1 = localam;
      if (localam == null) {
        localObject1 = bj.a(b.a.a, f, false);
      }
      localhc.a((am)localObject1);
      localhc.a();
      return;
    }
    finally {}
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.bw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */