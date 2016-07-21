package com.appsflyer;

import android.content.Context;
import java.lang.ref.WeakReference;

class AppsFlyerLib$CachedRequestSender
  implements Runnable
{
  private WeakReference<Context> a = null;
  
  public AppsFlyerLib$CachedRequestSender(Context paramContext)
  {
    a = new WeakReference(paramContext);
  }
  
  /* Error */
  public void run()
  {
    // Byte code:
    //   0: invokestatic 31	com/appsflyer/AppsFlyerLib:c	()Z
    //   3: ifeq +4 -> 7
    //   6: return
    //   7: invokestatic 37	java/lang/System:currentTimeMillis	()J
    //   10: invokestatic 40	com/appsflyer/AppsFlyerLib:a	(J)J
    //   13: pop2
    //   14: aload_0
    //   15: getfield 16	com/appsflyer/AppsFlyerLib$CachedRequestSender:a	Ljava/lang/ref/WeakReference;
    //   18: ifnull -12 -> 6
    //   21: iconst_1
    //   22: invokestatic 43	com/appsflyer/AppsFlyerLib:a	(Z)Z
    //   25: pop
    //   26: ldc 45
    //   28: invokestatic 48	com/appsflyer/AppsFlyerLib:a	(Ljava/lang/String;)Ljava/lang/String;
    //   31: astore 6
    //   33: aload_0
    //   34: getfield 16	com/appsflyer/AppsFlyerLib$CachedRequestSender:a	Ljava/lang/ref/WeakReference;
    //   37: astore 5
    //   39: aload 5
    //   41: monitorenter
    //   42: invokestatic 53	com/appsflyer/cache/CacheManager:a	()Lcom/appsflyer/cache/CacheManager;
    //   45: aload_0
    //   46: getfield 16	com/appsflyer/AppsFlyerLib$CachedRequestSender:a	Ljava/lang/ref/WeakReference;
    //   49: invokevirtual 57	java/lang/ref/WeakReference:get	()Ljava/lang/Object;
    //   52: checkcast 59	android/content/Context
    //   55: invokevirtual 63	com/appsflyer/cache/CacheManager:b	(Landroid/content/Context;)Ljava/util/List;
    //   58: invokeinterface 69 1 0
    //   63: astore 7
    //   65: aload 7
    //   67: invokeinterface 74 1 0
    //   72: ifeq +186 -> 258
    //   75: aload 7
    //   77: invokeinterface 77 1 0
    //   82: checkcast 79	com/appsflyer/cache/RequestCacheData
    //   85: astore 8
    //   87: aload_0
    //   88: getfield 16	com/appsflyer/AppsFlyerLib$CachedRequestSender:a	Ljava/lang/ref/WeakReference;
    //   91: invokevirtual 57	java/lang/ref/WeakReference:get	()Ljava/lang/Object;
    //   94: checkcast 59	android/content/Context
    //   97: invokestatic 83	com/appsflyer/AppsFlyerLib:e	(Landroid/content/Context;)Z
    //   100: ifeq +32 -> 132
    //   103: ldc 85
    //   105: new 87	java/lang/StringBuilder
    //   108: dup
    //   109: invokespecial 88	java/lang/StringBuilder:<init>	()V
    //   112: ldc 90
    //   114: invokevirtual 94	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   117: aload 8
    //   119: invokevirtual 97	com/appsflyer/cache/RequestCacheData:c	()Ljava/lang/String;
    //   122: invokevirtual 94	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   125: invokevirtual 100	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   128: invokestatic 106	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
    //   131: pop
    //   132: invokestatic 37	java/lang/System:currentTimeMillis	()J
    //   135: lstore_1
    //   136: aload 8
    //   138: invokevirtual 109	com/appsflyer/cache/RequestCacheData:d	()Ljava/lang/String;
    //   141: bipush 10
    //   143: invokestatic 115	java/lang/Long:parseLong	(Ljava/lang/String;I)J
    //   146: lstore_3
    //   147: new 87	java/lang/StringBuilder
    //   150: dup
    //   151: invokespecial 88	java/lang/StringBuilder:<init>	()V
    //   154: aload 8
    //   156: invokevirtual 97	com/appsflyer/cache/RequestCacheData:c	()Ljava/lang/String;
    //   159: invokevirtual 94	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   162: ldc 117
    //   164: invokevirtual 94	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   167: lload_1
    //   168: lload_3
    //   169: lsub
    //   170: ldc2_w 118
    //   173: ldiv
    //   174: invokestatic 122	java/lang/Long:toString	(J)Ljava/lang/String;
    //   177: invokevirtual 94	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   180: invokevirtual 100	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   183: aload 8
    //   185: invokevirtual 124	com/appsflyer/cache/RequestCacheData:b	()Ljava/lang/String;
    //   188: aload 6
    //   190: aload_0
    //   191: getfield 16	com/appsflyer/AppsFlyerLib$CachedRequestSender:a	Ljava/lang/ref/WeakReference;
    //   194: aload 8
    //   196: invokevirtual 109	com/appsflyer/cache/RequestCacheData:d	()Ljava/lang/String;
    //   199: ldc 85
    //   201: iconst_0
    //   202: invokestatic 127	com/appsflyer/AppsFlyerLib:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;Z)V
    //   205: goto -140 -> 65
    //   208: astore 8
    //   210: ldc 85
    //   212: ldc -127
    //   214: invokestatic 106	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
    //   217: pop
    //   218: goto -153 -> 65
    //   221: astore 6
    //   223: aload 5
    //   225: monitorexit
    //   226: aload 6
    //   228: athrow
    //   229: astore 5
    //   231: ldc 85
    //   233: ldc -125
    //   235: invokestatic 133	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   238: pop
    //   239: iconst_0
    //   240: invokestatic 43	com/appsflyer/AppsFlyerLib:a	(Z)Z
    //   243: pop
    //   244: invokestatic 136	com/appsflyer/AppsFlyerLib:d	()Ljava/util/concurrent/ScheduledExecutorService;
    //   247: invokeinterface 141 1 0
    //   252: aconst_null
    //   253: invokestatic 144	com/appsflyer/AppsFlyerLib:a	(Ljava/util/concurrent/ScheduledExecutorService;)Ljava/util/concurrent/ScheduledExecutorService;
    //   256: pop
    //   257: return
    //   258: aload 5
    //   260: monitorexit
    //   261: iconst_0
    //   262: invokestatic 43	com/appsflyer/AppsFlyerLib:a	(Z)Z
    //   265: pop
    //   266: goto -22 -> 244
    //   269: astore 5
    //   271: iconst_0
    //   272: invokestatic 43	com/appsflyer/AppsFlyerLib:a	(Z)Z
    //   275: pop
    //   276: aload 5
    //   278: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	279	0	this	CachedRequestSender
    //   135	33	1	l1	long
    //   146	23	3	l2	long
    //   229	30	5	localException1	Exception
    //   269	8	5	localObject1	Object
    //   31	158	6	str	String
    //   221	6	6	localObject2	Object
    //   63	13	7	localIterator	java.util.Iterator
    //   85	110	8	localRequestCacheData	com.appsflyer.cache.RequestCacheData
    //   208	1	8	localException2	Exception
    // Exception table:
    //   from	to	target	type
    //   132	205	208	java/lang/Exception
    //   42	65	221	finally
    //   65	132	221	finally
    //   132	205	221	finally
    //   210	218	221	finally
    //   223	226	221	finally
    //   258	261	221	finally
    //   26	42	229	java/lang/Exception
    //   226	229	229	java/lang/Exception
    //   26	42	269	finally
    //   226	229	269	finally
    //   231	239	269	finally
  }
}

/* Location:
 * Qualified Name:     com.appsflyer.AppsFlyerLib.CachedRequestSender
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */