package com.duapps.ad.base;

import android.os.Process;
import com.duapps.ad.entity.AdData;
import com.duapps.ad.stats.y;
import java.util.HashSet;

class o
  implements Comparable<o>, Runnable
{
  private AdData b;
  private long c;
  
  public o(m paramm, AdData paramAdData)
  {
    b = paramAdData;
  }
  
  private void a(AdData paramAdData, int paramInt1, String paramString, int paramInt2, long paramLong)
  {
    a.a(paramAdData, paramInt1, paramInt2, paramLong);
    p localp = new p();
    a = h;
    d = paramString;
    b = c;
    c = paramInt1;
    e = System.currentTimeMillis();
    y.a(m.b(a)).a(localp);
  }
  
  public int a(o paramo)
  {
    return b.z - b.z;
  }
  
  /* Error */
  public void a(AdData paramAdData)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_3
    //   2: iconst_0
    //   3: istore 4
    //   5: aconst_null
    //   6: astore 9
    //   8: aconst_null
    //   9: astore 8
    //   11: aload 9
    //   13: astore 5
    //   15: iload_3
    //   16: istore_2
    //   17: aload_1
    //   18: getfield 40	com/duapps/ad/entity/AdData:h	Ljava/lang/String;
    //   21: astore 7
    //   23: aload 9
    //   25: astore 5
    //   27: iload_3
    //   28: istore_2
    //   29: aload_0
    //   30: invokestatic 84	android/os/SystemClock:elapsedRealtime	()J
    //   33: putfield 86	com/duapps/ad/base/o:c	J
    //   36: iload 4
    //   38: istore_3
    //   39: aload 7
    //   41: ifnull +183 -> 224
    //   44: iload_3
    //   45: bipush 10
    //   47: if_icmpge +177 -> 224
    //   50: iload_3
    //   51: iconst_1
    //   52: iadd
    //   53: istore_3
    //   54: aload 9
    //   56: astore 5
    //   58: iload_3
    //   59: istore_2
    //   60: new 88	java/net/URL
    //   63: dup
    //   64: aload 7
    //   66: invokespecial 91	java/net/URL:<init>	(Ljava/lang/String;)V
    //   69: invokevirtual 95	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   72: checkcast 97	java/net/HttpURLConnection
    //   75: astore 6
    //   77: aload 6
    //   79: iconst_0
    //   80: invokevirtual 101	java/net/HttpURLConnection:setInstanceFollowRedirects	(Z)V
    //   83: aload 6
    //   85: ldc 103
    //   87: getstatic 104	com/duapps/ad/base/m:b	Ljava/lang/String;
    //   90: invokevirtual 108	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   93: aload 6
    //   95: ldc 110
    //   97: ldc 112
    //   99: invokevirtual 108	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   102: aload 6
    //   104: ldc 114
    //   106: ldc 116
    //   108: invokevirtual 108	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   111: aload 6
    //   113: sipush 30000
    //   116: invokevirtual 120	java/net/HttpURLConnection:setConnectTimeout	(I)V
    //   119: aload 6
    //   121: invokevirtual 124	java/net/HttpURLConnection:getResponseCode	()I
    //   124: istore_2
    //   125: iload_2
    //   126: sipush 302
    //   129: if_icmpeq +24 -> 153
    //   132: iload_2
    //   133: sipush 301
    //   136: if_icmpeq +17 -> 153
    //   139: iload_2
    //   140: sipush 307
    //   143: if_icmpeq +10 -> 153
    //   146: iload_2
    //   147: sipush 303
    //   150: if_icmpne +205 -> 355
    //   153: aload 6
    //   155: ldc 126
    //   157: invokevirtual 130	java/net/HttpURLConnection:getHeaderField	(Ljava/lang/String;)Ljava/lang/String;
    //   160: astore 7
    //   162: aload 7
    //   164: invokestatic 135	com/duapps/ad/stats/n:b	(Ljava/lang/String;)Z
    //   167: ifeq +70 -> 237
    //   170: invokestatic 140	com/duapps/ad/base/l:a	()Z
    //   173: ifeq +29 -> 202
    //   176: getstatic 141	com/duapps/ad/base/m:a	Ljava/lang/String;
    //   179: new 143	java/lang/StringBuilder
    //   182: dup
    //   183: invokespecial 144	java/lang/StringBuilder:<init>	()V
    //   186: ldc -110
    //   188: invokevirtual 150	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   191: aload 7
    //   193: invokevirtual 150	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   196: invokevirtual 154	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   199: invokestatic 156	com/duapps/ad/base/l:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   202: aload_0
    //   203: aload_1
    //   204: iconst_1
    //   205: aload 7
    //   207: iload_3
    //   208: invokestatic 84	android/os/SystemClock:elapsedRealtime	()J
    //   211: aload_0
    //   212: getfield 86	com/duapps/ad/base/o:c	J
    //   215: lsub
    //   216: invokespecial 158	com/duapps/ad/base/o:a	(Lcom/duapps/ad/entity/AdData;ILjava/lang/String;IJ)V
    //   219: aload 6
    //   221: invokevirtual 161	java/net/HttpURLConnection:disconnect	()V
    //   224: iconst_0
    //   225: ifeq +11 -> 236
    //   228: new 163	java/lang/NullPointerException
    //   231: dup
    //   232: invokespecial 164	java/lang/NullPointerException:<init>	()V
    //   235: athrow
    //   236: return
    //   237: invokestatic 140	com/duapps/ad/base/l:a	()Z
    //   240: ifeq +29 -> 269
    //   243: getstatic 141	com/duapps/ad/base/m:a	Ljava/lang/String;
    //   246: new 143	java/lang/StringBuilder
    //   249: dup
    //   250: invokespecial 144	java/lang/StringBuilder:<init>	()V
    //   253: ldc -90
    //   255: invokevirtual 150	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   258: aload 7
    //   260: invokevirtual 150	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   263: invokevirtual 154	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   266: invokestatic 156	com/duapps/ad/base/l:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   269: aload 6
    //   271: invokevirtual 161	java/net/HttpURLConnection:disconnect	()V
    //   274: goto -235 -> 39
    //   277: astore 7
    //   279: iload_3
    //   280: istore_2
    //   281: aload 6
    //   283: astore 5
    //   285: invokestatic 140	com/duapps/ad/base/l:a	()Z
    //   288: ifeq +36 -> 324
    //   291: aload 6
    //   293: astore 5
    //   295: getstatic 141	com/duapps/ad/base/m:a	Ljava/lang/String;
    //   298: new 143	java/lang/StringBuilder
    //   301: dup
    //   302: invokespecial 144	java/lang/StringBuilder:<init>	()V
    //   305: ldc -88
    //   307: invokevirtual 150	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   310: aload 7
    //   312: invokevirtual 171	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   315: invokevirtual 150	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   318: invokevirtual 154	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   321: invokestatic 156	com/duapps/ad/base/l:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   324: aload 6
    //   326: astore 5
    //   328: aload_0
    //   329: aload_1
    //   330: iconst_3
    //   331: aconst_null
    //   332: iload_2
    //   333: invokestatic 84	android/os/SystemClock:elapsedRealtime	()J
    //   336: aload_0
    //   337: getfield 86	com/duapps/ad/base/o:c	J
    //   340: lsub
    //   341: invokespecial 158	com/duapps/ad/base/o:a	(Lcom/duapps/ad/entity/AdData;ILjava/lang/String;IJ)V
    //   344: aload 6
    //   346: ifnull -110 -> 236
    //   349: aload 6
    //   351: invokevirtual 161	java/net/HttpURLConnection:disconnect	()V
    //   354: return
    //   355: invokestatic 140	com/duapps/ad/base/l:a	()Z
    //   358: ifeq +29 -> 387
    //   361: getstatic 141	com/duapps/ad/base/m:a	Ljava/lang/String;
    //   364: new 143	java/lang/StringBuilder
    //   367: dup
    //   368: invokespecial 144	java/lang/StringBuilder:<init>	()V
    //   371: ldc -83
    //   373: invokevirtual 150	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   376: aload 7
    //   378: invokevirtual 150	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   381: invokevirtual 154	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   384: invokestatic 156	com/duapps/ad/base/l:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   387: aload_0
    //   388: aload_1
    //   389: iconst_2
    //   390: aload 7
    //   392: iload_3
    //   393: invokestatic 84	android/os/SystemClock:elapsedRealtime	()J
    //   396: aload_0
    //   397: getfield 86	com/duapps/ad/base/o:c	J
    //   400: lsub
    //   401: invokespecial 158	com/duapps/ad/base/o:a	(Lcom/duapps/ad/entity/AdData;ILjava/lang/String;IJ)V
    //   404: aload 6
    //   406: invokevirtual 161	java/net/HttpURLConnection:disconnect	()V
    //   409: goto -185 -> 224
    //   412: astore_1
    //   413: aload 6
    //   415: astore 5
    //   417: aload 5
    //   419: ifnull +8 -> 427
    //   422: aload 5
    //   424: invokevirtual 161	java/net/HttpURLConnection:disconnect	()V
    //   427: aload_1
    //   428: athrow
    //   429: astore_1
    //   430: goto -13 -> 417
    //   433: astore 7
    //   435: aload 8
    //   437: astore 6
    //   439: goto -158 -> 281
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	442	0	this	o
    //   0	442	1	paramAdData	AdData
    //   16	317	2	i	int
    //   1	392	3	j	int
    //   3	34	4	k	int
    //   13	410	5	localObject1	Object
    //   75	363	6	localObject2	Object
    //   21	238	7	str	String
    //   277	114	7	localException1	Exception
    //   433	1	7	localException2	Exception
    //   9	427	8	localObject3	Object
    //   6	49	9	localObject4	Object
    // Exception table:
    //   from	to	target	type
    //   77	125	277	java/lang/Exception
    //   153	202	277	java/lang/Exception
    //   202	224	277	java/lang/Exception
    //   237	269	277	java/lang/Exception
    //   269	274	277	java/lang/Exception
    //   355	387	277	java/lang/Exception
    //   387	409	277	java/lang/Exception
    //   77	125	412	finally
    //   153	202	412	finally
    //   202	224	412	finally
    //   237	269	412	finally
    //   269	274	412	finally
    //   355	387	412	finally
    //   387	409	412	finally
    //   17	23	429	finally
    //   29	36	429	finally
    //   60	77	429	finally
    //   285	291	429	finally
    //   295	324	429	finally
    //   328	344	429	finally
    //   17	23	433	java/lang/Exception
    //   29	36	433	java/lang/Exception
    //   60	77	433	java/lang/Exception
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1;
    if (this == paramObject) {
      bool1 = true;
    }
    do
    {
      do
      {
        return bool1;
        bool1 = bool2;
      } while (paramObject == null);
      bool1 = bool2;
    } while (getClass() != paramObject.getClass());
    return b.equals(b);
  }
  
  public void run()
  {
    Process.setThreadPriority(10);
    String str = b.h;
    m.a(a).add(str);
    p localp = y.a(m.b(a)).a(str);
    if ((c == 0) || (c == 3)) {
      a(b);
    }
    for (;;)
    {
      m.a(a).remove(str);
      return;
      if (l.a()) {
        l.c(m.a, "DONE [CACHED] type = " + c);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.duapps.ad.base.o
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */