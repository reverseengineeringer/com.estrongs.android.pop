package com.estrongs.android.appinfo;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.provider.Settings.Secure;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.app.imageviewer.gallery.g;
import com.estrongs.android.pop.netfs.utils.HttpUtils;
import com.estrongs.android.util.aa;
import com.estrongs.fs.h;
import java.net.URLEncoder;
import java.util.concurrent.locks.Lock;

class i
  extends Thread
{
  i(AppFolderInfoManager paramAppFolderInfoManager, String paramString1, String paramString2, h paramh, v paramv, Context paramContext, boolean paramBoolean) {}
  
  public void run()
  {
    if (g.c == null) {
      g.a();
    }
    g.k.lock();
    for (;;)
    {
      try
      {
        AppFolderInfoManager.a(g, a, b);
      }
      catch (Exception localException1)
      {
        Object localObject1;
        Object localObject4;
        int i;
        localException1.printStackTrace();
        g.k.unlock();
        continue;
      }
      finally
      {
        g.k.unlock();
      }
      try
      {
        localObject1 = FexApplication.a().getPackageManager();
        localObject4 = ((PackageManager)localObject1).getPackageInfo(b, 0);
        if (localObject4 != null) {
          AppFolderInfoManager.a(g, (PackageManager)localObject1, (PackageInfo)localObject4);
        }
      }
      catch (Exception localException2)
      {
        Object localObject3;
      }
    }
    localObject1 = c.getAbsolutePath();
    for (i = ((String)localObject1).lastIndexOf("/"); i > 0; i = ((String)localObject1).lastIndexOf("/", i - 1))
    {
      localObject4 = ((String)localObject1).substring(0, i);
      g.d.b(localObject4);
    }
    g.d.b(localObject2);
    d.a();
    localObject3 = Settings.Secure.getString(e.getContentResolver(), "android_id");
    localObject3 = String.format("http://www.estrongs.com/console/service/app_folder/share.php?f=%s&a=%s&i=%s", new Object[] { URLEncoder.encode(HttpUtils.base64Encode(a.getBytes())), b, localObject3 });
    if ((f) && (b != null))
    {
      localObject3 = new aa((String)localObject3);
      ((aa)localObject3).a(new j(this));
      ((aa)localObject3).c();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.appinfo.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */