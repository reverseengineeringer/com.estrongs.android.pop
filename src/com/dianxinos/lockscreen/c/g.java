package com.dianxinos.lockscreen.c;

import android.util.Log;
import java.io.PrintWriter;
import java.io.StringWriter;

public class g
{
  public static boolean a = false;
  
  private static String a(Throwable paramThrowable)
  {
    StringWriter localStringWriter = new StringWriter(1024);
    PrintWriter localPrintWriter = new PrintWriter(localStringWriter);
    paramThrowable.printStackTrace(localPrintWriter);
    localPrintWriter.close();
    return localStringWriter.toString();
  }
  
  public static void a(int paramInt, String paramString1, String paramString2, Object... paramVarArgs)
  {
    if (a) {
      Log.println(paramInt, "LockScreen", String.format("[%s] %s", new Object[] { paramString1, String.format(paramString2, paramVarArgs) }));
    }
  }
  
  public static void a(String paramString1, String paramString2)
  {
    if (a) {
      Log.d("LockScreen", e(paramString1, paramString2));
    }
  }
  
  public static void a(String paramString1, String paramString2, Throwable paramThrowable)
  {
    if (a) {
      Log.w("LockScreen", e(paramString1, paramString2 + " Exception: " + a(paramThrowable)));
    }
  }
  
  public static void a(String paramString1, String paramString2, Object... paramVarArgs)
  {
    a(3, paramString1, paramString2, paramVarArgs);
  }
  
  public static void b(String paramString1, String paramString2)
  {
    if (a) {
      Log.i("LockScreen", e(paramString1, paramString2));
    }
  }
  
  public static void b(String paramString1, String paramString2, Throwable paramThrowable)
  {
    if (a) {
      Log.e("LockScreen", e(paramString1, paramString2 + " Exception: " + a(paramThrowable)));
    }
  }
  
  public static void c(String paramString1, String paramString2)
  {
    if (a) {
      Log.w("LockScreen", e(paramString1, paramString2));
    }
  }
  
  public static void d(String paramString1, String paramString2)
  {
    if (a) {
      Log.e("LockScreen", e(paramString1, paramString2));
    }
  }
  
  private static String e(String paramString1, String paramString2)
  {
    return "[" + paramString1 + "] " + paramString2;
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.lockscreen.c.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */