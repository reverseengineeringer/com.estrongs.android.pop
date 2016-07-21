package com.estrongs.android.ui.dialog;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Handler;
import com.estrongs.android.appinfo.AppFolderInfoManager;
import com.estrongs.android.appinfo.m;
import com.estrongs.android.appinfo.s;
import com.estrongs.android.pop.FexApplication;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

class am
  implements Runnable
{
  am(ag paramag) {}
  
  public void run()
  {
    Object localObject = AppFolderInfoManager.d().a(a.f);
    if (localObject != null) {}
    for (localObject = a;; localObject = null)
    {
      s locals = AppFolderInfoManager.d().b(a.f);
      ArrayList localArrayList = new ArrayList();
      ap.a = (String)localObject;
      if (locals == null) {}
      for (localObject = null;; localObject = a)
      {
        ap.b = (String)localObject;
        localArrayList.add(null);
        localObject = a.d.getPackageManager();
        Iterator localIterator = FexApplication.a().a(8192).iterator();
        while (localIterator.hasNext()) {
          localArrayList.add(ap.a((PackageManager)localObject, (ApplicationInfo)localIterator.next()));
        }
      }
      Collections.sort(localArrayList);
      int j = localArrayList.size();
      int i = 0;
      if (i < j)
      {
        localObject = (ap)localArrayList.get(i);
        if ((localObject == null) || (!e)) {}
      }
      for (;;)
      {
        a.a.post(new an(this, localArrayList, locals, i));
        return;
        i += 1;
        break;
        i = 0;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.am
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */