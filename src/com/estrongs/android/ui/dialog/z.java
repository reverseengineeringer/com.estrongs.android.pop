package com.estrongs.android.ui.dialog;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Handler;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

class z
  implements Runnable
{
  z(y paramy) {}
  
  public void run()
  {
    Object localObject = a.mContext.getPackageManager().getInstalledApplications(8192);
    ArrayList localArrayList = new ArrayList();
    localObject = ((List)localObject).iterator();
    while (((Iterator)localObject).hasNext())
    {
      ApplicationInfo localApplicationInfo = (ApplicationInfo)((Iterator)localObject).next();
      if ((!y.a(a, packageName)) && ((flags & 0x1) <= 0)) {
        localArrayList.add(localApplicationInfo);
      }
    }
    a.a.post(new aa(this, localArrayList));
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.z
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */