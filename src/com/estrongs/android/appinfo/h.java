package com.estrongs.android.appinfo;

import android.util.Log;
import com.estrongs.android.util.ab;
import java.io.File;

class h
  implements ab
{
  h(AppFolderInfoManager paramAppFolderInfoManager, String paramString1, String paramString2, t paramt) {}
  
  public void a(Object paramObject) {}
  
  public void a(Object paramObject, long paramLong1, long paramLong2) {}
  
  public void a(Object paramObject, Throwable paramThrowable)
  {
    Log.e("AppFolder", "request app_folder_map update info failed !");
  }
  
  public void b(Object paramObject)
  {
    Object localObject = new File(a);
    if ((((File)localObject).exists()) && (((File)localObject).length() > 0L))
    {
      paramObject = new File(b);
      ((File)paramObject).delete();
      ((File)localObject).renameTo((File)paramObject);
      localObject = AppFolderInfoManager.a(d, (File)paramObject);
      ((File)paramObject).delete();
      if (localObject != null) {
        try
        {
          paramObject = d;
          int i = q;
          q = (c.a((String)localObject) + i);
          AppFolderInfoManager.a(d, c);
          return;
        }
        catch (Exception paramObject)
        {
          c.c();
          return;
        }
      }
      c.c();
      return;
    }
    ((File)localObject).delete();
    c.c();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.appinfo.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */