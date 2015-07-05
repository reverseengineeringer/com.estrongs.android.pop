package com.estrongs.android.appinfo;

import com.estrongs.android.pop.FexApplication;
import com.estrongs.fs.h;

class k
  implements q
{
  int a = 0;
  
  k(AppFolderInfoManager paramAppFolderInfoManager, String paramString) {}
  
  public void a()
  {
    if (a > 0) {
      c.b(b);
    }
  }
  
  public void a(h paramh)
  {
    c.a(FexApplication.a(), paramh, null);
    a += 1;
    if (a > 3)
    {
      a = 0;
      c.b(b);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.appinfo.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */