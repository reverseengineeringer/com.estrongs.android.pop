package com.estrongs.android.pop.app;

import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import com.estrongs.android.j.c;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.ac;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.app.ad.a;
import com.estrongs.android.pop.b;
import com.estrongs.android.pop.esclasses.ESResourceActivity;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.pop.z;
import com.estrongs.android.ui.view.ak;
import com.estrongs.android.util.ap;
import com.estrongs.fs.util.j;
import java.util.List;

public class InstallMonitorActivity
  extends ESResourceActivity
{
  private c a = null;
  
  private String a(String paramString)
  {
    if (paramString == null) {}
    String str;
    do
    {
      return null;
      str = b.b();
      if (!paramString.startsWith("/mnt/asec")) {
        break;
      }
      paramString = ap.a();
      paramString.remove(str);
    } while (paramString.size() <= 0);
    return (String)paramString.get(0);
    return str;
  }
  
  private void a()
  {
    for (;;)
    {
      try
      {
        Object localObject1 = getIntent().getStringExtra("packageName");
        localObject1 = getPackageManager().getPackageInfo((String)localObject1, 0);
        String str2 = a(applicationInfo.sourceDir);
        if (str2 == null) {
          break;
        }
        Object localObject2 = j.k(str2);
        if (localObject2 == null) {
          break;
        }
        if (localObject2.length < 3) {
          return;
        }
        if (ac.a() < 8) {
          break label180;
        }
        if (((applicationInfo.flags & 0x40000) != 0) && (str2.startsWith("/mnt/asec")))
        {
          localObject1 = getString(2131232376);
          if (localObject2[0] / localObject2[1] < 3L) {
            break;
          }
          str2 = getString(2131231364, new Object[] { j.c(localObject2[1] * localObject2[2]) });
          localObject2 = str2;
          if (localObject1 != null) {
            localObject2 = (String)localObject1 + " " + str2;
          }
          ak.a(this, (CharSequence)localObject2, 1);
          return;
        }
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        return;
      }
      String str1 = getString(2131232377);
      continue;
      label180:
      str1 = null;
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    a = c.a(this);
    FileExplorerActivity.g(true);
    try
    {
      a.d("act6");
      a.a("act6", "install");
      return;
    }
    catch (Exception paramBundle)
    {
      paramBundle.printStackTrace();
    }
  }
  
  protected void onPause()
  {
    super.onPause();
  }
  
  protected void onResume()
  {
    super.onResume();
    if ((!z.aj) && (ad.a(FexApplication.a()).Q())) {
      a();
    }
    a.a().a("install");
    finish();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.InstallMonitorActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */