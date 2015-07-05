package com.estrongs.android.pop.app;

import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.ac;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.b;
import com.estrongs.android.pop.esclasses.ESActivity;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.pop.z;
import com.estrongs.android.ui.view.ag;
import com.estrongs.android.util.a;
import com.estrongs.android.util.am;
import com.estrongs.fs.util.j;
import java.util.List;

public class PerfNotifyActivity
  extends ESActivity
{
  private a a = null;
  
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
      paramString = am.a();
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
          localObject1 = getString(2131428366);
          if (localObject2[0] / localObject2[1] < 3L) {
            break;
          }
          str2 = getString(2131428364, new Object[] { j.c(localObject2[1] * localObject2[2]) });
          localObject2 = str2;
          if (localObject1 != null) {
            localObject2 = (String)localObject1 + " " + str2;
          }
          ag.a(this, (CharSequence)localObject2, 1);
          return;
        }
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        return;
      }
      String str1 = getString(2131428365);
      continue;
      label180:
      str1 = null;
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    a = a.a(this, false, "Shadow");
    FileExplorerActivity.h(true);
  }
  
  protected void onPause()
  {
    a.c();
    super.onPause();
  }
  
  protected void onResume()
  {
    super.onResume();
    a.b();
    if ((!z.aj) && (ad.a(FexApplication.a()).P())) {
      a();
    }
    finish();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.PerfNotifyActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */