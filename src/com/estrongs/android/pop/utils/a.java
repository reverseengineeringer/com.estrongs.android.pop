package com.estrongs.android.pop.utils;

import android.app.Activity;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Bundle;
import com.estrongs.android.ui.view.ak;

public class a
{
  public static String a(Context paramContext, String paramString)
  {
    try
    {
      paramContext = getPackageManagergetApplicationInfogetPackageName128metaData.get(paramString).toString();
      return paramContext;
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      paramContext.printStackTrace();
    }
    return null;
  }
  
  public static void a(Activity paramActivity, int paramInt)
  {
    a(paramActivity, paramActivity.getText(paramInt));
  }
  
  public static void a(Activity paramActivity, CharSequence paramCharSequence)
  {
    try
    {
      paramActivity.runOnUiThread(new b(paramActivity, paramCharSequence));
      return;
    }
    catch (Exception paramActivity) {}
  }
  
  public static void a(Activity paramActivity, Runnable paramRunnable)
  {
    paramActivity.runOnUiThread(paramRunnable);
  }
  
  public static void a(Context paramContext, int paramInt)
  {
    a(paramContext, paramContext.getText(paramInt));
  }
  
  public static void a(Context paramContext, CharSequence paramCharSequence)
  {
    try
    {
      ak.a(paramContext, paramCharSequence, 0);
      return;
    }
    catch (Exception paramContext) {}
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.utils.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */