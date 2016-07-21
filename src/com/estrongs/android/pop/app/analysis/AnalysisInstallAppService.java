package com.estrongs.android.pop.app.analysis;

import android.app.IntentService;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.text.TextUtils;
import android.widget.RemoteViews;
import com.estrongs.android.j.c;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.ai;
import com.estrongs.android.pop.utils.w;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.notification.d;
import java.util.HashSet;
import java.util.Set;

public class AnalysisInstallAppService
  extends IntentService
{
  private static String a = "AnalysisInstallAppService";
  private c b = null;
  
  public AnalysisInstallAppService()
  {
    super(a);
  }
  
  private Intent a(Context paramContext, String paramString1, String paramString2)
  {
    Intent localIntent = new Intent();
    localIntent.setClass(paramContext, FileExplorerActivity.class);
    localIntent.setAction(p.c);
    localIntent.putExtra(p.a, paramString1);
    localIntent.putExtra(p.b, paramString2);
    return localIntent;
  }
  
  private Intent a(String paramString)
  {
    return p.a().d(paramString);
  }
  
  private void a(String paramString1, String paramString2)
  {
    String str1 = FexApplication.a().getString(2131230934);
    String str2 = String.format(FexApplication.a().getString(2131230933), new Object[] { paramString1 });
    RemoteViews localRemoteViews = new RemoteViews(getPackageName(), 2130903360);
    localRemoteViews.setTextViewText(2131625315, str1);
    localRemoteViews.setTextViewText(2131625316, str2);
    d locald = new d(this, false);
    locald.a(2130838222);
    locald.a(str2);
    locald.b(str1);
    locald.c(str2);
    locald.a(false);
    locald.b(false);
    locald.a(localRemoteViews);
    locald.a(a(this, paramString1, paramString2), true);
    locald.b(a(paramString2), false);
    locald.c();
    b = c.a(this);
    if (b != null)
    {
      b.a("Notify_perim_click");
      b.c("analysis", "Notify_perim_click");
      b.d("act5");
      b.a("act5", "sensitive_authority");
    }
    p.a().a(locald);
    try
    {
      paramString1 = c.a(this);
      paramString1.a("Notify_perm_show");
      paramString1.c("Notify_perm_show_uv");
      paramString1.c("analysis", "Notify_perm_show");
      return;
    }
    catch (Exception paramString1)
    {
      paramString1.printStackTrace();
    }
  }
  
  protected void onHandleIntent(Intent paramIntent)
  {
    str = paramIntent.getStringExtra(p.b);
    com.estrongs.android.util.l.b(a, "packageName : " + str);
    if (TextUtils.isEmpty(str))
    {
      p.a().c(str);
      p.a().a(false);
      return;
    }
    if (!a.c())
    {
      p.a().c(str);
      p.a().a(false);
      return;
    }
    if (!ad.a(this).bh())
    {
      p.a().c(str);
      p.a().a(false);
      return;
    }
    if (com.estrongs.android.a.l.a(str))
    {
      p.a().a(false);
      p.a().c(str);
      p.a().b();
      return;
    }
    Object localObject2 = FexApplication.a().getPackageManager();
    paramIntent = null;
    try
    {
      localObject1 = getPackageInfo1applicationInfo.loadLabel((PackageManager)localObject2).toString();
      paramIntent = (Intent)localObject1;
    }
    catch (PackageManager.NameNotFoundException paramIntent)
    {
      Object localObject1;
      HashSet localHashSet;
      int j;
      p.a().c(str);
      p.a().a(false);
      p.a().b();
      return;
      com.estrongs.android.util.l.b(a, "appName : " + (String)localObject1);
      com.estrongs.android.util.l.b(a, "sensitivePermission size : " + localHashSet.size());
      if (localHashSet.size() <= 0) {
        break label467;
      }
      if (!p.a().c()) {
        break label374;
      }
      p.a().a(false);
      return;
      paramIntent = ai.b(getApplicationContext());
      long l1 = System.currentTimeMillis();
      long l2 = paramIntent.z();
      int i = paramIntent.A();
      if ((l2 != 0L) && (l1 - l2 <= 86400000L)) {
        break label444;
      }
      paramIntent.g(l1);
      paramIntent.b(1);
      for (;;)
      {
        a((String)localObject1, str);
        p.a().a(false);
        return;
        if (i >= 2) {
          break;
        }
        paramIntent.b(i + 1);
      }
      p.a().a(false);
      return;
      p.a().c(str);
      p.a().a(false);
      p.a().b();
      return;
    }
    catch (Exception localException)
    {
      for (;;) {}
    }
    localObject1 = paramIntent;
    if (TextUtils.isEmpty(paramIntent)) {
      localObject1 = str;
    }
    paramIntent = w.e((PackageManager)localObject2, str);
    localObject2 = com.estrongs.android.a.l.e();
    localHashSet = new HashSet();
    j = paramIntent.length;
    i = 0;
    while (i < j)
    {
      Object localObject3 = paramIntent[i];
      if ((((Set)localObject2).contains(localObject3)) && (!localHashSet.contains(localObject3))) {
        localHashSet.add(localObject3);
      }
      i += 1;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.analysis.AnalysisInstallAppService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */