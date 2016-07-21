package com.flurry.sdk;

import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.SocketTimeoutException;
import java.util.List;

public class kp
  extends lz
{
  private static final String a = kp.class.getSimpleName();
  private String b;
  private kp.a c;
  private int d = 10000;
  private int e = 15000;
  private int f;
  private int g;
  private boolean j = true;
  private final jx<String, String> k = new jx();
  private kp.c l;
  private HttpURLConnection m;
  private boolean n;
  private boolean o;
  private boolean p;
  private long q = -1L;
  private long r = -1L;
  private Exception s;
  private int t = -1;
  private final jx<String, String> u = new jx();
  private final Object v = new Object();
  private boolean w;
  private int x = 25000;
  private ko y = new ko(this);
  private boolean z;
  
  private void a(InputStream paramInputStream)
  {
    if (l == null) {}
    while ((e()) || (paramInputStream == null)) {
      return;
    }
    l.a(this, paramInputStream);
  }
  
  private void a(OutputStream paramOutputStream)
  {
    if (l == null) {}
    while ((e()) || (paramOutputStream == null)) {
      return;
    }
    l.a(this, paramOutputStream);
  }
  
  /* Error */
  private void r()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: aconst_null
    //   4: astore 5
    //   6: aload_0
    //   7: getfield 109	com/flurry/sdk/kp:o	Z
    //   10: ifeq +4 -> 14
    //   13: return
    //   14: aload_0
    //   15: aload_0
    //   16: getfield 111	com/flurry/sdk/kp:b	Ljava/lang/String;
    //   19: invokestatic 116	com/flurry/sdk/lt:a	(Ljava/lang/String;)Ljava/lang/String;
    //   22: putfield 111	com/flurry/sdk/kp:b	Ljava/lang/String;
    //   25: new 118	java/net/URL
    //   28: dup
    //   29: aload_0
    //   30: getfield 111	com/flurry/sdk/kp:b	Ljava/lang/String;
    //   33: invokespecial 121	java/net/URL:<init>	(Ljava/lang/String;)V
    //   36: astore_2
    //   37: aload_0
    //   38: aload_2
    //   39: invokevirtual 125	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   42: checkcast 127	java/net/HttpURLConnection
    //   45: putfield 92	com/flurry/sdk/kp:m	Ljava/net/HttpURLConnection;
    //   48: aload_0
    //   49: getfield 92	com/flurry/sdk/kp:m	Ljava/net/HttpURLConnection;
    //   52: aload_0
    //   53: getfield 56	com/flurry/sdk/kp:d	I
    //   56: invokevirtual 131	java/net/HttpURLConnection:setConnectTimeout	(I)V
    //   59: aload_0
    //   60: getfield 92	com/flurry/sdk/kp:m	Ljava/net/HttpURLConnection;
    //   63: aload_0
    //   64: getfield 58	com/flurry/sdk/kp:e	I
    //   67: invokevirtual 134	java/net/HttpURLConnection:setReadTimeout	(I)V
    //   70: aload_0
    //   71: getfield 92	com/flurry/sdk/kp:m	Ljava/net/HttpURLConnection;
    //   74: aload_0
    //   75: getfield 136	com/flurry/sdk/kp:c	Lcom/flurry/sdk/kp$a;
    //   78: invokevirtual 141	com/flurry/sdk/kp$a:toString	()Ljava/lang/String;
    //   81: invokevirtual 144	java/net/HttpURLConnection:setRequestMethod	(Ljava/lang/String;)V
    //   84: aload_0
    //   85: getfield 92	com/flurry/sdk/kp:m	Ljava/net/HttpURLConnection;
    //   88: aload_0
    //   89: getfield 60	com/flurry/sdk/kp:j	Z
    //   92: invokevirtual 148	java/net/HttpURLConnection:setInstanceFollowRedirects	(Z)V
    //   95: aload_0
    //   96: getfield 92	com/flurry/sdk/kp:m	Ljava/net/HttpURLConnection;
    //   99: getstatic 149	com/flurry/sdk/kp$a:c	Lcom/flurry/sdk/kp$a;
    //   102: aload_0
    //   103: getfield 136	com/flurry/sdk/kp:c	Lcom/flurry/sdk/kp$a;
    //   106: invokevirtual 153	com/flurry/sdk/kp$a:equals	(Ljava/lang/Object;)Z
    //   109: invokevirtual 156	java/net/HttpURLConnection:setDoOutput	(Z)V
    //   112: aload_0
    //   113: getfield 92	com/flurry/sdk/kp:m	Ljava/net/HttpURLConnection;
    //   116: iconst_1
    //   117: invokevirtual 159	java/net/HttpURLConnection:setDoInput	(Z)V
    //   120: aload_0
    //   121: getfield 65	com/flurry/sdk/kp:k	Lcom/flurry/sdk/jx;
    //   124: invokevirtual 162	com/flurry/sdk/jx:b	()Ljava/util/Collection;
    //   127: invokeinterface 168 1 0
    //   132: astore_2
    //   133: aload_2
    //   134: invokeinterface 173 1 0
    //   139: ifeq +48 -> 187
    //   142: aload_2
    //   143: invokeinterface 177 1 0
    //   148: checkcast 179	java/util/Map$Entry
    //   151: astore_3
    //   152: aload_0
    //   153: getfield 92	com/flurry/sdk/kp:m	Ljava/net/HttpURLConnection;
    //   156: aload_3
    //   157: invokeinterface 182 1 0
    //   162: checkcast 184	java/lang/String
    //   165: aload_3
    //   166: invokeinterface 187 1 0
    //   171: checkcast 184	java/lang/String
    //   174: invokevirtual 191	java/net/HttpURLConnection:addRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   177: goto -44 -> 133
    //   180: astore_2
    //   181: aload_0
    //   182: invokespecial 193	com/flurry/sdk/kp:t	()V
    //   185: aload_2
    //   186: athrow
    //   187: getstatic 195	com/flurry/sdk/kp$a:b	Lcom/flurry/sdk/kp$a;
    //   190: aload_0
    //   191: getfield 136	com/flurry/sdk/kp:c	Lcom/flurry/sdk/kp$a;
    //   194: invokevirtual 153	com/flurry/sdk/kp$a:equals	(Ljava/lang/Object;)Z
    //   197: ifne +27 -> 224
    //   200: getstatic 149	com/flurry/sdk/kp$a:c	Lcom/flurry/sdk/kp$a;
    //   203: aload_0
    //   204: getfield 136	com/flurry/sdk/kp:c	Lcom/flurry/sdk/kp$a;
    //   207: invokevirtual 153	com/flurry/sdk/kp$a:equals	(Ljava/lang/Object;)Z
    //   210: ifne +14 -> 224
    //   213: aload_0
    //   214: getfield 92	com/flurry/sdk/kp:m	Ljava/net/HttpURLConnection;
    //   217: ldc -59
    //   219: ldc -57
    //   221: invokevirtual 202	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   224: aload_0
    //   225: getfield 109	com/flurry/sdk/kp:o	Z
    //   228: istore_1
    //   229: iload_1
    //   230: ifeq +8 -> 238
    //   233: aload_0
    //   234: invokespecial 193	com/flurry/sdk/kp:t	()V
    //   237: return
    //   238: getstatic 149	com/flurry/sdk/kp$a:c	Lcom/flurry/sdk/kp$a;
    //   241: aload_0
    //   242: getfield 136	com/flurry/sdk/kp:c	Lcom/flurry/sdk/kp$a;
    //   245: invokevirtual 153	com/flurry/sdk/kp$a:equals	(Ljava/lang/Object;)Z
    //   248: istore_1
    //   249: iload_1
    //   250: ifeq +33 -> 283
    //   253: aload_0
    //   254: getfield 92	com/flurry/sdk/kp:m	Ljava/net/HttpURLConnection;
    //   257: invokevirtual 206	java/net/HttpURLConnection:getOutputStream	()Ljava/io/OutputStream;
    //   260: astore_2
    //   261: new 208	java/io/BufferedOutputStream
    //   264: dup
    //   265: aload_2
    //   266: invokespecial 210	java/io/BufferedOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   269: astore_3
    //   270: aload_0
    //   271: aload_3
    //   272: invokespecial 212	com/flurry/sdk/kp:a	(Ljava/io/OutputStream;)V
    //   275: aload_3
    //   276: invokestatic 215	com/flurry/sdk/lt:a	(Ljava/io/Closeable;)V
    //   279: aload_2
    //   280: invokestatic 215	com/flurry/sdk/lt:a	(Ljava/io/Closeable;)V
    //   283: aload_0
    //   284: getfield 217	com/flurry/sdk/kp:p	Z
    //   287: ifeq +10 -> 297
    //   290: aload_0
    //   291: invokestatic 223	java/lang/System:currentTimeMillis	()J
    //   294: putfield 69	com/flurry/sdk/kp:q	J
    //   297: aload_0
    //   298: getfield 225	com/flurry/sdk/kp:w	Z
    //   301: ifeq +15 -> 316
    //   304: aload_0
    //   305: getfield 89	com/flurry/sdk/kp:y	Lcom/flurry/sdk/ko;
    //   308: aload_0
    //   309: getfield 82	com/flurry/sdk/kp:x	I
    //   312: i2l
    //   313: invokevirtual 228	com/flurry/sdk/ko:a	(J)V
    //   316: aload_0
    //   317: aload_0
    //   318: getfield 92	com/flurry/sdk/kp:m	Ljava/net/HttpURLConnection;
    //   321: invokevirtual 232	java/net/HttpURLConnection:getResponseCode	()I
    //   324: putfield 73	com/flurry/sdk/kp:t	I
    //   327: aload_0
    //   328: getfield 217	com/flurry/sdk/kp:p	Z
    //   331: ifeq +26 -> 357
    //   334: aload_0
    //   335: getfield 69	com/flurry/sdk/kp:q	J
    //   338: ldc2_w 66
    //   341: lcmp
    //   342: ifeq +15 -> 357
    //   345: aload_0
    //   346: invokestatic 223	java/lang/System:currentTimeMillis	()J
    //   349: aload_0
    //   350: getfield 69	com/flurry/sdk/kp:q	J
    //   353: lsub
    //   354: putfield 71	com/flurry/sdk/kp:r	J
    //   357: aload_0
    //   358: getfield 89	com/flurry/sdk/kp:y	Lcom/flurry/sdk/ko;
    //   361: invokevirtual 234	com/flurry/sdk/ko:a	()V
    //   364: aload_0
    //   365: getfield 92	com/flurry/sdk/kp:m	Ljava/net/HttpURLConnection;
    //   368: invokevirtual 238	java/net/HttpURLConnection:getHeaderFields	()Ljava/util/Map;
    //   371: invokeinterface 244 1 0
    //   376: invokeinterface 168 1 0
    //   381: astore_2
    //   382: aload_2
    //   383: invokeinterface 173 1 0
    //   388: ifeq +80 -> 468
    //   391: aload_2
    //   392: invokeinterface 177 1 0
    //   397: checkcast 179	java/util/Map$Entry
    //   400: astore_3
    //   401: aload_3
    //   402: invokeinterface 187 1 0
    //   407: checkcast 246	java/util/List
    //   410: invokeinterface 247 1 0
    //   415: astore 5
    //   417: aload 5
    //   419: invokeinterface 173 1 0
    //   424: ifeq -42 -> 382
    //   427: aload 5
    //   429: invokeinterface 177 1 0
    //   434: checkcast 184	java/lang/String
    //   437: astore 6
    //   439: aload_0
    //   440: getfield 75	com/flurry/sdk/kp:u	Lcom/flurry/sdk/jx;
    //   443: aload_3
    //   444: invokeinterface 182 1 0
    //   449: aload 6
    //   451: invokevirtual 250	com/flurry/sdk/jx:a	(Ljava/lang/Object;Ljava/lang/Object;)V
    //   454: goto -37 -> 417
    //   457: aload_3
    //   458: invokestatic 215	com/flurry/sdk/lt:a	(Ljava/io/Closeable;)V
    //   461: aload 4
    //   463: invokestatic 215	com/flurry/sdk/lt:a	(Ljava/io/Closeable;)V
    //   466: aload_2
    //   467: athrow
    //   468: getstatic 195	com/flurry/sdk/kp$a:b	Lcom/flurry/sdk/kp$a;
    //   471: aload_0
    //   472: getfield 136	com/flurry/sdk/kp:c	Lcom/flurry/sdk/kp$a;
    //   475: invokevirtual 153	com/flurry/sdk/kp$a:equals	(Ljava/lang/Object;)Z
    //   478: ifne +23 -> 501
    //   481: getstatic 149	com/flurry/sdk/kp$a:c	Lcom/flurry/sdk/kp$a;
    //   484: aload_0
    //   485: getfield 136	com/flurry/sdk/kp:c	Lcom/flurry/sdk/kp$a;
    //   488: invokevirtual 153	com/flurry/sdk/kp$a:equals	(Ljava/lang/Object;)Z
    //   491: istore_1
    //   492: iload_1
    //   493: ifne +8 -> 501
    //   496: aload_0
    //   497: invokespecial 193	com/flurry/sdk/kp:t	()V
    //   500: return
    //   501: aload_0
    //   502: getfield 109	com/flurry/sdk/kp:o	Z
    //   505: istore_1
    //   506: iload_1
    //   507: ifeq +8 -> 515
    //   510: aload_0
    //   511: invokespecial 193	com/flurry/sdk/kp:t	()V
    //   514: return
    //   515: aload_0
    //   516: getfield 92	com/flurry/sdk/kp:m	Ljava/net/HttpURLConnection;
    //   519: invokevirtual 254	java/net/HttpURLConnection:getInputStream	()Ljava/io/InputStream;
    //   522: astore_2
    //   523: new 256	java/io/BufferedInputStream
    //   526: dup
    //   527: aload_2
    //   528: invokespecial 258	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   531: astore_3
    //   532: aload_0
    //   533: aload_3
    //   534: invokespecial 260	com/flurry/sdk/kp:a	(Ljava/io/InputStream;)V
    //   537: aload_3
    //   538: invokestatic 215	com/flurry/sdk/lt:a	(Ljava/io/Closeable;)V
    //   541: aload_2
    //   542: invokestatic 215	com/flurry/sdk/lt:a	(Ljava/io/Closeable;)V
    //   545: aload_0
    //   546: invokespecial 193	com/flurry/sdk/kp:t	()V
    //   549: return
    //   550: astore_2
    //   551: aconst_null
    //   552: astore_3
    //   553: aload 4
    //   555: invokestatic 215	com/flurry/sdk/lt:a	(Ljava/io/Closeable;)V
    //   558: aload_3
    //   559: invokestatic 215	com/flurry/sdk/lt:a	(Ljava/io/Closeable;)V
    //   562: aload_2
    //   563: athrow
    //   564: astore 5
    //   566: aload_2
    //   567: astore_3
    //   568: aload 5
    //   570: astore_2
    //   571: goto -18 -> 553
    //   574: astore 5
    //   576: aload_3
    //   577: astore 4
    //   579: aload_2
    //   580: astore_3
    //   581: aload 5
    //   583: astore_2
    //   584: goto -31 -> 553
    //   587: astore 5
    //   589: aconst_null
    //   590: astore_3
    //   591: aload_2
    //   592: astore 4
    //   594: aload 5
    //   596: astore_2
    //   597: goto -140 -> 457
    //   600: astore 5
    //   602: aload_2
    //   603: astore 4
    //   605: aload 5
    //   607: astore_2
    //   608: goto -151 -> 457
    //   611: astore_2
    //   612: aconst_null
    //   613: astore_3
    //   614: aload 5
    //   616: astore 4
    //   618: goto -161 -> 457
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	621	0	this	kp
    //   228	279	1	bool	boolean
    //   36	107	2	localObject1	Object
    //   180	6	2	localObject2	Object
    //   260	282	2	localObject3	Object
    //   550	17	2	localObject4	Object
    //   570	38	2	localObject5	Object
    //   611	1	2	localObject6	Object
    //   151	463	3	localObject7	Object
    //   1	616	4	localObject8	Object
    //   4	424	5	localIterator	java.util.Iterator
    //   564	5	5	localObject9	Object
    //   574	8	5	localObject10	Object
    //   587	8	5	localObject11	Object
    //   600	15	5	localObject12	Object
    //   437	13	6	str	String
    // Exception table:
    //   from	to	target	type
    //   37	133	180	finally
    //   133	177	180	finally
    //   187	224	180	finally
    //   224	229	180	finally
    //   238	249	180	finally
    //   275	283	180	finally
    //   283	297	180	finally
    //   297	316	180	finally
    //   316	357	180	finally
    //   357	382	180	finally
    //   382	417	180	finally
    //   417	454	180	finally
    //   457	468	180	finally
    //   468	492	180	finally
    //   501	506	180	finally
    //   537	545	180	finally
    //   553	564	180	finally
    //   515	523	550	finally
    //   523	532	564	finally
    //   532	537	574	finally
    //   261	270	587	finally
    //   270	275	600	finally
    //   253	261	611	finally
  }
  
  private void s()
  {
    if (l == null) {}
    while (e()) {
      return;
    }
    l.a(this);
  }
  
  private void t()
  {
    if (n) {}
    do
    {
      return;
      n = true;
    } while (m == null);
    m.disconnect();
  }
  
  private void u()
  {
    if (n) {}
    do
    {
      return;
      n = true;
    } while (m == null);
    new kp.1(this).start();
  }
  
  public void a()
  {
    try
    {
      String str = b;
      if (str == null) {
        return;
      }
      if (!jl.a().c())
      {
        kg.a(3, a, "Network not available, aborting http request: " + b);
        return;
      }
      if ((c == null) || (kp.a.a.equals(c))) {
        c = kp.a.b;
      }
      r();
      kg.a(4, a, "HTTP status: " + t + " for url: " + b);
      return;
    }
    catch (Exception localException)
    {
      kg.a(4, a, "HTTP status: " + t + " for url: " + b);
      kg.a(3, a, "Exception during http request: " + b, localException);
      g = m.getReadTimeout();
      f = m.getConnectTimeout();
      s = localException;
      return;
    }
    finally
    {
      y.a();
      s();
    }
  }
  
  public void a(int paramInt)
  {
    d = paramInt;
  }
  
  public void a(kp.a parama)
  {
    c = parama;
  }
  
  public void a(kp.c paramc)
  {
    l = paramc;
  }
  
  public void a(String paramString)
  {
    b = paramString;
  }
  
  public void a(String paramString1, String paramString2)
  {
    k.a(paramString1, paramString2);
  }
  
  public void a(boolean paramBoolean)
  {
    w = paramBoolean;
  }
  
  public String b()
  {
    return b;
  }
  
  public List<String> b(String paramString)
  {
    if (paramString == null) {
      return null;
    }
    return u.a(paramString);
  }
  
  public void b(int paramInt)
  {
    e = paramInt;
  }
  
  public void b(boolean paramBoolean)
  {
    j = paramBoolean;
  }
  
  public long c()
  {
    return r;
  }
  
  public void c(int paramInt)
  {
    x = paramInt;
  }
  
  public void c(String paramString)
  {
    if ((u != null) && (u.c(paramString))) {
      u.b(paramString);
    }
  }
  
  public void c(boolean paramBoolean)
  {
    p = paramBoolean;
  }
  
  public boolean d()
  {
    boolean bool = false;
    if ((s != null) && ((s instanceof SocketTimeoutException))) {}
    for (int i = 1;; i = 0)
    {
      if ((z) || (i != 0)) {
        bool = true;
      }
      return bool;
    }
  }
  
  public boolean e()
  {
    synchronized (v)
    {
      boolean bool = o;
      return bool;
    }
  }
  
  public boolean f()
  {
    return (!i()) && (g());
  }
  
  public boolean g()
  {
    return (t >= 200) && (t < 400) && (!z);
  }
  
  public int h()
  {
    return t;
  }
  
  public boolean i()
  {
    return s != null;
  }
  
  public Exception j()
  {
    return s;
  }
  
  public void k()
  {
    long l1 = System.currentTimeMillis();
    long l2 = q;
    kg.a(3, a, "Timeout (" + (l1 - l2) + "MS) for url: " + b);
    t = 629;
    z = true;
    s();
    l();
  }
  
  public void l()
  {
    kg.a(3, a, "Cancelling http request: " + b);
    synchronized (v)
    {
      o = true;
      u();
      return;
    }
  }
  
  public void m()
  {
    l();
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.kp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */