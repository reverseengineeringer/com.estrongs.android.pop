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
import com.estrongs.android.pop.view.a;
import com.estrongs.android.pop.view.utils.v;
import com.estrongs.android.ui.dialog.cv;
import com.estrongs.android.ui.view.ak;
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
        ak.a(paramContext, 2131232373, 0);
        return;
      }
    }
    d(paramContext);
  }
  
  public static void a(Context paramContext, v paramv)
  {
    String str = paramContext.getText(2131231727) + "\n\n" + g;
    new cv(paramContext).a(2131231714).b(str).b(2131231273, new x(paramv, paramContext)).c(2131231269, null).c();
  }
  
  public static void a(Context paramContext, String paramString)
  {
    paramString = new Intent("android.intent.action.VIEW", Uri.parse(paramString));
    try
    {
      paramContext.startActivity(paramString);
      return;
    }
    catch (ActivityNotFoundException paramString)
    {
      ak.a(paramContext, 2131231690, 1);
    }
  }
  
  public static void a(Context paramContext, String paramString1, String paramString2)
  {
    a(paramContext, paramString1, paramString2, null, "http://www.estrongs.com/download.html", true);
  }
  
  public static void a(Context paramContext, String paramString1, String paramString2, String paramString3, String paramString4, boolean paramBoolean)
  {
    if (a.a.equals("Web"))
    {
      if (a.b.equals("Amazon"))
      {
        e(paramContext);
        return;
      }
      a(paramContext, paramString4);
      return;
    }
    PackageManager localPackageManager = paramContext.getPackageManager();
    Intent localIntent = new Intent("android.intent.action.VIEW");
    if (paramString3 != null) {}
    for (paramString3 = "&referrer=" + paramString3; !paramBoolean; paramString3 = "")
    {
      localIntent.setData(Uri.parse("market://search?q=" + paramString2 + ":" + paramString1 + paramString3));
      if (localPackageManager.queryIntentActivities(localIntent, 0).size() == 0) {
        break;
      }
      paramContext.startActivity(localIntent);
      return;
    }
    localIntent.setData(Uri.parse("market://details?id=" + paramString1 + paramString3));
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
    a(paramContext, paramString4);
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
  
  public static ApplicationInfo b(PackageManager paramPackageManager, String paramString)
  {
    try
    {
      paramPackageManager = paramPackageManager.getApplicationInfo(paramString, 8192);
      return paramPackageManager;
    }
    catch (PackageManager.NameNotFoundException paramPackageManager)
    {
      return null;
    }
    catch (NullPointerException paramPackageManager)
    {
      for (;;) {}
    }
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
        ak.a(paramContext, 2131232373, 0);
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
  
  public static String c(PackageManager paramPackageManager, String paramString)
  {
    return b(f(paramPackageManager, paramString));
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
  
  public static PackageInfo d(PackageManager paramPackageManager, String paramString)
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
  
  public static void d(Context paramContext)
  {
    new cv(paramContext).a(2131231714).b(2131231268).b(2131231273, new z(paramContext)).c(2131231269, null).c();
  }
  
  public static void e(Context paramContext)
  {
    Intent localIntent = new Intent("android.intent.action.VIEW", Uri.parse(b));
    try
    {
      paramContext.startActivity(localIntent);
      return;
    }
    catch (ActivityNotFoundException localActivityNotFoundException)
    {
      ak.a(paramContext, 2131231690, 1);
    }
  }
  
  public static String[] e(PackageManager paramPackageManager, String paramString)
  {
    Object localObject = new String[0];
    try
    {
      paramPackageManager = getPackageInfo4096requestedPermissions;
      paramString = paramPackageManager;
      if (paramPackageManager == null)
      {
        localObject = paramPackageManager;
        paramString = new String[0];
      }
      return paramString;
    }
    catch (PackageManager.NameNotFoundException paramPackageManager) {}
    return (String[])localObject;
  }
  
  private static String f(PackageManager paramPackageManager, String paramString)
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
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.utils.w
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */