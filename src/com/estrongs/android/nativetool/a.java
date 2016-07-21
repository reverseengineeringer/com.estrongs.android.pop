package com.estrongs.android.nativetool;

import android.net.LocalSocket;

public class a
{
  public String a = null;
  public int b = 0;
  public int c = 0;
  public int d = 0;
  private LocalSocket e = null;
  private byte[] f = null;
  
  public a(LocalSocket paramLocalSocket, int paramInt1, int paramInt2)
  {
    e = paramLocalSocket;
    b = paramInt1;
    c = paramInt2;
    f = new byte[b * c * 4];
  }
  
  /* Error */
  public b a(android.graphics.Bitmap paramBitmap)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 21	com/estrongs/android/nativetool/a:e	Landroid/net/LocalSocket;
    //   4: invokevirtual 43	android/net/LocalSocket:getInputStream	()Ljava/io/InputStream;
    //   7: astore 4
    //   9: aload_0
    //   10: getfield 21	com/estrongs/android/nativetool/a:e	Landroid/net/LocalSocket;
    //   13: invokevirtual 47	android/net/LocalSocket:getOutputStream	()Ljava/io/OutputStream;
    //   16: astore 5
    //   18: aload 5
    //   20: sipush 255
    //   23: invokestatic 52	com/estrongs/fs/impl/local/m:a	(Ljava/io/OutputStream;I)V
    //   26: aload 4
    //   28: invokestatic 55	com/estrongs/fs/impl/local/m:c	(Ljava/io/InputStream;)I
    //   31: istore_2
    //   32: iload_2
    //   33: ifeq +63 -> 96
    //   36: ldc 57
    //   38: new 59	java/lang/StringBuilder
    //   41: dup
    //   42: invokespecial 60	java/lang/StringBuilder:<init>	()V
    //   45: ldc 62
    //   47: invokevirtual 66	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   50: iload_2
    //   51: invokevirtual 69	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   54: invokevirtual 73	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   57: invokestatic 78	com/estrongs/android/util/l:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   60: aload 4
    //   62: ifnull +8 -> 70
    //   65: aload 4
    //   67: invokevirtual 83	java/io/InputStream:close	()V
    //   70: aload 5
    //   72: ifnull +8 -> 80
    //   75: aload 5
    //   77: invokevirtual 86	java/io/OutputStream:close	()V
    //   80: aload_0
    //   81: getfield 21	com/estrongs/android/nativetool/a:e	Landroid/net/LocalSocket;
    //   84: invokevirtual 87	android/net/LocalSocket:close	()V
    //   87: aconst_null
    //   88: areturn
    //   89: astore_1
    //   90: aload_1
    //   91: invokevirtual 90	java/io/IOException:printStackTrace	()V
    //   94: aconst_null
    //   95: areturn
    //   96: new 92	com/estrongs/android/nativetool/b
    //   99: dup
    //   100: invokespecial 93	com/estrongs/android/nativetool/b:<init>	()V
    //   103: astore 6
    //   105: aload 6
    //   107: aload 4
    //   109: invokestatic 55	com/estrongs/fs/impl/local/m:c	(Ljava/io/InputStream;)I
    //   112: bipush 10
    //   114: imul
    //   115: putfield 94	com/estrongs/android/nativetool/b:b	I
    //   118: aload 6
    //   120: getfield 94	com/estrongs/android/nativetool/b:b	I
    //   123: ifne +10 -> 133
    //   126: aload 6
    //   128: bipush 100
    //   130: putfield 94	com/estrongs/android/nativetool/b:b	I
    //   133: aload 6
    //   135: aconst_null
    //   136: putfield 97	com/estrongs/android/nativetool/b:a	Landroid/graphics/Bitmap;
    //   139: iconst_0
    //   140: istore_2
    //   141: iload_2
    //   142: aload_0
    //   143: getfield 31	com/estrongs/android/nativetool/a:f	[B
    //   146: arraylength
    //   147: if_icmpge +76 -> 223
    //   150: aload 4
    //   152: aload_0
    //   153: getfield 31	com/estrongs/android/nativetool/a:f	[B
    //   156: iload_2
    //   157: aload_0
    //   158: getfield 31	com/estrongs/android/nativetool/a:f	[B
    //   161: arraylength
    //   162: iload_2
    //   163: isub
    //   164: invokevirtual 101	java/io/InputStream:read	([BII)I
    //   167: istore_3
    //   168: iload_3
    //   169: iconst_m1
    //   170: if_icmpne +46 -> 216
    //   173: ldc 57
    //   175: ldc 103
    //   177: invokestatic 78	com/estrongs/android/util/l:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   180: aload 4
    //   182: ifnull +8 -> 190
    //   185: aload 4
    //   187: invokevirtual 83	java/io/InputStream:close	()V
    //   190: aload 5
    //   192: ifnull +8 -> 200
    //   195: aload 5
    //   197: invokevirtual 86	java/io/OutputStream:close	()V
    //   200: aload_0
    //   201: getfield 21	com/estrongs/android/nativetool/a:e	Landroid/net/LocalSocket;
    //   204: invokevirtual 87	android/net/LocalSocket:close	()V
    //   207: aconst_null
    //   208: areturn
    //   209: astore_1
    //   210: aload_1
    //   211: invokevirtual 90	java/io/IOException:printStackTrace	()V
    //   214: aconst_null
    //   215: areturn
    //   216: iload_2
    //   217: iload_3
    //   218: iadd
    //   219: istore_2
    //   220: goto -79 -> 141
    //   223: aload_0
    //   224: getfield 31	com/estrongs/android/nativetool/a:f	[B
    //   227: invokestatic 109	java/nio/ByteBuffer:wrap	([B)Ljava/nio/ByteBuffer;
    //   230: astore 7
    //   232: aload_1
    //   233: ifnull +18 -> 251
    //   236: aload_1
    //   237: aload 7
    //   239: invokevirtual 115	android/graphics/Bitmap:copyPixelsFromBuffer	(Ljava/nio/Buffer;)V
    //   242: aload 6
    //   244: aload_1
    //   245: putfield 97	com/estrongs/android/nativetool/b:a	Landroid/graphics/Bitmap;
    //   248: goto +173 -> 421
    //   251: aload 6
    //   253: aload_0
    //   254: getfield 25	com/estrongs/android/nativetool/a:b	I
    //   257: aload_0
    //   258: getfield 27	com/estrongs/android/nativetool/a:c	I
    //   261: getstatic 121	android/graphics/Bitmap$Config:ARGB_8888	Landroid/graphics/Bitmap$Config;
    //   264: invokestatic 125	android/graphics/Bitmap:createBitmap	(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    //   267: putfield 97	com/estrongs/android/nativetool/b:a	Landroid/graphics/Bitmap;
    //   270: aload 6
    //   272: getfield 97	com/estrongs/android/nativetool/b:a	Landroid/graphics/Bitmap;
    //   275: aload 7
    //   277: invokevirtual 115	android/graphics/Bitmap:copyPixelsFromBuffer	(Ljava/nio/Buffer;)V
    //   280: goto +141 -> 421
    //   283: astore_1
    //   284: aload_1
    //   285: invokevirtual 126	java/lang/Exception:printStackTrace	()V
    //   288: goto +133 -> 421
    //   291: astore 6
    //   293: aload 5
    //   295: astore_1
    //   296: aload 6
    //   298: astore 5
    //   300: aload 5
    //   302: invokevirtual 90	java/io/IOException:printStackTrace	()V
    //   305: aload 4
    //   307: ifnull +8 -> 315
    //   310: aload 4
    //   312: invokevirtual 83	java/io/InputStream:close	()V
    //   315: aload_1
    //   316: ifnull +7 -> 323
    //   319: aload_1
    //   320: invokevirtual 86	java/io/OutputStream:close	()V
    //   323: aload_0
    //   324: getfield 21	com/estrongs/android/nativetool/a:e	Landroid/net/LocalSocket;
    //   327: invokevirtual 87	android/net/LocalSocket:close	()V
    //   330: aconst_null
    //   331: areturn
    //   332: astore_1
    //   333: aload_1
    //   334: invokevirtual 90	java/io/IOException:printStackTrace	()V
    //   337: aconst_null
    //   338: areturn
    //   339: astore_1
    //   340: aconst_null
    //   341: astore 5
    //   343: aconst_null
    //   344: astore 4
    //   346: aload 4
    //   348: ifnull +8 -> 356
    //   351: aload 4
    //   353: invokevirtual 83	java/io/InputStream:close	()V
    //   356: aload 5
    //   358: ifnull +8 -> 366
    //   361: aload 5
    //   363: invokevirtual 86	java/io/OutputStream:close	()V
    //   366: aload_0
    //   367: getfield 21	com/estrongs/android/nativetool/a:e	Landroid/net/LocalSocket;
    //   370: invokevirtual 87	android/net/LocalSocket:close	()V
    //   373: aload_1
    //   374: athrow
    //   375: astore_1
    //   376: aload_1
    //   377: invokevirtual 90	java/io/IOException:printStackTrace	()V
    //   380: aconst_null
    //   381: areturn
    //   382: astore_1
    //   383: aconst_null
    //   384: astore 5
    //   386: goto -40 -> 346
    //   389: astore_1
    //   390: goto -44 -> 346
    //   393: astore 6
    //   395: aload_1
    //   396: astore 5
    //   398: aload 6
    //   400: astore_1
    //   401: goto -55 -> 346
    //   404: astore 5
    //   406: aconst_null
    //   407: astore_1
    //   408: aconst_null
    //   409: astore 4
    //   411: goto -111 -> 300
    //   414: astore 5
    //   416: aconst_null
    //   417: astore_1
    //   418: goto -118 -> 300
    //   421: aload 6
    //   423: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	424	0	this	a
    //   0	424	1	paramBitmap	android.graphics.Bitmap
    //   31	189	2	i	int
    //   167	52	3	j	int
    //   7	403	4	localInputStream	java.io.InputStream
    //   16	381	5	localObject	Object
    //   404	1	5	localIOException1	java.io.IOException
    //   414	1	5	localIOException2	java.io.IOException
    //   103	168	6	localb1	b
    //   291	6	6	localIOException3	java.io.IOException
    //   393	29	6	localb2	b
    //   230	46	7	localByteBuffer	java.nio.ByteBuffer
    // Exception table:
    //   from	to	target	type
    //   65	70	89	java/io/IOException
    //   75	80	89	java/io/IOException
    //   80	87	89	java/io/IOException
    //   185	190	209	java/io/IOException
    //   195	200	209	java/io/IOException
    //   200	207	209	java/io/IOException
    //   236	248	283	java/lang/Exception
    //   251	280	283	java/lang/Exception
    //   18	32	291	java/io/IOException
    //   36	60	291	java/io/IOException
    //   96	133	291	java/io/IOException
    //   133	139	291	java/io/IOException
    //   141	168	291	java/io/IOException
    //   173	180	291	java/io/IOException
    //   223	232	291	java/io/IOException
    //   236	248	291	java/io/IOException
    //   251	280	291	java/io/IOException
    //   284	288	291	java/io/IOException
    //   310	315	332	java/io/IOException
    //   319	323	332	java/io/IOException
    //   323	330	332	java/io/IOException
    //   0	9	339	finally
    //   351	356	375	java/io/IOException
    //   361	366	375	java/io/IOException
    //   366	373	375	java/io/IOException
    //   9	18	382	finally
    //   18	32	389	finally
    //   36	60	389	finally
    //   96	133	389	finally
    //   133	139	389	finally
    //   141	168	389	finally
    //   173	180	389	finally
    //   223	232	389	finally
    //   236	248	389	finally
    //   251	280	389	finally
    //   284	288	389	finally
    //   300	305	393	finally
    //   0	9	404	java/io/IOException
    //   9	18	414	java/io/IOException
  }
  
  public void a()
  {
    try
    {
      e.close();
      f = null;
      return;
    }
    catch (Exception localException)
    {
      for (;;) {}
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.nativetool.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */