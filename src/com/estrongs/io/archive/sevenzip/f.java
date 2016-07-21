package com.estrongs.io.archive.sevenzip;

import android.app.Activity;
import android.os.Build.VERSION;
import android.os.ConditionVariable;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.view.ak;
import com.estrongs.android.util.ap;
import com.estrongs.fs.b.r;
import com.estrongs.fs.d;
import com.estrongs.fs.impl.local.m;
import java.io.File;

public class f
{
  public static String a = "7zip";
  public static String b = "zip";
  
  private static String a()
  {
    String str = "";
    if (Build.VERSION.SDK_INT >= 21) {
      str = "_pie";
    }
    int i = m.b();
    if (i == 1) {
      str = "p7za_arm" + str;
    }
    for (;;)
    {
      return "http://www.estrongs.com/resources/" + str;
      if (i == 2)
      {
        str = "p7za_x86" + str;
      }
      else
      {
        if (i != 3) {
          break;
        }
        str = "p7za_mips" + str;
      }
    }
    return null;
  }
  
  public static boolean a(Runnable paramRunnable, String paramString)
  {
    try
    {
      boolean bool = a(paramRunnable, paramString, null);
      return bool;
    }
    finally
    {
      paramRunnable = finally;
      throw paramRunnable;
    }
  }
  
  public static boolean a(Runnable paramRunnable, String paramString, boolean[] paramArrayOfBoolean)
  {
    for (;;)
    {
      FileExplorerActivity localFileExplorerActivity;
      boolean[] arrayOfBoolean;
      try
      {
        localFileExplorerActivity = FileExplorerActivity.X();
        if (localFileExplorerActivity == null)
        {
          bool = false;
          return bool;
        }
        if (FexApplication.a().getFilesDir() == null)
        {
          b(localFileExplorerActivity, paramString);
          bool = false;
          continue;
        }
        String str1 = FexApplication.a().getFilesDir().getAbsolutePath();
        File localFile1 = new File(str1 + "/p7za");
        String str2 = a();
        if (str2 == null)
        {
          b(localFileExplorerActivity, paramString);
          bool = false;
          continue;
        }
        File localFile2 = new File(com.estrongs.android.pop.a.s + File.separator + ap.d(str2));
        arrayOfBoolean = new boolean[1];
        arrayOfBoolean[0] = true;
        if (paramRunnable != null) {
          break label411;
        }
        boolean bool = true;
        int i;
        if ((!localFile1.exists()) && (localFile2.exists()))
        {
          localObject = new r(d.a(), new com.estrongs.fs.impl.local.f(localFile2), new com.estrongs.fs.impl.local.f(new File(str1)), localFile1.getName());
          ((r)localObject).addPostListener(new g(localFile1, arrayOfBoolean, localFileExplorerActivity, paramString));
          ((r)localObject).execute(false);
          if (arrayOfBoolean[0] == 0)
          {
            i = arrayOfBoolean[0];
            continue;
          }
        }
        Object localObject = new boolean[1];
        localObject[0] = 0;
        if (localFile1.exists()) {
          localObject[0] = a.c();
        }
        if ((!localFile1.exists()) || (localObject[0] != 0))
        {
          ConditionVariable localConditionVariable = new ConditionVariable();
          if ((!localFile2.exists()) || (localObject[0] != 0))
          {
            localFileExplorerActivity.runOnUiThread(new h((boolean[])localObject, localFileExplorerActivity, paramString, localFile1, localFile2, str2, str1, localConditionVariable, arrayOfBoolean, paramRunnable, i, paramArrayOfBoolean));
            if (i == 0) {
              break label416;
            }
            localConditionVariable.block();
            break label416;
          }
          b(localFileExplorerActivity, str1, localFile1, localFile2, localConditionVariable, arrayOfBoolean, paramRunnable, i, paramString);
          continue;
        }
        if (paramRunnable == null) {
          break label406;
        }
      }
      finally {}
      localFileExplorerActivity.runOnUiThread(new n(paramRunnable));
      label406:
      int j = 1;
      continue;
      label411:
      j = 0;
      continue;
      label416:
      j = arrayOfBoolean[0];
    }
  }
  
  private static void b(Activity paramActivity, String paramString)
  {
    ak.a(paramActivity, paramActivity.getString(2131231390, new Object[] { paramString }), 1);
  }
  
  private static void b(Activity paramActivity, String paramString1, File paramFile1, File paramFile2, ConditionVariable paramConditionVariable, boolean[] paramArrayOfBoolean, Runnable paramRunnable, boolean paramBoolean, String paramString2)
  {
    paramString1 = new r(d.a(), new com.estrongs.fs.impl.local.f(paramFile2), new com.estrongs.fs.impl.local.f(new File(paramString1)), paramFile1.getName());
    paramString1.addPostListener(new o(paramFile1, paramArrayOfBoolean, paramActivity, paramString2, paramBoolean, paramConditionVariable, paramRunnable));
    paramString1.execute();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.io.archive.sevenzip.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */