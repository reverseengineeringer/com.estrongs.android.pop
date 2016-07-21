package com.baidu.mobstat;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.text.TextUtils;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.lang.ref.WeakReference;
import java.net.HttpURLConnection;
import java.util.Timer;
import java.util.zip.GZIPOutputStream;

class bs
{
  private static bs a = new bs();
  private boolean b = false;
  private SendStrategyEnum c = SendStrategyEnum.APP_START;
  private int d = 1;
  private Timer e;
  private int f = 0;
  private boolean g = false;
  private WeakReference<Context> h;
  private Handler i;
  
  private bs()
  {
    HandlerThread localHandlerThread = new HandlerThread("LogSenderThread");
    localHandlerThread.start();
    i = new Handler(localHandlerThread.getLooper());
  }
  
  public static bs a()
  {
    return a;
  }
  
  private String a(Context paramContext, String paramString1, String paramString2)
  {
    return b(paramContext, paramString1, paramString2);
  }
  
  private String b(Context paramContext, String paramString1, String paramString2)
  {
    cr.a("httpPostEncrypt");
    paramString1 = cl.d(paramContext, paramString1);
    paramString1.setDoOutput(true);
    paramString1.setInstanceFollowRedirects(false);
    paramString1.setUseCaches(false);
    paramString1.setRequestProperty("Content-Type", "gzip");
    paramContext = cj.a();
    Object localObject = cj.b();
    paramString1.setRequestProperty("key", cs.a(paramContext));
    paramString1.setRequestProperty("iv", cs.a((byte[])localObject));
    paramContext = cj.a(paramContext, (byte[])localObject, paramString2.getBytes("utf-8"));
    paramString1.connect();
    cr.a("AdUtil.httpPost connected");
    try
    {
      paramString2 = new GZIPOutputStream(paramString1.getOutputStream());
      paramString2.write(paramContext);
      paramString2.flush();
      paramString2.close();
      paramString2 = new BufferedReader(new InputStreamReader(paramString1.getInputStream()));
      localObject = new StringBuilder();
      for (paramContext = paramString2.readLine(); paramContext != null; paramContext = paramString2.readLine()) {
        ((StringBuilder)localObject).append(paramContext);
      }
      int j = paramString1.getContentLength();
      if ((paramString1.getResponseCode() != 200) || (j != 0)) {
        throw new IOException("http code = " + paramString1.getResponseCode() + "; contentResponse = " + localObject);
      }
    }
    finally
    {
      paramString1.disconnect();
    }
    paramContext = ((StringBuilder)localObject).toString();
    paramString1.disconnect();
    return paramContext;
  }
  
  private boolean b(Context paramContext, String paramString)
  {
    boolean bool = false;
    if ((b) && (!cu.m(paramContext))) {
      return false;
    }
    try
    {
      a(paramContext, "http://hmma.baidu.com/app.gif", paramString);
      bool = true;
    }
    catch (Exception paramContext)
    {
      for (;;)
      {
        cr.c(paramContext);
      }
    }
    cr.a("send log data over. result = " + bool + "; data=" + paramString);
    return bool;
  }
  
  private void e(Context paramContext)
  {
    if (paramContext == null) {
      cr.a("initContext context = " + null);
    }
    if ((h == null) && (paramContext != null)) {
      h = new WeakReference(paramContext);
    }
  }
  
  private void f(Context paramContext)
  {
    if ((b) && (!cu.m(paramContext))) {
      return;
    }
    i.post(new bw(this, paramContext));
  }
  
  public void a(int paramInt)
  {
    if ((paramInt >= 0) && (paramInt <= 30)) {
      f = paramInt;
    }
  }
  
  /* Error */
  public void a(Context paramContext)
  {
    // Byte code:
    //   0: aload_0
    //   1: aload_1
    //   2: invokespecial 265	com/baidu/mobstat/bs:e	(Landroid/content/Context;)V
    //   5: getstatic 37	com/baidu/mobstat/SendStrategyEnum:APP_START	Lcom/baidu/mobstat/SendStrategyEnum;
    //   8: astore 5
    //   10: aload_1
    //   11: ldc_w 267
    //   14: invokestatic 270	com/baidu/mobstat/cu:a	(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    //   17: astore_3
    //   18: aload_3
    //   19: invokestatic 276	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   22: ifne +28 -> 50
    //   25: ldc_w 278
    //   28: aload_3
    //   29: invokevirtual 282	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   32: ifeq +171 -> 203
    //   35: invokestatic 287	com/baidu/mobstat/bn:a	()Lcom/baidu/mobstat/bn;
    //   38: aload_1
    //   39: invokevirtual 289	com/baidu/mobstat/bn:a	(Landroid/content/Context;)V
    //   42: invokestatic 294	com/baidu/mobstat/be:a	()Lcom/baidu/mobstat/be;
    //   45: aload_1
    //   46: iconst_1
    //   47: invokevirtual 297	com/baidu/mobstat/be:a	(Landroid/content/Context;Z)V
    //   50: aload 5
    //   52: astore_3
    //   53: aload_1
    //   54: ldc_w 299
    //   57: invokestatic 270	com/baidu/mobstat/cu:a	(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    //   60: astore 6
    //   62: aload 5
    //   64: astore 4
    //   66: aload 5
    //   68: astore_3
    //   69: aload 6
    //   71: invokestatic 276	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   74: ifne +43 -> 117
    //   77: aload 5
    //   79: astore_3
    //   80: aload 6
    //   82: getstatic 37	com/baidu/mobstat/SendStrategyEnum:APP_START	Lcom/baidu/mobstat/SendStrategyEnum;
    //   85: invokevirtual 302	com/baidu/mobstat/SendStrategyEnum:name	()Ljava/lang/String;
    //   88: invokevirtual 282	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   91: ifeq +141 -> 232
    //   94: aload 5
    //   96: astore_3
    //   97: getstatic 37	com/baidu/mobstat/SendStrategyEnum:APP_START	Lcom/baidu/mobstat/SendStrategyEnum;
    //   100: astore 4
    //   102: aload 4
    //   104: astore_3
    //   105: invokestatic 294	com/baidu/mobstat/be:a	()Lcom/baidu/mobstat/be;
    //   108: aload_1
    //   109: aload 4
    //   111: invokevirtual 305	com/baidu/mobstat/SendStrategyEnum:ordinal	()I
    //   114: invokevirtual 308	com/baidu/mobstat/be:a	(Landroid/content/Context;I)V
    //   117: aload_1
    //   118: ldc_w 310
    //   121: invokestatic 270	com/baidu/mobstat/cu:a	(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    //   124: astore_3
    //   125: aload_3
    //   126: invokestatic 276	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   129: ifne +40 -> 169
    //   132: aload_3
    //   133: invokestatic 316	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   136: istore_2
    //   137: aload 4
    //   139: invokevirtual 305	com/baidu/mobstat/SendStrategyEnum:ordinal	()I
    //   142: getstatic 319	com/baidu/mobstat/SendStrategyEnum:SET_TIME_INTERVAL	Lcom/baidu/mobstat/SendStrategyEnum;
    //   145: invokevirtual 305	com/baidu/mobstat/SendStrategyEnum:ordinal	()I
    //   148: if_icmpne +21 -> 169
    //   151: iload_2
    //   152: ifle +17 -> 169
    //   155: iload_2
    //   156: bipush 24
    //   158: if_icmpgt +11 -> 169
    //   161: invokestatic 294	com/baidu/mobstat/be:a	()Lcom/baidu/mobstat/be;
    //   164: aload_1
    //   165: iload_2
    //   166: invokevirtual 321	com/baidu/mobstat/be:b	(Landroid/content/Context;I)V
    //   169: aload_1
    //   170: ldc_w 323
    //   173: invokestatic 270	com/baidu/mobstat/cu:a	(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    //   176: astore_3
    //   177: aload_3
    //   178: invokestatic 276	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   181: ifne +21 -> 202
    //   184: ldc_w 278
    //   187: aload_3
    //   188: invokevirtual 282	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   191: ifeq +164 -> 355
    //   194: invokestatic 294	com/baidu/mobstat/be:a	()Lcom/baidu/mobstat/be;
    //   197: aload_1
    //   198: iconst_1
    //   199: invokevirtual 325	com/baidu/mobstat/be:b	(Landroid/content/Context;Z)V
    //   202: return
    //   203: ldc_w 327
    //   206: aload_3
    //   207: invokevirtual 282	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   210: ifeq -160 -> 50
    //   213: invokestatic 294	com/baidu/mobstat/be:a	()Lcom/baidu/mobstat/be;
    //   216: aload_1
    //   217: iconst_0
    //   218: invokevirtual 297	com/baidu/mobstat/be:a	(Landroid/content/Context;Z)V
    //   221: goto -171 -> 50
    //   224: astore_3
    //   225: aload_3
    //   226: invokestatic 329	com/baidu/mobstat/cr:a	(Ljava/lang/Throwable;)V
    //   229: goto -179 -> 50
    //   232: aload 5
    //   234: astore_3
    //   235: aload 6
    //   237: getstatic 332	com/baidu/mobstat/SendStrategyEnum:ONCE_A_DAY	Lcom/baidu/mobstat/SendStrategyEnum;
    //   240: invokevirtual 302	com/baidu/mobstat/SendStrategyEnum:name	()Ljava/lang/String;
    //   243: invokevirtual 282	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   246: ifeq +54 -> 300
    //   249: aload 5
    //   251: astore_3
    //   252: getstatic 332	com/baidu/mobstat/SendStrategyEnum:ONCE_A_DAY	Lcom/baidu/mobstat/SendStrategyEnum;
    //   255: astore 4
    //   257: aload 4
    //   259: astore_3
    //   260: invokestatic 294	com/baidu/mobstat/be:a	()Lcom/baidu/mobstat/be;
    //   263: aload_1
    //   264: aload 4
    //   266: invokevirtual 305	com/baidu/mobstat/SendStrategyEnum:ordinal	()I
    //   269: invokevirtual 308	com/baidu/mobstat/be:a	(Landroid/content/Context;I)V
    //   272: aload 4
    //   274: astore_3
    //   275: invokestatic 294	com/baidu/mobstat/be:a	()Lcom/baidu/mobstat/be;
    //   278: aload_1
    //   279: bipush 24
    //   281: invokevirtual 321	com/baidu/mobstat/be:b	(Landroid/content/Context;I)V
    //   284: goto -167 -> 117
    //   287: astore 4
    //   289: aload 4
    //   291: invokestatic 329	com/baidu/mobstat/cr:a	(Ljava/lang/Throwable;)V
    //   294: aload_3
    //   295: astore 4
    //   297: goto -180 -> 117
    //   300: aload 5
    //   302: astore 4
    //   304: aload 5
    //   306: astore_3
    //   307: aload 6
    //   309: getstatic 319	com/baidu/mobstat/SendStrategyEnum:SET_TIME_INTERVAL	Lcom/baidu/mobstat/SendStrategyEnum;
    //   312: invokevirtual 302	com/baidu/mobstat/SendStrategyEnum:name	()Ljava/lang/String;
    //   315: invokevirtual 282	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   318: ifeq -201 -> 117
    //   321: aload 5
    //   323: astore_3
    //   324: getstatic 319	com/baidu/mobstat/SendStrategyEnum:SET_TIME_INTERVAL	Lcom/baidu/mobstat/SendStrategyEnum;
    //   327: astore 4
    //   329: aload 4
    //   331: astore_3
    //   332: invokestatic 294	com/baidu/mobstat/be:a	()Lcom/baidu/mobstat/be;
    //   335: aload_1
    //   336: aload 4
    //   338: invokevirtual 305	com/baidu/mobstat/SendStrategyEnum:ordinal	()I
    //   341: invokevirtual 308	com/baidu/mobstat/be:a	(Landroid/content/Context;I)V
    //   344: goto -227 -> 117
    //   347: astore_3
    //   348: aload_3
    //   349: invokestatic 329	com/baidu/mobstat/cr:a	(Ljava/lang/Throwable;)V
    //   352: goto -183 -> 169
    //   355: ldc_w 327
    //   358: aload_3
    //   359: invokevirtual 282	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   362: ifeq -160 -> 202
    //   365: invokestatic 294	com/baidu/mobstat/be:a	()Lcom/baidu/mobstat/be;
    //   368: aload_1
    //   369: iconst_0
    //   370: invokevirtual 325	com/baidu/mobstat/be:b	(Landroid/content/Context;Z)V
    //   373: return
    //   374: astore_1
    //   375: aload_1
    //   376: invokestatic 329	com/baidu/mobstat/cr:a	(Ljava/lang/Throwable;)V
    //   379: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	380	0	this	bs
    //   0	380	1	paramContext	Context
    //   136	30	2	j	int
    //   17	190	3	localObject1	Object
    //   224	2	3	localException1	Exception
    //   234	98	3	localObject2	Object
    //   347	12	3	localException2	Exception
    //   64	209	4	localSendStrategyEnum1	SendStrategyEnum
    //   287	3	4	localException3	Exception
    //   295	42	4	localObject3	Object
    //   8	314	5	localSendStrategyEnum2	SendStrategyEnum
    //   60	248	6	str	String
    // Exception table:
    //   from	to	target	type
    //   10	50	224	java/lang/Exception
    //   203	221	224	java/lang/Exception
    //   53	62	287	java/lang/Exception
    //   69	77	287	java/lang/Exception
    //   80	94	287	java/lang/Exception
    //   97	102	287	java/lang/Exception
    //   105	117	287	java/lang/Exception
    //   235	249	287	java/lang/Exception
    //   252	257	287	java/lang/Exception
    //   260	272	287	java/lang/Exception
    //   275	284	287	java/lang/Exception
    //   307	321	287	java/lang/Exception
    //   324	329	287	java/lang/Exception
    //   332	344	287	java/lang/Exception
    //   117	151	347	java/lang/Exception
    //   161	169	347	java/lang/Exception
    //   169	202	374	java/lang/Exception
    //   355	373	374	java/lang/Exception
  }
  
  public void a(Context paramContext, SendStrategyEnum paramSendStrategyEnum, int paramInt, boolean paramBoolean)
  {
    if (paramSendStrategyEnum.equals(SendStrategyEnum.SET_TIME_INTERVAL)) {
      if ((paramInt > 0) && (paramInt <= 24))
      {
        d = paramInt;
        c = SendStrategyEnum.SET_TIME_INTERVAL;
        be.a().a(paramContext, c.ordinal());
        be.a().b(paramContext, d);
      }
    }
    for (;;)
    {
      b = paramBoolean;
      be.a().b(paramContext, b);
      cr.a("sstype is:" + c.name() + " And timeInterval is:" + d + " And mOnlyWifi:" + b);
      return;
      cr.c("timeInterval is invalid, new strategy does not work");
      continue;
      c = paramSendStrategyEnum;
      be.a().a(paramContext, c.ordinal());
      if (paramSendStrategyEnum.equals(SendStrategyEnum.ONCE_A_DAY)) {
        be.a().b(paramContext, 24);
      }
    }
  }
  
  public void a(Context paramContext, String paramString)
  {
    if ((paramContext == null) || (TextUtils.isEmpty(paramString))) {
      return;
    }
    i.post(new bx(this, paramContext, paramString));
  }
  
  public void a(boolean paramBoolean, Context paramContext)
  {
    e(paramContext);
    g = paramBoolean;
    cr.a("APP_ANALYSIS_EXCEPTION is:" + g);
    be.a().a(paramContext, g);
  }
  
  public void b(Context paramContext)
  {
    e(paramContext);
    if (paramContext == null) {
      paramContext = (Context)h.get();
    }
    for (;;)
    {
      if (paramContext == null) {
        return;
      }
      i.post(new bt(this, paramContext));
      return;
    }
  }
  
  public void c(Context paramContext)
  {
    be.a().a(paramContext, System.currentTimeMillis());
  }
  
  public void d(Context paramContext)
  {
    paramContext = paramContext.getApplicationContext();
    long l = d * 3600000;
    e = new Timer();
    e.schedule(new bv(this, paramContext), l, l);
  }
}

/* Location:
 * Qualified Name:     com.baidu.mobstat.bs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */