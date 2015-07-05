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
    //   23: invokestatic 52	com/estrongs/fs/impl/local/l:a	(Ljava/io/OutputStream;I)V
    //   26: aload 4
    //   28: invokestatic 55	com/estrongs/fs/impl/local/l:c	(Ljava/io/InputStream;)I
    //   31: istore_2
    //   32: iload_2
    //   33: ifeq +64 -> 97
    //   36: ldc 57
    //   38: new 59	java/lang/StringBuilder
    //   41: dup
    //   42: invokespecial 60	java/lang/StringBuilder:<init>	()V
    //   45: ldc 62
    //   47: invokevirtual 66	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   50: iload_2
    //   51: invokevirtual 69	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   54: invokevirtual 73	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   57: invokestatic 78	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   60: pop
    //   61: aload 4
    //   63: ifnull +8 -> 71
    //   66: aload 4
    //   68: invokevirtual 83	java/io/InputStream:close	()V
    //   71: aload 5
    //   73: ifnull +8 -> 81
    //   76: aload 5
    //   78: invokevirtual 86	java/io/OutputStream:close	()V
    //   81: aload_0
    //   82: getfield 21	com/estrongs/android/nativetool/a:e	Landroid/net/LocalSocket;
    //   85: invokevirtual 87	android/net/LocalSocket:close	()V
    //   88: aconst_null
    //   89: areturn
    //   90: astore_1
    //   91: aload_1
    //   92: invokevirtual 90	java/io/IOException:printStackTrace	()V
    //   95: aconst_null
    //   96: areturn
    //   97: new 92	com/estrongs/android/nativetool/b
    //   100: dup
    //   101: invokespecial 93	com/estrongs/android/nativetool/b:<init>	()V
    //   104: astore 6
    //   106: aload 6
    //   108: aload 4
    //   110: invokestatic 55	com/estrongs/fs/impl/local/l:c	(Ljava/io/InputStream;)I
    //   113: bipush 10
    //   115: imul
    //   116: putfield 94	com/estrongs/android/nativetool/b:b	I
    //   119: aload 6
    //   121: getfield 94	com/estrongs/android/nativetool/b:b	I
    //   124: ifne +10 -> 134
    //   127: aload 6
    //   129: bipush 100
    //   131: putfield 94	com/estrongs/android/nativetool/b:b	I
    //   134: aload 6
    //   136: aconst_null
    //   137: putfield 97	com/estrongs/android/nativetool/b:a	Landroid/graphics/Bitmap;
    //   140: iconst_0
    //   141: istore_2
    //   142: iload_2
    //   143: aload_0
    //   144: getfield 31	com/estrongs/android/nativetool/a:f	[B
    //   147: arraylength
    //   148: if_icmpge +77 -> 225
    //   151: aload 4
    //   153: aload_0
    //   154: getfield 31	com/estrongs/android/nativetool/a:f	[B
    //   157: iload_2
    //   158: aload_0
    //   159: getfield 31	com/estrongs/android/nativetool/a:f	[B
    //   162: arraylength
    //   163: iload_2
    //   164: isub
    //   165: invokevirtual 101	java/io/InputStream:read	([BII)I
    //   168: istore_3
    //   169: iload_3
    //   170: iconst_m1
    //   171: if_icmpne +47 -> 218
    //   174: ldc 57
    //   176: ldc 103
    //   178: invokestatic 78	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   181: pop
    //   182: aload 4
    //   184: ifnull +8 -> 192
    //   187: aload 4
    //   189: invokevirtual 83	java/io/InputStream:close	()V
    //   192: aload 5
    //   194: ifnull +8 -> 202
    //   197: aload 5
    //   199: invokevirtual 86	java/io/OutputStream:close	()V
    //   202: aload_0
    //   203: getfield 21	com/estrongs/android/nativetool/a:e	Landroid/net/LocalSocket;
    //   206: invokevirtual 87	android/net/LocalSocket:close	()V
    //   209: aconst_null
    //   210: areturn
    //   211: astore_1
    //   212: aload_1
    //   213: invokevirtual 90	java/io/IOException:printStackTrace	()V
    //   216: aconst_null
    //   217: areturn
    //   218: iload_2
    //   219: iload_3
    //   220: iadd
    //   221: istore_2
    //   222: goto -80 -> 142
    //   225: aload_0
    //   226: getfield 31	com/estrongs/android/nativetool/a:f	[B
    //   229: invokestatic 109	java/nio/ByteBuffer:wrap	([B)Ljava/nio/ByteBuffer;
    //   232: astore 7
    //   234: aload_1
    //   235: ifnull +18 -> 253
    //   238: aload_1
    //   239: aload 7
    //   241: invokevirtual 115	android/graphics/Bitmap:copyPixelsFromBuffer	(Ljava/nio/Buffer;)V
    //   244: aload 6
    //   246: aload_1
    //   247: putfield 97	com/estrongs/android/nativetool/b:a	Landroid/graphics/Bitmap;
    //   250: goto +173 -> 423
    //   253: aload 6
    //   255: aload_0
    //   256: getfield 25	com/estrongs/android/nativetool/a:b	I
    //   259: aload_0
    //   260: getfield 27	com/estrongs/android/nativetool/a:c	I
    //   263: getstatic 121	android/graphics/Bitmap$Config:ARGB_8888	Landroid/graphics/Bitmap$Config;
    //   266: invokestatic 125	android/graphics/Bitmap:createBitmap	(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    //   269: putfield 97	com/estrongs/android/nativetool/b:a	Landroid/graphics/Bitmap;
    //   272: aload 6
    //   274: getfield 97	com/estrongs/android/nativetool/b:a	Landroid/graphics/Bitmap;
    //   277: aload 7
    //   279: invokevirtual 115	android/graphics/Bitmap:copyPixelsFromBuffer	(Ljava/nio/Buffer;)V
    //   282: goto +141 -> 423
    //   285: astore_1
    //   286: aload_1
    //   287: invokevirtual 126	java/lang/Exception:printStackTrace	()V
    //   290: goto +133 -> 423
    //   293: astore 6
    //   295: aload 5
    //   297: astore_1
    //   298: aload 6
    //   300: astore 5
    //   302: aload 5
    //   304: invokevirtual 90	java/io/IOException:printStackTrace	()V
    //   307: aload 4
    //   309: ifnull +8 -> 317
    //   312: aload 4
    //   314: invokevirtual 83	java/io/InputStream:close	()V
    //   317: aload_1
    //   318: ifnull +7 -> 325
    //   321: aload_1
    //   322: invokevirtual 86	java/io/OutputStream:close	()V
    //   325: aload_0
    //   326: getfield 21	com/estrongs/android/nativetool/a:e	Landroid/net/LocalSocket;
    //   329: invokevirtual 87	android/net/LocalSocket:close	()V
    //   332: aconst_null
    //   333: areturn
    //   334: astore_1
    //   335: aload_1
    //   336: invokevirtual 90	java/io/IOException:printStackTrace	()V
    //   339: aconst_null
    //   340: areturn
    //   341: astore_1
    //   342: aconst_null
    //   343: astore 5
    //   345: aconst_null
    //   346: astore 4
    //   348: aload 4
    //   350: ifnull +8 -> 358
    //   353: aload 4
    //   355: invokevirtual 83	java/io/InputStream:close	()V
    //   358: aload 5
    //   360: ifnull +8 -> 368
    //   363: aload 5
    //   365: invokevirtual 86	java/io/OutputStream:close	()V
    //   368: aload_0
    //   369: getfield 21	com/estrongs/android/nativetool/a:e	Landroid/net/LocalSocket;
    //   372: invokevirtual 87	android/net/LocalSocket:close	()V
    //   375: aload_1
    //   376: athrow
    //   377: astore_1
    //   378: aload_1
    //   379: invokevirtual 90	java/io/IOException:printStackTrace	()V
    //   382: aconst_null
    //   383: areturn
    //   384: astore_1
    //   385: aconst_null
    //   386: astore 5
    //   388: goto -40 -> 348
    //   391: astore_1
    //   392: goto -44 -> 348
    //   395: astore 6
    //   397: aload_1
    //   398: astore 5
    //   400: aload 6
    //   402: astore_1
    //   403: goto -55 -> 348
    //   406: astore 5
    //   408: aconst_null
    //   409: astore_1
    //   410: aconst_null
    //   411: astore 4
    //   413: goto -111 -> 302
    //   416: astore 5
    //   418: aconst_null
    //   419: astore_1
    //   420: goto -118 -> 302
    //   423: aload 6
    //   425: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	426	0	this	a
    //   0	426	1	paramBitmap	android.graphics.Bitmap
    //   31	191	2	i	int
    //   168	53	3	j	int
    //   7	405	4	localInputStream	java.io.InputStream
    //   16	383	5	localObject	Object
    //   406	1	5	localIOException1	java.io.IOException
    //   416	1	5	localIOException2	java.io.IOException
    //   104	169	6	localb1	b
    //   293	6	6	localIOException3	java.io.IOException
    //   395	29	6	localb2	b
    //   232	46	7	localByteBuffer	java.nio.ByteBuffer
    // Exception table:
    //   from	to	target	type
    //   66	71	90	java/io/IOException
    //   76	81	90	java/io/IOException
    //   81	88	90	java/io/IOException
    //   187	192	211	java/io/IOException
    //   197	202	211	java/io/IOException
    //   202	209	211	java/io/IOException
    //   238	250	285	java/lang/Exception
    //   253	282	285	java/lang/Exception
    //   18	32	293	java/io/IOException
    //   36	61	293	java/io/IOException
    //   97	134	293	java/io/IOException
    //   134	140	293	java/io/IOException
    //   142	169	293	java/io/IOException
    //   174	182	293	java/io/IOException
    //   225	234	293	java/io/IOException
    //   238	250	293	java/io/IOException
    //   253	282	293	java/io/IOException
    //   286	290	293	java/io/IOException
    //   312	317	334	java/io/IOException
    //   321	325	334	java/io/IOException
    //   325	332	334	java/io/IOException
    //   0	9	341	finally
    //   353	358	377	java/io/IOException
    //   363	368	377	java/io/IOException
    //   368	375	377	java/io/IOException
    //   9	18	384	finally
    //   18	32	391	finally
    //   36	61	391	finally
    //   97	134	391	finally
    //   134	140	391	finally
    //   142	169	391	finally
    //   174	182	391	finally
    //   225	234	391	finally
    //   238	250	391	finally
    //   253	282	391	finally
    //   286	290	391	finally
    //   302	307	395	finally
    //   0	9	406	java/io/IOException
    //   9	18	416	java/io/IOException
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