package com.dianxinos.library.notify.c;

import android.content.pm.PackageInfo;
import com.dianxinos.library.notify.dispatcher.q;

class e
  implements Runnable
{
  e(d paramd, PackageInfo paramPackageInfo) {}
  
  public void run()
  {
    q.b(a.packageName, a.versionCode);
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.library.notify.c.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */