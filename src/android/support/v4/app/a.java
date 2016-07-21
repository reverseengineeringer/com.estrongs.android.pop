package android.support.v4.app;

import android.app.Activity;
import android.content.Intent;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;

public class a
  extends android.support.v4.content.a
{
  private static f a(ch paramch)
  {
    d locald = null;
    if (paramch != null) {
      locald = new d(paramch);
    }
    return locald;
  }
  
  public static void a(Activity paramActivity)
  {
    if (Build.VERSION.SDK_INT >= 16)
    {
      k.a(paramActivity);
      return;
    }
    paramActivity.finish();
  }
  
  public static void a(Activity paramActivity, Intent paramIntent, int paramInt, Bundle paramBundle)
  {
    if (Build.VERSION.SDK_INT >= 16)
    {
      k.a(paramActivity, paramIntent, paramInt, paramBundle);
      return;
    }
    paramActivity.startActivityForResult(paramIntent, paramInt);
  }
  
  public static void a(Activity paramActivity, ch paramch)
  {
    if (Build.VERSION.SDK_INT >= 21) {
      e.a(paramActivity, a(paramch));
    }
  }
  
  public static void a(Activity paramActivity, String[] paramArrayOfString, int paramInt)
  {
    if (Build.VERSION.SDK_INT >= 23) {
      h.a(paramActivity, paramArrayOfString, paramInt);
    }
    while (!(paramActivity instanceof c)) {
      return;
    }
    new Handler(Looper.getMainLooper()).post(new b(paramArrayOfString, paramActivity, paramInt));
  }
  
  public static boolean a(Activity paramActivity, String paramString)
  {
    if (Build.VERSION.SDK_INT >= 23) {
      return h.a(paramActivity, paramString);
    }
    return false;
  }
  
  public static void b(Activity paramActivity)
  {
    if (Build.VERSION.SDK_INT >= 21)
    {
      e.a(paramActivity);
      return;
    }
    paramActivity.finish();
  }
  
  public static void b(Activity paramActivity, ch paramch)
  {
    if (Build.VERSION.SDK_INT >= 21) {
      e.b(paramActivity, a(paramch));
    }
  }
  
  public static void c(Activity paramActivity)
  {
    if (Build.VERSION.SDK_INT >= 21) {
      e.b(paramActivity);
    }
  }
  
  public static void d(Activity paramActivity)
  {
    if (Build.VERSION.SDK_INT >= 21) {
      e.c(paramActivity);
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */