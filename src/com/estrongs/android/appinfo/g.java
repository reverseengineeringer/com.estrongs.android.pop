package com.estrongs.android.appinfo;

import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.ad;
import com.estrongs.android.scanner.l;

class g
  implements u
{
  g(AppFolderInfoManager paramAppFolderInfoManager, v paramv) {}
  
  public int a()
  {
    return AppFolderInfoManager.a(b);
  }
  
  public int a(String paramString)
  {
    return AppFolderInfoManager.a(b, paramString);
  }
  
  public int b()
  {
    return 1;
  }
  
  public void c()
  {
    if (b.r > 0)
    {
      b.d.a();
      a.a();
    }
    ad.a(FexApplication.a()).h(System.currentTimeMillis());
    l.a().h();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.appinfo.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */