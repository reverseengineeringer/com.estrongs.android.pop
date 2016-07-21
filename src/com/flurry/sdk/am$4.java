package com.flurry.sdk;

import java.util.List;

class am$4
  extends kp.b
{
  am$4(am paramam, String paramString1, String paramString2) {}
  
  public void a(kp paramkp)
  {
    if (c.b()) {
      return;
    }
    int i = paramkp.h();
    kg.a(3, am.i(), "Downloader: Download status code is:" + i + " for url: " + am.f(c) + " chunk: " + am.l(c));
    Object localObject2 = null;
    List localList = paramkp.b("Content-Range");
    Object localObject1 = localObject2;
    if (localList != null)
    {
      localObject1 = localObject2;
      if (!localList.isEmpty())
      {
        localObject1 = (String)localList.get(0);
        kg.a(3, am.i(), "Downloader: Content range is:" + (String)localObject1 + " for url: " + am.f(c) + " chunk: " + am.l(c));
      }
    }
    if ((paramkp.f()) && (i == 206) && (localObject1 != null) && (((String)localObject1).startsWith(b.replaceAll("=", " "))))
    {
      am.m(c);
      js.a().b(new am.4.1(this));
      return;
    }
    js.a().b(new am.4.2(this));
  }
  
  /* Error */
  public void a(kp paramkp, java.io.InputStream paramInputStream)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: aconst_null
    //   3: astore 4
    //   5: aload_0
    //   6: getfield 13	com/flurry/sdk/am$4:c	Lcom/flurry/sdk/am;
    //   9: invokevirtual 27	com/flurry/sdk/am:b	()Z
    //   12: ifeq +13 -> 25
    //   15: new 123	java/io/IOException
    //   18: dup
    //   19: ldc 125
    //   21: invokespecial 128	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   24: athrow
    //   25: aload_0
    //   26: getfield 13	com/flurry/sdk/am$4:c	Lcom/flurry/sdk/am;
    //   29: invokestatic 132	com/flurry/sdk/am:k	(Lcom/flurry/sdk/am;)Lcom/flurry/sdk/aq;
    //   32: aload_0
    //   33: getfield 15	com/flurry/sdk/am$4:a	Ljava/lang/String;
    //   36: invokevirtual 137	com/flurry/sdk/aq:b	(Ljava/lang/String;)Lcom/flurry/sdk/aq$c;
    //   39: astore 5
    //   41: aload 4
    //   43: astore_1
    //   44: aload 5
    //   46: ifnull +41 -> 87
    //   49: new 139	com/flurry/sdk/at
    //   52: dup
    //   53: aload_2
    //   54: aload_0
    //   55: getfield 13	com/flurry/sdk/am$4:c	Lcom/flurry/sdk/am;
    //   58: invokestatic 143	com/flurry/sdk/am:e	(Lcom/flurry/sdk/am;)J
    //   61: invokespecial 146	com/flurry/sdk/at:<init>	(Ljava/io/InputStream;J)V
    //   64: astore_2
    //   65: aload_2
    //   66: aload 5
    //   68: invokevirtual 151	com/flurry/sdk/aq$c:a	()Ljava/io/OutputStream;
    //   71: invokestatic 156	com/flurry/sdk/lt:a	(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    //   74: pop2
    //   75: aload_2
    //   76: invokestatic 159	com/flurry/sdk/lt:a	(Ljava/io/Closeable;)V
    //   79: aload 5
    //   81: invokestatic 159	com/flurry/sdk/lt:a	(Ljava/io/Closeable;)V
    //   84: aload 4
    //   86: astore_1
    //   87: aload_1
    //   88: ifnull +49 -> 137
    //   91: aload_0
    //   92: getfield 13	com/flurry/sdk/am$4:c	Lcom/flurry/sdk/am;
    //   95: invokestatic 132	com/flurry/sdk/am:k	(Lcom/flurry/sdk/am;)Lcom/flurry/sdk/aq;
    //   98: aload_0
    //   99: getfield 15	com/flurry/sdk/am$4:a	Ljava/lang/String;
    //   102: invokevirtual 161	com/flurry/sdk/aq:c	(Ljava/lang/String;)Z
    //   105: pop
    //   106: aload_1
    //   107: athrow
    //   108: astore_1
    //   109: aconst_null
    //   110: astore_2
    //   111: aload_2
    //   112: invokestatic 159	com/flurry/sdk/lt:a	(Ljava/io/Closeable;)V
    //   115: aload 5
    //   117: invokestatic 159	com/flurry/sdk/lt:a	(Ljava/io/Closeable;)V
    //   120: goto -33 -> 87
    //   123: astore_1
    //   124: aload_3
    //   125: astore_2
    //   126: aload_2
    //   127: invokestatic 159	com/flurry/sdk/lt:a	(Ljava/io/Closeable;)V
    //   130: aload 5
    //   132: invokestatic 159	com/flurry/sdk/lt:a	(Ljava/io/Closeable;)V
    //   135: aload_1
    //   136: athrow
    //   137: return
    //   138: astore_1
    //   139: goto -13 -> 126
    //   142: astore_1
    //   143: goto -32 -> 111
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	146	0	this	4
    //   0	146	1	paramkp	kp
    //   0	146	2	paramInputStream	java.io.InputStream
    //   1	124	3	localObject1	Object
    //   3	82	4	localObject2	Object
    //   39	92	5	localc	aq.c
    // Exception table:
    //   from	to	target	type
    //   49	65	108	java/io/IOException
    //   49	65	123	finally
    //   65	75	138	finally
    //   65	75	142	java/io/IOException
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.am.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */