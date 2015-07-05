package com.estrongs.android.pop.utils;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.Signature;
import android.net.Uri;
import android.os.Build;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.pop.view.utils.v;
import com.estrongs.android.ui.dialog.ct;
import com.estrongs.android.ui.view.ag;
import java.security.MessageDigest;
import java.util.List;

public class w
{
  private static String a = "com.estrongs.android.taskmanager";
  private static String b = "http://www.amazon.com/gp/mas/dl/android?p=" + a + "&showAll=1";
  private static String c = "android.intent.action.PICK_TASK_MANAGER";
  
  public static int a(PackageManager paramPackageManager, String paramString)
  {
    try
    {
      int i = getPackageInfo16384versionCode;
      return i;
    }
    catch (PackageManager.NameNotFoundException paramPackageManager)
    {
      paramPackageManager.printStackTrace();
    }
    return -1;
  }
  
  public static String a(PackageManager paramPackageManager, ApplicationInfo paramApplicationInfo)
  {
    try
    {
      paramPackageManager = paramApplicationInfo.loadLabel(paramPackageManager).toString().trim().replace("?", " ").replace("/", " ").replace("\\", " ").replace("*", " ").replace("|", " ").replace(":", " ").replace("<", " ").replace(">", " ").replace("\"", " ");
      return paramPackageManager;
    }
    catch (Exception paramPackageManager) {}
    return "Unknown";
  }
  
  public static void a(Context paramContext)
  {
    if (c(paramContext))
    {
      Intent localIntent = new Intent(c);
      if (localIntent != null) {
        localIntent.addFlags(268435456);
      }
      try
      {
        paramContext.startActivity(localIntent);
        return;
      }
      catch (ActivityNotFoundException localActivityNotFoundException)
      {
        ag.a(paramContext, 2131427839, 0);
        return;
      }
    }
    d(paramContext);
  }
  
  public static void a(Context paramContext, v paramv)
  {
    String str = paramContext.getText(2131427876) + "\n\n" + g;
    new ct(paramContext).a(2131427398).b(str).b(2131427341, new x(paramv, paramContext)).c(2131427342, null).c();
  }
  
  public static void a(Context paramContext, String paramString1, String paramString2)
  {
    if ("Market".equals("Web"))
    {
      if (FileExplorerActivity.e.equals("Amazon"))
      {
        f(paramContext);
        return;
      }
      e(paramContext);
      return;
    }
    PackageManager localPackageManager = paramContext.getPackageManager();
    Intent localIntent = new Intent("android.intent.action.VIEW");
    localIntent.setData(Uri.parse("market://search?q=" + paramString2 + ":" + paramString1));
    if (localPackageManager.queryIntentActivities(localIntent, 0).size() != 0)
    {
      paramContext.startActivity(localIntent);
      return;
    }
    localIntent.setData(Uri.parse("market://details?id=" + paramString1));
    if (localPackageManager.queryIntentActivities(localIntent, 0).size() != 0)
    {
      paramContext.startActivity(localIntent);
      return;
    }
    if ("Meizu".equalsIgnoreCase(Build.BRAND))
    {
      localIntent.setData(Uri.parse("mstore:http://app.meizu.com/phone/apps/" + paramString1));
      if (localPackageManager.queryIntentActivities(localIntent, 0).size() != 0)
      {
        paramContext.startActivity(localIntent);
        return;
      }
    }
    e(paramContext);
  }
  
  public static boolean a(String paramString)
  {
    PackageManager localPackageManager = FexApplication.a().getPackageManager();
    try
    {
      localPackageManager.getPackageInfo(paramString, 1);
      return true;
    }
    catch (PackageManager.NameNotFoundException paramString) {}
    return false;
  }
  
  public static String b(PackageManager paramPackageManager, String paramString)
  {
    return b(d(paramPackageManager, paramString));
  }
  
  private static String b(String paramString)
  {
    long l3 = 0L;
    int k = 8;
    if (paramString != null) {
      try
      {
        if (paramString.length() >= 32)
        {
          paramString = paramString.substring(8, 24);
          int i = 0;
          long l1 = 0L;
          int j;
          long l2;
          for (;;)
          {
            j = k;
            l2 = l3;
            if (i >= 8) {
              break;
            }
            l1 = l1 * 16L + Integer.parseInt(paramString.substring(i, i + 1), 16);
            i += 1;
          }
          while (j < paramString.length())
          {
            l2 = l2 * 16L + Integer.parseInt(paramString.substring(j, j + 1), 16);
            j += 1;
          }
          return String.valueOf(l2 + l1 & 0xFFFFFFFF);
        }
      }
      catch (Exception paramString)
      {
        return "-1";
      }
    }
    return "-1";
  }
  
  public static void b(Context paramContext)
  {
    if (c(paramContext))
    {
      Intent localIntent = new Intent(c);
      if (localIntent != null)
      {
        localIntent.addFlags(268435456);
        localIntent.putExtra("startup_manager", true);
      }
      try
      {
        paramContext.startActivity(localIntent);
        return;
      }
      catch (ActivityNotFoundException localActivityNotFoundException)
      {
        ag.a(paramContext, 2131427839, 0);
        return;
      }
    }
    d(paramContext);
  }
  
  public static String[] b(PackageManager paramPackageManager, ApplicationInfo paramApplicationInfo)
  {
    String[] arrayOfString = new String[2];
    arrayOfString[0] = "";
    arrayOfString[1] = "";
    String str = packageName;
    paramApplicationInfo = null;
    try
    {
      paramPackageManager = paramPackageManager.getPackageInfo(str, 8192);
      if (paramPackageManager == null) {
        return arrayOfString;
      }
      if (versionName != null) {
        arrayOfString[0] = versionName;
      }
      for (;;)
      {
        arrayOfString[1] = ("" + versionCode);
        return arrayOfString;
        arrayOfString[0] = ("" + versionCode);
      }
    }
    catch (PackageManager.NameNotFoundException paramPackageManager)
    {
      for (;;)
      {
        paramPackageManager = paramApplicationInfo;
      }
    }
  }
  
  public static PackageInfo c(PackageManager paramPackageManager, String paramString)
  {
    if ((paramPackageManager != null) && (paramString != null)) {
      try
      {
        paramPackageManager = paramPackageManager.getPackageArchiveInfo(paramString, 1);
        return paramPackageManager;
      }
      catch (Exception paramPackageManager) {}
    }
    return null;
  }
  
  public static boolean c(Context paramContext)
  {
    boolean bool = false;
    try
    {
      paramContext = paramContext.getPackageManager().getApplicationInfo(a, 0);
      if (paramContext != null) {
        bool = true;
      }
      return bool;
    }
    catch (PackageManager.NameNotFoundException paramContext) {}
    return false;
  }
  
  private static String d(PackageManager paramPackageManager, String paramString)
  {
    int i = 0;
    try
    {
      paramPackageManager = paramPackageManager.getPackageInfo(paramString, 64);
      if (paramPackageManager == null) {
        return null;
      }
      paramString = MessageDigest.getInstance("MD5");
      paramString.update(signatures[0].toCharsString().getBytes());
      paramPackageManager = paramString.digest();
      paramString = new char[16];
      String tmp50_49 = paramString;
      tmp50_49[0] = 48;
      String tmp56_50 = tmp50_49;
      tmp56_50[1] = 49;
      String tmp62_56 = tmp56_50;
      tmp62_56[2] = 50;
      String tmp68_62 = tmp62_56;
      tmp68_62[3] = 51;
      String tmp74_68 = tmp68_62;
      tmp74_68[4] = 52;
      String tmp80_74 = tmp74_68;
      tmp80_74[5] = 53;
      String tmp86_80 = tmp80_74;
      tmp86_80[6] = 54;
      String tmp93_86 = tmp86_80;
      tmp93_86[7] = 55;
      String tmp100_93 = tmp93_86;
      tmp100_93[8] = 56;
      String tmp107_100 = tmp100_93;
      tmp107_100[9] = 57;
      String tmp114_107 = tmp107_100;
      tmp114_107[10] = 97;
      String tmp121_114 = tmp114_107;
      tmp121_114[11] = 98;
      String tmp128_121 = tmp121_114;
      tmp128_121[12] = 99;
      String tmp135_128 = tmp128_121;
      tmp135_128[13] = 100;
      String tmp142_135 = tmp135_128;
      tmp142_135[14] = 101;
      String tmp149_142 = tmp142_135;
      tmp149_142[15] = 102;
      tmp149_142;
      StringBuilder localStringBuilder = new StringBuilder(paramPackageManager.length * 2);
      while (i < paramPackageManager.length)
      {
        localStringBuilder.append(paramString[((paramPackageManager[i] & 0xF0) >>> 4)]);
        localStringBuilder.append(paramString[(paramPackageManager[i] & 0xF)]);
        i += 1;
      }
      paramPackageManager = localStringBuilder.toString();
      return paramPackageManager;
    }
    catch (PackageManager.NameNotFoundException paramPackageManager)
    {
      return null;
    }
    catch (Exception paramPackageManager) {}
    return null;
  }
  
  public static void d(Context paramContext)
  {
    new ct(paramContext).a(2131427398).b(2131427841).b(2131427341, new z(paramContext)).c(2131427342, null).c();
  }
  
  public static void e(Context paramContext)
  {
    Intent localIntent = new Intent("android.intent.action.VIEW", Uri.parse("http://www.estrongs.com/download.html"));
    try
    {
      paramContext.startActivity(localIntent);
      return;
    }
    catch (ActivityNotFoundException localActivityNotFoundException)
    {
      ag.a(paramContext, 2131427842, 1);
    }
  }
  
  public static void f(Context paramContext)
  {
    Intent localIntent = new Intent("android.intent.action.VIEW", Uri.parse(b));
    try
    {
      paramContext.startActivity(localIntent);
      return;
    }
    catch (ActivityNotFoundException localActivityNotFoundException)
    {
      ag.a(paramContext, 2131427842, 1);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.utils.w
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */