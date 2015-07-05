package com.baidu.mobstat;

import android.content.Context;
import android.net.wifi.WifiManager;
import android.os.Handler;
import android.os.HandlerThread;
import com.baidu.mobstat.util.e;
import java.lang.ref.WeakReference;
import java.util.Timer;

class ag
{
  private static HandlerThread a = new HandlerThread("LogSenderThread");
  private static Handler i;
  private static ag j = new ag();
  private boolean b = false;
  private SendStrategyEnum c = SendStrategyEnum.APP_START;
  private int d = 1;
  private Timer e;
  private int f = 0;
  private boolean g = false;
  private WeakReference<Context> h;
  
  private ag()
  {
    a.start();
    i = new Handler(a.getLooper());
  }
  
  public static ag a()
  {
    return j;
  }
  
  private void c(Context paramContext)
  {
    if (paramContext == null) {
      e.a("sdkstat", "initContext context=" + null);
    }
    if ((h == null) && (paramContext != null)) {
      h = new WeakReference(paramContext);
    }
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
    //   2: invokespecial 118	com/baidu/mobstat/ag:c	(Landroid/content/Context;)V
    //   5: getstatic 48	com/baidu/mobstat/SendStrategyEnum:APP_START	Lcom/baidu/mobstat/SendStrategyEnum;
    //   8: astore 5
    //   10: aload_1
    //   11: ldc 120
    //   13: invokestatic 125	com/baidu/mobstat/aw:a	(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    //   16: astore_3
    //   17: aload_3
    //   18: ldc 127
    //   20: invokevirtual 133	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   23: ifne +27 -> 50
    //   26: aload_3
    //   27: ldc -121
    //   29: invokevirtual 133	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   32: ifeq +173 -> 205
    //   35: invokestatic 140	com/baidu/mobstat/ad:a	()Lcom/baidu/mobstat/ad;
    //   38: aload_1
    //   39: invokevirtual 142	com/baidu/mobstat/ad:a	(Landroid/content/Context;)V
    //   42: invokestatic 147	com/baidu/mobstat/r:a	()Lcom/baidu/mobstat/r;
    //   45: aload_1
    //   46: iconst_1
    //   47: invokevirtual 150	com/baidu/mobstat/r:a	(Landroid/content/Context;Z)V
    //   50: aload 5
    //   52: astore_3
    //   53: aload_1
    //   54: ldc -104
    //   56: invokestatic 125	com/baidu/mobstat/aw:a	(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    //   59: astore 6
    //   61: aload 5
    //   63: astore 4
    //   65: aload 5
    //   67: astore_3
    //   68: aload 6
    //   70: ldc 127
    //   72: invokevirtual 133	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   75: ifne +43 -> 118
    //   78: aload 5
    //   80: astore_3
    //   81: aload 6
    //   83: getstatic 48	com/baidu/mobstat/SendStrategyEnum:APP_START	Lcom/baidu/mobstat/SendStrategyEnum;
    //   86: invokevirtual 155	com/baidu/mobstat/SendStrategyEnum:name	()Ljava/lang/String;
    //   89: invokevirtual 133	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   92: ifeq +142 -> 234
    //   95: aload 5
    //   97: astore_3
    //   98: getstatic 48	com/baidu/mobstat/SendStrategyEnum:APP_START	Lcom/baidu/mobstat/SendStrategyEnum;
    //   101: astore 4
    //   103: aload 4
    //   105: astore_3
    //   106: invokestatic 147	com/baidu/mobstat/r:a	()Lcom/baidu/mobstat/r;
    //   109: aload_1
    //   110: aload 4
    //   112: invokevirtual 159	com/baidu/mobstat/SendStrategyEnum:ordinal	()I
    //   115: invokevirtual 162	com/baidu/mobstat/r:a	(Landroid/content/Context;I)V
    //   118: aload_1
    //   119: ldc -92
    //   121: invokestatic 125	com/baidu/mobstat/aw:a	(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    //   124: astore_3
    //   125: aload_3
    //   126: ldc 127
    //   128: invokevirtual 133	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   131: ifne +40 -> 171
    //   134: aload_3
    //   135: invokestatic 170	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   138: istore_2
    //   139: aload 4
    //   141: invokevirtual 159	com/baidu/mobstat/SendStrategyEnum:ordinal	()I
    //   144: getstatic 173	com/baidu/mobstat/SendStrategyEnum:SET_TIME_INTERVAL	Lcom/baidu/mobstat/SendStrategyEnum;
    //   147: invokevirtual 159	com/baidu/mobstat/SendStrategyEnum:ordinal	()I
    //   150: if_icmpne +21 -> 171
    //   153: iload_2
    //   154: ifle +17 -> 171
    //   157: iload_2
    //   158: bipush 24
    //   160: if_icmpgt +11 -> 171
    //   163: invokestatic 147	com/baidu/mobstat/r:a	()Lcom/baidu/mobstat/r;
    //   166: aload_1
    //   167: iload_2
    //   168: invokevirtual 175	com/baidu/mobstat/r:b	(Landroid/content/Context;I)V
    //   171: aload_1
    //   172: ldc -79
    //   174: invokestatic 125	com/baidu/mobstat/aw:a	(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    //   177: astore_3
    //   178: aload_3
    //   179: ldc 127
    //   181: invokevirtual 133	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   184: ifne +20 -> 204
    //   187: aload_3
    //   188: ldc -121
    //   190: invokevirtual 133	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   193: ifeq +166 -> 359
    //   196: invokestatic 147	com/baidu/mobstat/r:a	()Lcom/baidu/mobstat/r;
    //   199: aload_1
    //   200: iconst_1
    //   201: invokevirtual 179	com/baidu/mobstat/r:b	(Landroid/content/Context;Z)V
    //   204: return
    //   205: aload_3
    //   206: ldc -75
    //   208: invokevirtual 133	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   211: ifeq -161 -> 50
    //   214: invokestatic 147	com/baidu/mobstat/r:a	()Lcom/baidu/mobstat/r;
    //   217: aload_1
    //   218: iconst_0
    //   219: invokevirtual 150	com/baidu/mobstat/r:a	(Landroid/content/Context;Z)V
    //   222: goto -172 -> 50
    //   225: astore_3
    //   226: aload_3
    //   227: invokestatic 184	com/baidu/mobstat/util/e:a	(Ljava/lang/Throwable;)I
    //   230: pop
    //   231: goto -181 -> 50
    //   234: aload 5
    //   236: astore_3
    //   237: aload 6
    //   239: getstatic 187	com/baidu/mobstat/SendStrategyEnum:ONCE_A_DAY	Lcom/baidu/mobstat/SendStrategyEnum;
    //   242: invokevirtual 155	com/baidu/mobstat/SendStrategyEnum:name	()Ljava/lang/String;
    //   245: invokevirtual 133	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   248: ifeq +55 -> 303
    //   251: aload 5
    //   253: astore_3
    //   254: getstatic 187	com/baidu/mobstat/SendStrategyEnum:ONCE_A_DAY	Lcom/baidu/mobstat/SendStrategyEnum;
    //   257: astore 4
    //   259: aload 4
    //   261: astore_3
    //   262: invokestatic 147	com/baidu/mobstat/r:a	()Lcom/baidu/mobstat/r;
    //   265: aload_1
    //   266: aload 4
    //   268: invokevirtual 159	com/baidu/mobstat/SendStrategyEnum:ordinal	()I
    //   271: invokevirtual 162	com/baidu/mobstat/r:a	(Landroid/content/Context;I)V
    //   274: aload 4
    //   276: astore_3
    //   277: invokestatic 147	com/baidu/mobstat/r:a	()Lcom/baidu/mobstat/r;
    //   280: aload_1
    //   281: bipush 24
    //   283: invokevirtual 175	com/baidu/mobstat/r:b	(Landroid/content/Context;I)V
    //   286: goto -168 -> 118
    //   289: astore 4
    //   291: aload 4
    //   293: invokestatic 184	com/baidu/mobstat/util/e:a	(Ljava/lang/Throwable;)I
    //   296: pop
    //   297: aload_3
    //   298: astore 4
    //   300: goto -182 -> 118
    //   303: aload 5
    //   305: astore 4
    //   307: aload 5
    //   309: astore_3
    //   310: aload 6
    //   312: getstatic 173	com/baidu/mobstat/SendStrategyEnum:SET_TIME_INTERVAL	Lcom/baidu/mobstat/SendStrategyEnum;
    //   315: invokevirtual 155	com/baidu/mobstat/SendStrategyEnum:name	()Ljava/lang/String;
    //   318: invokevirtual 133	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   321: ifeq -203 -> 118
    //   324: aload 5
    //   326: astore_3
    //   327: getstatic 173	com/baidu/mobstat/SendStrategyEnum:SET_TIME_INTERVAL	Lcom/baidu/mobstat/SendStrategyEnum;
    //   330: astore 4
    //   332: aload 4
    //   334: astore_3
    //   335: invokestatic 147	com/baidu/mobstat/r:a	()Lcom/baidu/mobstat/r;
    //   338: aload_1
    //   339: aload 4
    //   341: invokevirtual 159	com/baidu/mobstat/SendStrategyEnum:ordinal	()I
    //   344: invokevirtual 162	com/baidu/mobstat/r:a	(Landroid/content/Context;I)V
    //   347: goto -229 -> 118
    //   350: astore_3
    //   351: aload_3
    //   352: invokestatic 184	com/baidu/mobstat/util/e:a	(Ljava/lang/Throwable;)I
    //   355: pop
    //   356: goto -185 -> 171
    //   359: aload_3
    //   360: ldc -75
    //   362: invokevirtual 133	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   365: ifeq -161 -> 204
    //   368: invokestatic 147	com/baidu/mobstat/r:a	()Lcom/baidu/mobstat/r;
    //   371: aload_1
    //   372: iconst_0
    //   373: invokevirtual 179	com/baidu/mobstat/r:b	(Landroid/content/Context;Z)V
    //   376: return
    //   377: astore_1
    //   378: aload_1
    //   379: invokestatic 184	com/baidu/mobstat/util/e:a	(Ljava/lang/Throwable;)I
    //   382: pop
    //   383: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	384	0	this	ag
    //   0	384	1	paramContext	Context
    //   138	30	2	k	int
    //   16	190	3	localObject1	Object
    //   225	2	3	localException1	Exception
    //   236	99	3	localObject2	Object
    //   350	10	3	localException2	Exception
    //   63	212	4	localSendStrategyEnum1	SendStrategyEnum
    //   289	3	4	localException3	Exception
    //   298	42	4	localObject3	Object
    //   8	317	5	localSendStrategyEnum2	SendStrategyEnum
    //   59	252	6	str	String
    // Exception table:
    //   from	to	target	type
    //   10	50	225	java/lang/Exception
    //   205	222	225	java/lang/Exception
    //   53	61	289	java/lang/Exception
    //   68	78	289	java/lang/Exception
    //   81	95	289	java/lang/Exception
    //   98	103	289	java/lang/Exception
    //   106	118	289	java/lang/Exception
    //   237	251	289	java/lang/Exception
    //   254	259	289	java/lang/Exception
    //   262	274	289	java/lang/Exception
    //   277	286	289	java/lang/Exception
    //   310	324	289	java/lang/Exception
    //   327	332	289	java/lang/Exception
    //   335	347	289	java/lang/Exception
    //   118	153	350	java/lang/Exception
    //   163	171	350	java/lang/Exception
    //   171	204	377	java/lang/Exception
    //   359	376	377	java/lang/Exception
  }
  
  public void a(Context paramContext, SendStrategyEnum paramSendStrategyEnum, int paramInt, boolean paramBoolean)
  {
    if (paramSendStrategyEnum.equals(SendStrategyEnum.SET_TIME_INTERVAL)) {
      if ((paramInt > 0) && (paramInt <= 24))
      {
        d = paramInt;
        c = SendStrategyEnum.SET_TIME_INTERVAL;
        r.a().a(paramContext, c.ordinal());
        r.a().b(paramContext, d);
      }
    }
    for (;;)
    {
      b = paramBoolean;
      r.a().b(paramContext, b);
      e.a("sdkstat", "sstype is:" + c.name() + " And timeInterval is:" + d + " And mOnlyWifi:" + b);
      return;
      e.c(new Object[] { "setSendLogStrategy", "timeInterval is invalid, new strategy does not work" });
      continue;
      c = paramSendStrategyEnum;
      r.a().a(paramContext, c.ordinal());
      if (paramSendStrategyEnum.equals(SendStrategyEnum.ONCE_A_DAY)) {
        r.a().b(paramContext, 24);
      }
    }
  }
  
  public void a(Context paramContext, String paramString)
  {
    c(paramContext);
    Context localContext = paramContext;
    if (paramContext == null)
    {
      localContext = paramContext;
      if (h.get() != null) {
        localContext = (Context)h.get();
      }
    }
    i.post(new ah(this, localContext, paramString));
  }
  
  public void a(Context paramContext, String paramString1, String paramString2)
  {
    paramContext = paramContext.getApplicationContext();
    e = new Timer();
    e.schedule(new aj(this, paramContext, paramString1, paramString2), d * 3600000, d * 3600000);
  }
  
  protected void a(Context paramContext, boolean paramBoolean, String paramString1, String paramString2)
  {
    if (paramBoolean) {
      try
      {
        if (!((WifiManager)paramContext.getSystemService("wifi")).isWifiEnabled())
        {
          e.a("sdkstat", "sendLogData() does not send because of only_wifi setting");
          return;
        }
      }
      catch (Exception paramContext)
      {
        e.a("sdkstat", "sendLogData exception when get wifimanager");
        return;
      }
    }
    DataCore.getInstance().sendLogData(paramContext, paramString1, paramString2);
  }
  
  public void a(boolean paramBoolean, Context paramContext)
  {
    c(paramContext);
    g = paramBoolean;
    e.a("sdkstat", "APP_ANALYSIS_EXCEPTION is:" + g);
    r.a().a(paramContext, g);
  }
  
  public void b(Context paramContext)
  {
    r.a().a(paramContext, System.currentTimeMillis());
  }
}

/* Location:
 * Qualified Name:     com.baidu.mobstat.ag
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */