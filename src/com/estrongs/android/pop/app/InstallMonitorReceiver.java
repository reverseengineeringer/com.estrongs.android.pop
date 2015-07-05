package com.estrongs.android.pop.app;

import android.app.ActivityManager;
import android.app.ActivityManager.RunningTaskInfo;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import com.estrongs.android.appinfo.AppFolderInfoManager;
import com.estrongs.android.pop.utils.cc;
import com.estrongs.android.pop.z;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

public class InstallMonitorReceiver
  extends BroadcastReceiver
{
  private HashSet<String> a = null;
  private String[] b = { "com.supercell.clashofclans", "com.umonistudio.tile", "com.mobilityware.solitaire", "com.supercell.hayday", "com.selfawaregames.acecasino", "air.com.bitrhymes.bingo", "net.froemling.bombsquad", "com.midasplayer.apps.bubblewitchsaga2", "com.king.candycrushsaga", "com.igg.castleclash", "com.leftover.CoinDozer", "com.gotv.crackle.handset", "com.glu.deerhunt2", "com.midasplayer.apps.diamonddiggersaga", "com.explorationbase.ExplorationLite", "com.king.farmheroessaga", "com.bigduckgames.flow", "com.gamecircus.PrizeClaw", "com.melimots.WordSearch", "com.socialquantum.acityint", "com.android.calculator2", "com.google.android.calendar", "com.android.contacts", "com.google.android.apps.docs", "com.google.android.gm", "com.google.earth", "com.android.vending", "com.quickoffice.android" };
  
  private HashSet<String> a(Context paramContext)
  {
    if (a == null)
    {
      a = new HashSet();
      Object localObject1 = paramContext.getPackageManager();
      Object localObject2 = new Intent("android.intent.action.MAIN");
      ((Intent)localObject2).addCategory("android.intent.category.HOME");
      localObject1 = ((PackageManager)localObject1).queryIntentActivities((Intent)localObject2, 0).iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localObject2 = (ResolveInfo)((Iterator)localObject1).next();
        a.add(activityInfo.packageName);
      }
      int i = 0;
      while (i < b.length)
      {
        a.add(b[i]);
        i += 1;
      }
      a.add(paramContext.getPackageName());
    }
    return a;
  }
  
  private boolean b(Context paramContext)
  {
    try
    {
      List localList = ((ActivityManager)paramContext.getSystemService("activity")).getRunningTasks(2);
      if (localList != null)
      {
        if (localList.size() == 0) {
          return false;
        }
        String str = get0topActivity.getPackageName();
        if ((get0numActivities == 0) && (localList.size() > 1)) {
          str = get1topActivity.getPackageName();
        }
        for (;;)
        {
          if (cc.a())
          {
            if ((str.contains("video")) || (str.contains("camera")) || (str.contains("gallery")) || (str.contains("youtube")) || (str.contains("com.lenovo.scg")) || (str.contains("qqlive")) || (str.contains("youku")) || (str.contains("letv")) || (str.contains("com.storm.")) || (str.contains("com.tudou."))) {
              break label235;
            }
            if (!str.contains("pplive")) {
              break;
            }
            break label235;
          }
          boolean bool = a(paramContext).contains(str);
          if (!bool) {}
          for (bool = true;; bool = false) {
            return bool;
          }
        }
      }
    }
    catch (Exception paramContext)
    {
      return false;
    }
    return false;
    label235:
    return true;
  }
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    try
    {
      if (b(paramContext)) {
        return;
      }
      String str1 = paramIntent.getAction();
      if ("android.intent.action.PACKAGE_ADDED".equals(str1))
      {
        String str2 = paramIntent.getDataString().split(":")[1];
        if (!z.an)
        {
          Intent localIntent = new Intent(paramContext, InstallMonitorActivity.class);
          localIntent.addFlags(276824064);
          localIntent.putExtra("packageName", str2);
          paramContext.startActivity(localIntent);
        }
        if (!z.ap) {
          AppFolderInfoManager.d().g(str2);
        }
      }
      if (("android.intent.action.PACKAGE_REMOVED".equals(str1)) && (!paramIntent.getBooleanExtra("android.intent.extra.REPLACING", false)))
      {
        UninstallMonitorActivity.a(paramContext, paramIntent.getDataString().split(":")[1]);
        return;
      }
    }
    catch (Exception paramContext)
    {
      paramContext.printStackTrace();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.InstallMonitorReceiver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */