package com.baidu.mobstat;

import android.app.Activity;
import android.content.Context;
import android.support.v4.app.Fragment;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.baidu.mobstat.util.e;

public class StatService
{
  public static final int EXCEPTION_LOG = 1;
  private static boolean a = false;
  
  private static void a(Context paramContext)
  {
    if (!a(paramContext, "onError(...)")) {
      return;
    }
    ad.a().a(paramContext.getApplicationContext());
    ag.a().a(true, paramContext.getApplicationContext());
  }
  
  private static boolean a()
  {
    return a;
  }
  
  private static boolean a(Context paramContext, String paramString)
  {
    if (paramContext == null)
    {
      e.c(new Object[] { "sdkstat", paramString + ":context=null" });
      return false;
    }
    return true;
  }
  
  static boolean a(Class<?> paramClass, String paramString)
  {
    boolean bool2 = false;
    boolean bool1 = false;
    int i = 2;
    StackTraceElement[] arrayOfStackTraceElement = new Throwable().getStackTrace();
    e.a(new Object[] { "isCalledBy", Integer.valueOf(arrayOfStackTraceElement.length), paramClass, paramString });
    if (arrayOfStackTraceElement.length >= 2)
    {
      bool2 = bool1;
      if (i < arrayOfStackTraceElement.length)
      {
        Object localObject = arrayOfStackTraceElement[i];
        bool2 = bool1;
        if (((StackTraceElement)localObject).getMethodName().equals(paramString)) {
          try
          {
            localObject = Class.forName(((StackTraceElement)localObject).getClassName());
            e.a(new Object[] { "isCalledBy", localObject });
            while ((((Class)localObject).getSuperclass() != null) && (((Class)localObject).getSuperclass() != paramClass))
            {
              localObject = ((Class)localObject).getSuperclass();
              e.a(new Object[] { "isCalledBy", localObject });
              continue;
              i += 1;
            }
          }
          catch (Exception localException)
          {
            e.a(localException);
            bool2 = bool1;
          }
        }
        for (;;)
        {
          bool1 = bool2;
          break;
          bool2 = true;
        }
      }
    }
    return bool2;
  }
  
  private static void b()
  {
    a = true;
  }
  
  private static void b(Context paramContext)
  {
    if (!af.a().b()) {
      af.a().a(paramContext.getApplicationContext());
    }
  }
  
  public static void bindJSInterface(Context paramContext, WebView paramWebView)
  {
    bindJSInterface(paramContext, paramWebView, null);
  }
  
  public static void bindJSInterface(Context paramContext, WebView paramWebView, WebViewClient paramWebViewClient)
  {
    if (paramContext == null) {
      throw new IllegalArgumentException("context can't be null.");
    }
    if (paramWebView == null) {
      throw new IllegalArgumentException("webview can't be null.");
    }
    WebSettings localWebSettings = paramWebView.getSettings();
    localWebSettings.setJavaScriptEnabled(true);
    localWebSettings.setDefaultTextEncodingName("UTF-8");
    localWebSettings.setJavaScriptCanOpenWindowsAutomatically(true);
    paramWebView.setWebViewClient(new q(paramContext, paramWebViewClient));
  }
  
  public static String getCuid(Context paramContext)
  {
    return CooperService.a().getCUID(paramContext, false);
  }
  
  public static void onEvent(Context paramContext, String paramString1, String paramString2)
  {
    onEvent(paramContext, paramString1, paramString2, 1);
  }
  
  public static void onEvent(Context paramContext, String paramString1, String paramString2, int paramInt)
  {
    if (!a(paramContext, "onEvent(...)")) {}
    while ((paramString1 == null) || (paramString1.equals(""))) {
      return;
    }
    b(paramContext);
    x.a().a(paramContext.getApplicationContext(), paramString1, paramString2, paramInt, System.currentTimeMillis());
  }
  
  public static void onEventDuration(Context paramContext, String paramString1, String paramString2, long paramLong)
  {
    if (!a(paramContext, "onEventDuration(...)")) {}
    while ((paramString1 == null) || (paramString1.equals(""))) {
      return;
    }
    if (paramLong <= 0L)
    {
      e.b(new Object[] { "sdkstat", "onEventDuration: duration must be greater than zero" });
      return;
    }
    b(paramContext);
    x.a().c(paramContext.getApplicationContext(), paramString1, paramString2, paramLong);
  }
  
  public static void onEventEnd(Context paramContext, String paramString1, String paramString2)
  {
    if (!a(paramContext, "onEventEnd(...)")) {}
    while ((paramString1 == null) || (paramString1.equals(""))) {
      return;
    }
    b(paramContext);
    x.a().b(paramContext.getApplicationContext(), paramString1, paramString2, System.currentTimeMillis());
  }
  
  public static void onEventStart(Context paramContext, String paramString1, String paramString2)
  {
    if (!a(paramContext, "onEventStart(...)")) {}
    while ((paramString1 == null) || (paramString1.equals(""))) {
      return;
    }
    b(paramContext);
    x.a().a(paramContext.getApplicationContext(), paramString1, paramString2, System.currentTimeMillis());
  }
  
  /* Error */
  public static void onPageEnd(Context paramContext, String paramString)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: aload_0
    //   4: ifnull +16 -> 20
    //   7: aload_1
    //   8: ifnull +12 -> 20
    //   11: aload_1
    //   12: ldc -69
    //   14: invokevirtual 97	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   17: ifeq +25 -> 42
    //   20: iconst_2
    //   21: anewarray 4	java/lang/Object
    //   24: dup
    //   25: iconst_0
    //   26: ldc 47
    //   28: aastore
    //   29: dup
    //   30: iconst_1
    //   31: ldc -29
    //   33: aastore
    //   34: invokestatic 66	com/baidu/mobstat/util/e:c	([Ljava/lang/Object;)I
    //   37: pop
    //   38: ldc 2
    //   40: monitorexit
    //   41: return
    //   42: ldc 47
    //   44: new 49	java/lang/StringBuilder
    //   47: dup
    //   48: invokespecial 50	java/lang/StringBuilder:<init>	()V
    //   51: ldc -27
    //   53: invokevirtual 54	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   56: aload_1
    //   57: invokevirtual 54	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   60: invokevirtual 60	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   63: invokestatic 232	com/baidu/mobstat/util/e:a	(Ljava/lang/String;Ljava/lang/String;)I
    //   66: pop
    //   67: invokestatic 237	com/baidu/mobstat/ao:a	()Lcom/baidu/mobstat/ao;
    //   70: aload_0
    //   71: invokestatic 200	java/lang/System:currentTimeMillis	()J
    //   74: aload_1
    //   75: invokevirtual 240	com/baidu/mobstat/ao:b	(Landroid/content/Context;JLjava/lang/String;)V
    //   78: goto -40 -> 38
    //   81: astore_0
    //   82: ldc 2
    //   84: monitorexit
    //   85: aload_0
    //   86: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	87	0	paramContext	Context
    //   0	87	1	paramString	String
    // Exception table:
    //   from	to	target	type
    //   11	20	81	finally
    //   20	38	81	finally
    //   42	78	81	finally
  }
  
  /* Error */
  public static void onPageStart(Context paramContext, String paramString)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: aload_0
    //   4: ifnull +16 -> 20
    //   7: aload_1
    //   8: ifnull +12 -> 20
    //   11: aload_1
    //   12: ldc -69
    //   14: invokevirtual 97	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   17: ifeq +25 -> 42
    //   20: iconst_2
    //   21: anewarray 4	java/lang/Object
    //   24: dup
    //   25: iconst_0
    //   26: ldc 47
    //   28: aastore
    //   29: dup
    //   30: iconst_1
    //   31: ldc -13
    //   33: aastore
    //   34: invokestatic 66	com/baidu/mobstat/util/e:c	([Ljava/lang/Object;)I
    //   37: pop
    //   38: ldc 2
    //   40: monitorexit
    //   41: return
    //   42: ldc 47
    //   44: new 49	java/lang/StringBuilder
    //   47: dup
    //   48: invokespecial 50	java/lang/StringBuilder:<init>	()V
    //   51: ldc -11
    //   53: invokevirtual 54	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   56: aload_1
    //   57: invokevirtual 54	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   60: invokevirtual 60	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   63: invokestatic 232	com/baidu/mobstat/util/e:a	(Ljava/lang/String;Ljava/lang/String;)I
    //   66: pop
    //   67: aload_0
    //   68: invokestatic 189	com/baidu/mobstat/StatService:b	(Landroid/content/Context;)V
    //   71: invokestatic 237	com/baidu/mobstat/ao:a	()Lcom/baidu/mobstat/ao;
    //   74: aload_0
    //   75: invokestatic 200	java/lang/System:currentTimeMillis	()J
    //   78: aload_1
    //   79: invokevirtual 247	com/baidu/mobstat/ao:a	(Landroid/content/Context;JLjava/lang/String;)V
    //   82: goto -44 -> 38
    //   85: astore_0
    //   86: ldc 2
    //   88: monitorexit
    //   89: aload_0
    //   90: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	91	0	paramContext	Context
    //   0	91	1	paramString	String
    // Exception table:
    //   from	to	target	type
    //   11	20	85	finally
    //   20	38	85	finally
    //   42	82	85	finally
  }
  
  public static void onPause(Context paramContext)
  {
    for (;;)
    {
      try
      {
        boolean bool = a(paramContext, "onPause(...)");
        if (!bool) {
          return;
        }
        if (!a(Activity.class, "onPause")) {
          throw new SecurityException("onPause(Context context)不在Activity.onPause()中被调用||onPause(Context context)is not called in Activity.onPause().");
        }
      }
      finally {}
      ao.a().b(paramContext, System.currentTimeMillis());
    }
  }
  
  @Deprecated
  public static void onPause(Fragment paramFragment)
  {
    if (paramFragment == null) {}
    for (;;)
    {
      try
      {
        e.c(new Object[] { "sdkstat", "onResume :parame=null" });
        return;
      }
      finally {}
      if (!a(Fragment.class, "onPause")) {
        throw new SecurityException("Fragment onPause(Context context)不在Fragment.onPause()中被调用||onPause(Context context)is not called in Fragment.onPause().");
      }
      ao.a().b(paramFragment, System.currentTimeMillis());
    }
  }
  
  @Deprecated
  public static void onPause(Object paramObject)
  {
    if (paramObject == null) {}
    for (;;)
    {
      try
      {
        e.c(new Object[] { "sdkstat", "android.app.Fragment onResume :parame=null" });
        return;
      }
      finally {}
      if (!a(paramObject.getClass(), "onPause")) {
        throw new SecurityException("android.app.Fragment onPause(Context context)不在android.app.Fragment.onPause()中被调用||onPause(Context context)is not called in android.app.Fragment.onPause().");
      }
      ao.a().b(paramObject, System.currentTimeMillis());
    }
  }
  
  public static void onResume(Context paramContext)
  {
    for (;;)
    {
      try
      {
        boolean bool = a(paramContext, "onResume(...)");
        if (!bool) {
          return;
        }
        if (!a(Activity.class, "onResume")) {
          throw new SecurityException("onResume(Context context)不在Activity.onResume()中被调用||onResume(Context context)is not called in Activity.onResume().");
        }
      }
      finally {}
      b(paramContext);
      ao.a().a(paramContext, System.currentTimeMillis());
    }
  }
  
  @Deprecated
  public static void onResume(Fragment paramFragment)
  {
    if (paramFragment == null) {}
    for (;;)
    {
      try
      {
        e.c(new Object[] { "sdkstat", "onResume :parame=null" });
        return;
      }
      finally {}
      if (!a(Fragment.class, "onResume")) {
        throw new SecurityException("onResume(Context context)不在Fragment.onResume()中被调用||onResume(Context context)is not called in Fragment.onResume().");
      }
      b(paramFragment.b());
      ao.a().a(paramFragment, System.currentTimeMillis());
    }
  }
  
  @Deprecated
  public static void onResume(Object paramObject)
  {
    if (paramObject == null) {}
    for (;;)
    {
      try
      {
        e.c(new Object[] { "sdkstat", "onResume :parame=null" });
        return;
      }
      finally {}
      if (!a(paramObject.getClass(), "onResume")) {
        throw new SecurityException("onResume(Context context)不在Fragment.onResume()中被调用||onResume(Context context)is not called in Fragment.onResume().");
      }
      b(ao.a(paramObject));
      ao.a().a(paramObject, System.currentTimeMillis());
    }
  }
  
  public static void setAppChannel(Context paramContext, String paramString, boolean paramBoolean)
  {
    DataCore.getInstance().setAppChannel(paramContext, paramString, paramBoolean);
  }
  
  @Deprecated
  public static void setAppChannel(String paramString)
  {
    DataCore.getInstance().setAppChannel(paramString);
  }
  
  public static void setAppKey(String paramString)
  {
    DataCore.getInstance().setAppKey(paramString);
  }
  
  public static void setDebugOn(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      com.baidu.mobstat.util.b.a = 2;
      return;
    }
    com.baidu.mobstat.util.b.a = 7;
  }
  
  public static void setForTv(Context paramContext, boolean paramBoolean)
  {
    r.a().d(paramContext, paramBoolean);
  }
  
  public static void setLogSenderDelayed(int paramInt)
  {
    ag.a().a(paramInt);
  }
  
  public static void setOn(Context paramContext, int paramInt)
  {
    if (!a(paramContext, "setOn(...)")) {}
    do
    {
      do
      {
        return;
      } while (a());
      b();
    } while ((paramInt & 0x1) == 0);
    a(paramContext);
  }
  
  public static void setSendLogStrategy(Context paramContext, SendStrategyEnum paramSendStrategyEnum, int paramInt)
  {
    setSendLogStrategy(paramContext, paramSendStrategyEnum, paramInt, false);
  }
  
  public static void setSendLogStrategy(Context paramContext, SendStrategyEnum paramSendStrategyEnum, int paramInt, boolean paramBoolean)
  {
    if (!a(paramContext, "setSendLogStrategy(...)")) {
      return;
    }
    b(paramContext);
    ag.a().a(paramContext.getApplicationContext(), paramSendStrategyEnum, paramInt, paramBoolean);
  }
  
  public static void setSessionTimeOut(int paramInt)
  {
    if (paramInt <= 0)
    {
      e.b("SessionTimeOut is between 1 and 600. Default value[30] is used");
      return;
    }
    if (paramInt <= 600)
    {
      ao.a().a(paramInt);
      return;
    }
    e.b("SessionTimeOut is between 1 and 600. Value[600] is used");
    ao.a().a(paramInt);
  }
}

/* Location:
 * Qualified Name:     com.baidu.mobstat.StatService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */