package com.duapps.ad.base;

import android.util.Log;

public class l
{
  private static boolean a = false;
  
  public static void a(String paramString1, String paramString2)
  {
    if (a) {
      Log.i("DX-Toolbox", e(paramString1, paramString2));
    }
  }
  
  public static void a(String paramString1, String paramString2, Throwable paramThrowable)
  {
    if (a) {
      Log.d("DX-Toolbox", e(paramString1, paramString2), paramThrowable);
    }
  }
  
  public static void a(boolean paramBoolean)
  {
    a = paramBoolean;
  }
  
  public static boolean a()
  {
    return a;
  }
  
  public static void b(String paramString1, String paramString2)
  {
    if (a) {
      Log.w("DX-Toolbox", e(paramString1, paramString2));
    }
  }
  
  public static void b(String paramString1, String paramString2, Throwable paramThrowable)
  {
    Log.e("DX-Toolbox", e(paramString1, paramString2), paramThrowable);
  }
  
  public static void c(String paramString1, String paramString2)
  {
    if (a) {
      Log.d("DX-Toolbox", e(paramString1, paramString2));
    }
  }
  
  public static void d(String paramString1, String paramString2)
  {
    Log.e("DX-Toolbox", e(paramString1, paramString2));
  }
  
  private static String e(String paramString1, String paramString2)
  {
    return "{" + Thread.currentThread().getName() + "}" + "[" + paramString1 + "] " + paramString2;
  }
}

/* Location:
 * Qualified Name:     com.duapps.ad.base.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */