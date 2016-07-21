package com.flurry.sdk;

import java.io.OutputStream;
import java.util.List;
import java.util.Locale;

public abstract class am
{
  private static final String a = am.class.getSimpleName();
  private am.a b;
  private String c;
  private long d = Long.MAX_VALUE;
  private int e = 40000;
  private aq f;
  private long g;
  private boolean h;
  private int i;
  private long j = 102400L;
  private int k;
  private boolean l;
  private boolean m;
  
  private long a(kp paramkp)
  {
    paramkp = paramkp.b("Content-Length");
    if ((paramkp != null) && (!paramkp.isEmpty())) {
      try
      {
        long l1 = Long.parseLong((String)paramkp.get(0));
        return l1;
      }
      catch (NumberFormatException paramkp)
      {
        kg.a(3, a, "Downloader: could not determine content length for url: " + c);
      }
    }
    return -1L;
  }
  
  private String b(int paramInt)
  {
    return String.format(Locale.US, "%s__%03d", new Object[] { c, Integer.valueOf(paramInt) });
  }
  
  private String c(int paramInt)
  {
    return String.format("%s=%d-%d", new Object[] { "bytes", Long.valueOf(paramInt * j), Long.valueOf(Math.min(g, (paramInt + 1) * j) - 1L) });
  }
  
  private void j()
  {
    if (b()) {
      return;
    }
    kg.a(3, a, "Downloader: Requesting file from url: " + c);
    kp localkp = new kp();
    localkp.a(c);
    localkp.a(kp.a.b);
    localkp.d(e);
    localkp.a(new am.2(this));
    jq.a().a(this, localkp);
  }
  
  private void k()
  {
    if (b()) {
      return;
    }
    kn localkn = new kn();
    localkn.a(c);
    localkn.a(kp.a.f);
    localkn.a(new am.3(this));
    kg.a(3, a, "Downloader: requesting HTTP HEAD for url: " + c);
    jq.a().a(this, localkn);
  }
  
  private void l()
  {
    if (b()) {
      return;
    }
    if (q())
    {
      int n = 0;
      while (n < i)
      {
        f.d(b(n));
        n += 1;
      }
      m();
      return;
    }
    j();
  }
  
  private void m()
  {
    while (k < i)
    {
      if (b()) {
        return;
      }
      String str1 = b(k);
      String str2 = c(k);
      if (f.d(str1))
      {
        kg.a(3, a, "Downloader: Skipping chunk with range:" + str2 + " for url: " + c + " chunk: " + k);
        k += 1;
      }
      else
      {
        kg.a(3, a, "Downloader: Requesting chunk with range:" + str2 + " for url: " + c + " chunk: " + k);
        kp localkp = new kp();
        localkp.a(c);
        localkp.a(kp.a.b);
        localkp.d(e);
        localkp.a("Range", str2);
        localkp.a(new am.4(this, str1, str2));
        jq.a().a(this, localkp);
        return;
      }
    }
    n();
  }
  
  /* Error */
  private void n()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: iconst_0
    //   4: istore_2
    //   5: aload_0
    //   6: invokevirtual 162	com/flurry/sdk/am:b	()Z
    //   9: ifeq +4 -> 13
    //   12: return
    //   13: iconst_3
    //   14: getstatic 33	com/flurry/sdk/am:a	Ljava/lang/String;
    //   17: new 87	java/lang/StringBuilder
    //   20: dup
    //   21: invokespecial 88	java/lang/StringBuilder:<init>	()V
    //   24: ldc_w 259
    //   27: invokevirtual 94	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   30: aload_0
    //   31: getfield 96	com/flurry/sdk/am:c	Ljava/lang/String;
    //   34: invokevirtual 94	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   37: invokevirtual 99	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   40: invokestatic 104	com/flurry/sdk/kg:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   43: aload_0
    //   44: invokevirtual 262	com/flurry/sdk/am:f	()Ljava/io/OutputStream;
    //   47: astore 5
    //   49: iconst_0
    //   50: istore_1
    //   51: iload_1
    //   52: aload_0
    //   53: getfield 51	com/flurry/sdk/am:i	I
    //   56: if_icmpge +173 -> 229
    //   59: aload_0
    //   60: invokevirtual 162	com/flurry/sdk/am:b	()Z
    //   63: ifeq +63 -> 126
    //   66: new 257	java/io/IOException
    //   69: dup
    //   70: ldc_w 264
    //   73: invokespecial 266	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   76: athrow
    //   77: astore_3
    //   78: aload_0
    //   79: invokevirtual 268	com/flurry/sdk/am:g	()V
    //   82: aload_3
    //   83: ifnonnull +156 -> 239
    //   86: iconst_3
    //   87: getstatic 33	com/flurry/sdk/am:a	Ljava/lang/String;
    //   90: new 87	java/lang/StringBuilder
    //   93: dup
    //   94: invokespecial 88	java/lang/StringBuilder:<init>	()V
    //   97: ldc_w 270
    //   100: invokevirtual 94	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   103: aload_0
    //   104: getfield 96	com/flurry/sdk/am:c	Ljava/lang/String;
    //   107: invokevirtual 94	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   110: invokevirtual 99	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   113: invokestatic 104	com/flurry/sdk/kg:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   116: aload_0
    //   117: iconst_1
    //   118: putfield 113	com/flurry/sdk/am:l	Z
    //   121: aload_0
    //   122: invokespecial 160	com/flurry/sdk/am:o	()V
    //   125: return
    //   126: aload_0
    //   127: iload_1
    //   128: invokespecial 222	com/flurry/sdk/am:b	(I)Ljava/lang/String;
    //   131: astore 6
    //   133: aload_0
    //   134: getfield 199	com/flurry/sdk/am:f	Lcom/flurry/sdk/aq;
    //   137: aload 6
    //   139: invokevirtual 273	com/flurry/sdk/aq:a	(Ljava/lang/String;)Lcom/flurry/sdk/aq$b;
    //   142: astore_3
    //   143: aload_3
    //   144: ifnonnull +54 -> 198
    //   147: new 257	java/io/IOException
    //   150: dup
    //   151: new 87	java/lang/StringBuilder
    //   154: dup
    //   155: invokespecial 88	java/lang/StringBuilder:<init>	()V
    //   158: ldc_w 275
    //   161: invokevirtual 94	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   164: aload 6
    //   166: invokevirtual 94	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   169: invokevirtual 99	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   172: invokespecial 266	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   175: athrow
    //   176: astore 5
    //   178: aload_3
    //   179: astore 4
    //   181: aload 5
    //   183: astore_3
    //   184: aload 4
    //   186: invokestatic 280	com/flurry/sdk/lt:a	(Ljava/io/Closeable;)V
    //   189: aload_3
    //   190: athrow
    //   191: astore_3
    //   192: aload_0
    //   193: invokevirtual 268	com/flurry/sdk/am:g	()V
    //   196: aload_3
    //   197: athrow
    //   198: aload_3
    //   199: invokevirtual 285	com/flurry/sdk/aq$b:a	()Ljava/io/InputStream;
    //   202: aload 5
    //   204: invokestatic 288	com/flurry/sdk/lt:a	(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    //   207: pop2
    //   208: aload_3
    //   209: invokestatic 280	com/flurry/sdk/lt:a	(Ljava/io/Closeable;)V
    //   212: aload_0
    //   213: getfield 199	com/flurry/sdk/am:f	Lcom/flurry/sdk/aq;
    //   216: aload 6
    //   218: invokevirtual 290	com/flurry/sdk/aq:c	(Ljava/lang/String;)Z
    //   221: pop
    //   222: iload_1
    //   223: iconst_1
    //   224: iadd
    //   225: istore_1
    //   226: goto -175 -> 51
    //   229: aload_0
    //   230: invokevirtual 268	com/flurry/sdk/am:g	()V
    //   233: aload 4
    //   235: astore_3
    //   236: goto -154 -> 82
    //   239: iconst_3
    //   240: getstatic 33	com/flurry/sdk/am:a	Ljava/lang/String;
    //   243: new 87	java/lang/StringBuilder
    //   246: dup
    //   247: invokespecial 88	java/lang/StringBuilder:<init>	()V
    //   250: ldc_w 292
    //   253: invokevirtual 94	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   256: aload_0
    //   257: getfield 96	com/flurry/sdk/am:c	Ljava/lang/String;
    //   260: invokevirtual 94	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   263: ldc_w 294
    //   266: invokevirtual 94	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   269: aload_3
    //   270: invokevirtual 297	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   273: invokevirtual 99	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   276: invokestatic 104	com/flurry/sdk/kg:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   279: iload_2
    //   280: istore_1
    //   281: iload_1
    //   282: aload_0
    //   283: getfield 51	com/flurry/sdk/am:i	I
    //   286: if_icmpge +23 -> 309
    //   289: aload_0
    //   290: getfield 199	com/flurry/sdk/am:f	Lcom/flurry/sdk/aq;
    //   293: aload_0
    //   294: iload_1
    //   295: invokespecial 222	com/flurry/sdk/am:b	(I)Ljava/lang/String;
    //   298: invokevirtual 290	com/flurry/sdk/aq:c	(Ljava/lang/String;)Z
    //   301: pop
    //   302: iload_1
    //   303: iconst_1
    //   304: iadd
    //   305: istore_1
    //   306: goto -25 -> 281
    //   309: aload_0
    //   310: invokevirtual 299	com/flurry/sdk/am:h	()V
    //   313: goto -192 -> 121
    //   316: astore_3
    //   317: aconst_null
    //   318: astore 4
    //   320: goto -136 -> 184
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	323	0	this	am
    //   50	256	1	n	int
    //   4	276	2	i1	int
    //   77	6	3	localIOException	java.io.IOException
    //   142	48	3	localObject1	Object
    //   191	18	3	localCloseable	java.io.Closeable
    //   235	35	3	localObject2	Object
    //   316	1	3	localObject3	Object
    //   1	318	4	localObject4	Object
    //   47	1	5	localOutputStream1	OutputStream
    //   176	27	5	localOutputStream2	OutputStream
    //   131	86	6	str	String
    // Exception table:
    //   from	to	target	type
    //   43	49	77	java/io/IOException
    //   51	77	77	java/io/IOException
    //   126	133	77	java/io/IOException
    //   184	191	77	java/io/IOException
    //   208	222	77	java/io/IOException
    //   147	176	176	finally
    //   198	208	176	finally
    //   43	49	191	finally
    //   51	77	191	finally
    //   126	133	191	finally
    //   184	191	191	finally
    //   208	222	191	finally
    //   133	143	316	finally
  }
  
  private void o()
  {
    if (b()) {}
    while (b == null) {
      return;
    }
    kg.a(3, a, "Downloader: finished -- success: " + l + " for url: " + c);
    b.a(this);
  }
  
  private boolean p()
  {
    return f != null;
  }
  
  private boolean q()
  {
    return (f != null) && (h) && (i > 1);
  }
  
  public void a(int paramInt)
  {
    e = paramInt;
  }
  
  public void a(am.a parama)
  {
    b = parama;
  }
  
  public void a(aq paramaq)
  {
    f = paramaq;
  }
  
  public void a(String paramString)
  {
    c = paramString;
  }
  
  public boolean a()
  {
    return l;
  }
  
  public boolean b()
  {
    return m;
  }
  
  public long c()
  {
    return g;
  }
  
  public void d()
  {
    js.a().b(new am.1(this));
  }
  
  public void e()
  {
    m = true;
    jq.a().a(this);
  }
  
  protected abstract OutputStream f();
  
  protected abstract void g();
  
  protected abstract void h();
}

/* Location:
 * Qualified Name:     com.flurry.sdk.am
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */