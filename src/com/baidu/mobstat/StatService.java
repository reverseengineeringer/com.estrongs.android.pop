package com.baidu.mobstat;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.text.TextUtils;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;

public class StatService
{
  public static final int EXCEPTION_LOG = 1;
  private static boolean a = false;
  private static long b;
  
  private static void a(Context paramContext)
  {
    if (!a(paramContext, "onError(...)")) {
      return;
    }
    bn.a().a(paramContext.getApplicationContext());
    bs.a().a(true, paramContext.getApplicationContext());
  }
  
  private static boolean a(Context paramContext, String paramString)
  {
    if (paramContext == null)
    {
      cr.b(paramString + ":context=null");
      return false;
    }
    return true;
  }
  
  static boolean a(Class<?> paramClass, String paramString)
  {
    StackTraceElement[] arrayOfStackTraceElement = Thread.currentThread().getStackTrace();
    boolean bool1 = false;
    int i = 2;
    boolean bool2;
    while (i < arrayOfStackTraceElement.length)
    {
      Object localObject = arrayOfStackTraceElement[i];
      bool2 = bool1;
      if (((StackTraceElement)localObject).getMethodName().equals(paramString)) {}
      try
      {
        for (localObject = Class.forName(((StackTraceElement)localObject).getClassName()); (((Class)localObject).getSuperclass() != null) && (((Class)localObject).getSuperclass() != paramClass); localObject = ((Class)localObject).getSuperclass()) {}
        bool2 = true;
      }
      catch (Exception localException)
      {
        for (;;)
        {
          cr.a(localException);
          bool2 = bool1;
        }
      }
      i += 1;
      bool1 = bool2;
    }
    return bool1;
  }
  
  private static void b(Context paramContext)
  {
    try
    {
      bp.a().a(paramContext.getApplicationContext());
      bp.a().b(paramContext.getApplicationContext());
      return;
    }
    catch (Throwable localThrowable)
    {
      for (;;) {}
    }
  }
  
  public static void bindJSInterface(Context paramContext, WebView paramWebView)
  {
    bindJSInterface(paramContext, paramWebView, null);
  }
  
  @SuppressLint({"SetJavaScriptEnabled"})
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
    paramWebView.setWebViewClient(new bd(paramContext, paramWebViewClient));
  }
  
  public static String getAppKey(Context paramContext)
  {
    return DataCore.instance().getAppKey(paramContext);
  }
  
  public static String getCuid(Context paramContext)
  {
    return CooperService.a().getCUID(paramContext, false);
  }
  
  public static String getSdkVersion()
  {
    return CooperService.a().getMTJSDKVersion();
  }
  
  public static void onErised(Context paramContext, String paramString1, String paramString2, String paramString3)
  {
    if (bp.a().b()) {}
    long l;
    do
    {
      do
      {
        return;
      } while (!a(paramContext, "onErised(...)"));
      if ((paramString1 == null) || ("".equals(paramString1)))
      {
        cr.c("AppKey is invalid");
        return;
      }
      bp.a().c(paramContext);
      l = System.currentTimeMillis();
      bh.a().a(paramContext, paramString2, paramString3, 1, l, 0L);
    } while ((l - b <= 30000L) || (!cu.m(paramContext)));
    bs.a().b(paramContext);
    b = l;
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
    bh.a().a(paramContext.getApplicationContext(), paramString1, paramString2, paramInt, System.currentTimeMillis());
  }
  
  public static void onEventDuration(Context paramContext, String paramString1, String paramString2, long paramLong)
  {
    if (!a(paramContext, "onEventDuration(...)")) {}
    while ((paramString1 == null) || (paramString1.equals(""))) {
      return;
    }
    if (paramLong <= 0L)
    {
      cr.b("onEventDuration: duration must be greater than zero");
      return;
    }
    b(paramContext);
    bh.a().c(paramContext.getApplicationContext(), paramString1, paramString2, paramLong);
  }
  
  public static void onEventEnd(Context paramContext, String paramString1, String paramString2)
  {
    if (!a(paramContext, "onEventEnd(...)")) {}
    while ((paramString1 == null) || (paramString1.equals(""))) {
      return;
    }
    b(paramContext);
    bh.a().b(paramContext.getApplicationContext(), paramString1, paramString2, System.currentTimeMillis());
  }
  
  public static void onEventStart(Context paramContext, String paramString1, String paramString2)
  {
    if (!a(paramContext, "onEventStart(...)")) {}
    while ((paramString1 == null) || (paramString1.equals(""))) {
      return;
    }
    b(paramContext);
    bh.a().a(paramContext.getApplicationContext(), paramString1, paramString2, System.currentTimeMillis());
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
    //   12: ldc -61
    //   14: invokevirtual 88	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   17: ifeq +13 -> 30
    //   20: ldc_w 260
    //   23: invokestatic 200	com/baidu/mobstat/cr:c	(Ljava/lang/String;)V
    //   26: ldc 2
    //   28: monitorexit
    //   29: return
    //   30: new 48	java/lang/StringBuilder
    //   33: dup
    //   34: invokespecial 49	java/lang/StringBuilder:<init>	()V
    //   37: ldc_w 262
    //   40: invokevirtual 53	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   43: aload_1
    //   44: invokevirtual 53	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   47: invokevirtual 59	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   50: invokestatic 264	com/baidu/mobstat/cr:a	(Ljava/lang/String;)V
    //   53: invokestatic 269	com/baidu/mobstat/ca:a	()Lcom/baidu/mobstat/ca;
    //   56: aload_0
    //   57: invokestatic 208	java/lang/System:currentTimeMillis	()J
    //   60: aload_1
    //   61: invokevirtual 272	com/baidu/mobstat/ca:b	(Landroid/content/Context;JLjava/lang/String;)V
    //   64: goto -38 -> 26
    //   67: astore_0
    //   68: ldc 2
    //   70: monitorexit
    //   71: aload_0
    //   72: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	73	0	paramContext	Context
    //   0	73	1	paramString	String
    // Exception table:
    //   from	to	target	type
    //   11	20	67	finally
    //   20	26	67	finally
    //   30	64	67	finally
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
    //   12: ldc -61
    //   14: invokevirtual 88	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   17: ifeq +13 -> 30
    //   20: ldc_w 275
    //   23: invokestatic 200	com/baidu/mobstat/cr:c	(Ljava/lang/String;)V
    //   26: ldc 2
    //   28: monitorexit
    //   29: return
    //   30: new 48	java/lang/StringBuilder
    //   33: dup
    //   34: invokespecial 49	java/lang/StringBuilder:<init>	()V
    //   37: ldc_w 277
    //   40: invokevirtual 53	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   43: aload_1
    //   44: invokevirtual 53	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   47: invokevirtual 59	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   50: invokestatic 264	com/baidu/mobstat/cr:a	(Ljava/lang/String;)V
    //   53: aload_0
    //   54: invokestatic 235	com/baidu/mobstat/StatService:b	(Landroid/content/Context;)V
    //   57: invokestatic 269	com/baidu/mobstat/ca:a	()Lcom/baidu/mobstat/ca;
    //   60: aload_0
    //   61: invokestatic 208	java/lang/System:currentTimeMillis	()J
    //   64: aload_1
    //   65: invokevirtual 279	com/baidu/mobstat/ca:a	(Landroid/content/Context;JLjava/lang/String;)V
    //   68: goto -42 -> 26
    //   71: astore_0
    //   72: ldc 2
    //   74: monitorexit
    //   75: aload_0
    //   76: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	77	0	paramContext	Context
    //   0	77	1	paramString	String
    // Exception table:
    //   from	to	target	type
    //   11	20	71	finally
    //   20	26	71	finally
    //   30	68	71	finally
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
      ca.a().b(paramContext, System.currentTimeMillis());
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
        cr.c("onResume :parame=null");
        return;
      }
      finally {}
      if (!a(Fragment.class, "onPause")) {
        throw new SecurityException("Fragment onPause(Context context)不在Fragment.onPause()中被调用||onPause(Context context)is not called in Fragment.onPause().");
      }
      ca.a().b(paramFragment, System.currentTimeMillis());
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
        cr.c("android.app.Fragment onResume :parame=null");
        return;
      }
      finally {}
      if (!a(paramObject.getClass(), "onPause")) {
        throw new SecurityException("android.app.Fragment onPause(Context context)不在android.app.Fragment.onPause()中被调用||onPause(Context context)is not called in android.app.Fragment.onPause().");
      }
      ca.a().b(paramObject, System.currentTimeMillis());
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
      ca.a().a(paramContext, System.currentTimeMillis());
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
        cr.c("onResume :parame=null");
        return;
      }
      finally {}
      if (!a(Fragment.class, "onResume")) {
        throw new SecurityException("onResume(Context context)不在Fragment.onResume()中被调用||onResume(Context context)is not called in Fragment.onResume().");
      }
      FragmentActivity localFragmentActivity = paramFragment.getActivity();
      if (localFragmentActivity == null)
      {
        cr.c("can not get correct fragmentActivity, fragment may not attached to activity");
      }
      else
      {
        b(localFragmentActivity);
        ca.a().a(paramFragment, System.currentTimeMillis());
      }
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
        cr.c("onResume :parame=null");
        return;
      }
      finally {}
      if (!a(paramObject.getClass(), "onResume")) {
        throw new SecurityException("onResume(Context context)不在Fragment.onResume()中被调用||onResume(Context context)is not called in Fragment.onResume().");
      }
      Context localContext = ca.a(paramObject);
      if (localContext == null)
      {
        cr.c("can not get correct context, fragment may not attached to activity");
      }
      else
      {
        b(localContext);
        ca.a().a(paramObject, System.currentTimeMillis());
      }
    }
  }
  
  public static void sendLogData(Context paramContext, String paramString)
  {
    if ((paramContext != null) && (!TextUtils.isEmpty(paramString))) {
      bs.a().a(paramContext.getApplicationContext(), paramString);
    }
  }
  
  public static void setAppChannel(Context paramContext, String paramString, boolean paramBoolean)
  {
    DataCore.instance().setAppChannel(paramContext, paramString, paramBoolean);
  }
  
  @Deprecated
  public static void setAppChannel(String paramString)
  {
    DataCore.instance().setAppChannel(paramString);
  }
  
  public static void setAppKey(String paramString)
  {
    DataCore.instance().setAppKey(paramString);
  }
  
  public static void setDebugOn(boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (int i = 2;; i = 7)
    {
      cr.a = i;
      return;
    }
  }
  
  public static void setForTv(Context paramContext, boolean paramBoolean)
  {
    be.a().d(paramContext, paramBoolean);
  }
  
  public static void setLogSenderDelayed(int paramInt)
  {
    bs.a().a(paramInt);
  }
  
  public static void setOn(Context paramContext, int paramInt)
  {
    if (!a(paramContext, "setOn(...)")) {}
    do
    {
      do
      {
        return;
      } while (a);
      a = true;
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
    bs.a().a(paramContext.getApplicationContext(), paramSendStrategyEnum, paramInt, paramBoolean);
  }
  
  public static void setSessionTimeOut(int paramInt)
  {
    if (paramInt <= 0)
    {
      cr.b("SessionTimeOut is between 1 and 600. Default value[30] is used");
      return;
    }
    if (paramInt <= 600)
    {
      ca.a().a(paramInt);
      return;
    }
    cr.b("SessionTimeOut is between 1 and 600. Value[600] is used");
    ca.a().a(600);
  }
  
  public static void setWearListener(StatService.WearListener paramWearListener)
  {
    DataCore.instance().a(paramWearListener);
  }
}

/* Location:
 * Qualified Name:     com.baidu.mobstat.StatService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */