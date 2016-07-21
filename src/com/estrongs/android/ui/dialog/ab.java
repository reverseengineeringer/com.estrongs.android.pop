package com.estrongs.android.ui.dialog;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Handler;
import com.estrongs.android.pop.FexApplication;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

class ab
  implements Runnable
{
  ab(aa paramaa) {}
  
  public void run()
  {
    a.mContext.getPackageManager();
    Object localObject = FexApplication.a().a(8192);
    ArrayList localArrayList = new ArrayList();
    localObject = ((List)localObject).iterator();
    while (((Iterator)localObject).hasNext())
    {
      ApplicationInfo localApplicationInfo = (ApplicationInfo)((Iterator)localObject).next();
      if ((!aa.a(a, packageName)) && ((flags & 0x1) <= 0)) {
        localArrayList.add(localApplicationInfo);
      }
    }
    a.a.post(new ac(this, localArrayList));
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.ab
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */