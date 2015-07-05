package com.estrongs.android.ui.dialog;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Handler;
import com.estrongs.android.appinfo.AppFolderInfoManager;
import com.estrongs.android.appinfo.m;
import com.estrongs.android.appinfo.r;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

class ak
  implements Runnable
{
  ak(ae paramae) {}
  
  public void run()
  {
    Object localObject = AppFolderInfoManager.d().a(a.f);
    if (localObject != null) {}
    for (localObject = a;; localObject = null)
    {
      r localr = AppFolderInfoManager.d().b(a.f);
      ArrayList localArrayList = new ArrayList();
      an.a = (String)localObject;
      if (localr == null) {}
      for (localObject = null;; localObject = a)
      {
        an.b = (String)localObject;
        localArrayList.add(null);
        localObject = a.d.getPackageManager();
        Iterator localIterator = ((PackageManager)localObject).getInstalledApplications(8192).iterator();
        while (localIterator.hasNext()) {
          localArrayList.add(an.a((PackageManager)localObject, (ApplicationInfo)localIterator.next()));
        }
      }
      Collections.sort(localArrayList);
      int j = localArrayList.size();
      int i = 0;
      if (i < j)
      {
        localObject = (an)localArrayList.get(i);
        if ((localObject == null) || (!e)) {}
      }
      for (;;)
      {
        a.a.post(new al(this, localArrayList, localr, i));
        return;
        i += 1;
        break;
        i = 0;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.ak
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */