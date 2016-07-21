package com.estrongs.android.nativetool;

import android.net.LocalSocket;
import com.estrongs.android.util.ap;
import com.estrongs.fs.impl.local.m;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;

public class c
{
  public static LocalSocket a()
  {
    return a(true);
  }
  
  /* Error */
  private static LocalSocket a(boolean paramBoolean)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: invokestatic 18	com/estrongs/fs/impl/local/m:d	()Ljava/lang/String;
    //   6: astore 4
    //   8: new 20	java/lang/StringBuilder
    //   11: dup
    //   12: invokespecial 24	java/lang/StringBuilder:<init>	()V
    //   15: aload 4
    //   17: invokestatic 30	com/estrongs/android/util/ap:bB	(Ljava/lang/String;)Ljava/lang/String;
    //   20: invokestatic 30	com/estrongs/android/util/ap:bB	(Ljava/lang/String;)Ljava/lang/String;
    //   23: invokevirtual 34	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   26: ldc 36
    //   28: invokevirtual 34	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   31: invokevirtual 39	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   34: astore 5
    //   36: new 41	android/net/LocalSocketAddress
    //   39: dup
    //   40: aload 5
    //   42: getstatic 47	android/net/LocalSocketAddress$Namespace:ABSTRACT	Landroid/net/LocalSocketAddress$Namespace;
    //   45: invokespecial 50	android/net/LocalSocketAddress:<init>	(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V
    //   48: astore 6
    //   50: new 52	android/net/LocalSocket
    //   53: dup
    //   54: invokespecial 53	android/net/LocalSocket:<init>	()V
    //   57: astore_3
    //   58: aload_3
    //   59: aload 6
    //   61: invokevirtual 57	android/net/LocalSocket:connect	(Landroid/net/LocalSocketAddress;)V
    //   64: aload_3
    //   65: ifnull +118 -> 183
    //   68: aload_3
    //   69: invokevirtual 61	android/net/LocalSocket:getOutputStream	()Ljava/io/OutputStream;
    //   72: astore_2
    //   73: aload_3
    //   74: invokevirtual 65	android/net/LocalSocket:getInputStream	()Ljava/io/InputStream;
    //   77: astore 7
    //   79: aload_2
    //   80: bipush 80
    //   82: invokestatic 68	com/estrongs/fs/impl/local/m:a	(Ljava/io/OutputStream;I)V
    //   85: aload 7
    //   87: invokestatic 72	com/estrongs/fs/impl/local/m:c	(Ljava/io/InputStream;)I
    //   90: bipush 39
    //   92: if_icmpne +13 -> 105
    //   95: invokestatic 76	com/estrongs/fs/impl/local/m:m	()Z
    //   98: istore_1
    //   99: aload_3
    //   100: astore_2
    //   101: iload_1
    //   102: ifne +59 -> 161
    //   105: aload_3
    //   106: invokevirtual 79	android/net/LocalSocket:close	()V
    //   109: new 52	android/net/LocalSocket
    //   112: dup
    //   113: invokespecial 53	android/net/LocalSocket:<init>	()V
    //   116: astore_2
    //   117: aload_2
    //   118: aload 6
    //   120: invokevirtual 57	android/net/LocalSocket:connect	(Landroid/net/LocalSocketAddress;)V
    //   123: aload_2
    //   124: invokevirtual 61	android/net/LocalSocket:getOutputStream	()Ljava/io/OutputStream;
    //   127: bipush 100
    //   129: invokestatic 68	com/estrongs/fs/impl/local/m:a	(Ljava/io/OutputStream;I)V
    //   132: aload_2
    //   133: invokevirtual 79	android/net/LocalSocket:close	()V
    //   136: invokestatic 84	com/estrongs/android/pop/FexApplication:a	()Lcom/estrongs/android/pop/FexApplication;
    //   139: invokestatic 87	com/estrongs/fs/impl/local/m:a	(Landroid/content/Context;)Z
    //   142: ifeq +30 -> 172
    //   145: iload_0
    //   146: ifeq +26 -> 172
    //   149: aload 4
    //   151: aload 5
    //   153: invokestatic 90	com/estrongs/android/nativetool/c:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   156: iconst_0
    //   157: invokestatic 9	com/estrongs/android/nativetool/c:a	(Z)Landroid/net/LocalSocket;
    //   160: astore_2
    //   161: ldc 2
    //   163: monitorexit
    //   164: aload_2
    //   165: areturn
    //   166: astore_2
    //   167: aconst_null
    //   168: astore_3
    //   169: goto -105 -> 64
    //   172: aconst_null
    //   173: astore_2
    //   174: goto -13 -> 161
    //   177: astore_2
    //   178: aconst_null
    //   179: astore_2
    //   180: goto -19 -> 161
    //   183: iload_0
    //   184: ifne +8 -> 192
    //   187: aconst_null
    //   188: astore_2
    //   189: goto -28 -> 161
    //   192: invokestatic 93	com/estrongs/fs/impl/local/m:h	()Z
    //   195: ifeq +17 -> 212
    //   198: invokestatic 84	com/estrongs/android/pop/FexApplication:a	()Lcom/estrongs/android/pop/FexApplication;
    //   201: invokestatic 87	com/estrongs/fs/impl/local/m:a	(Landroid/content/Context;)Z
    //   204: ifne +8 -> 212
    //   207: aconst_null
    //   208: astore_2
    //   209: goto -48 -> 161
    //   212: aload 4
    //   214: aload 5
    //   216: invokestatic 90	com/estrongs/android/nativetool/c:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   219: iconst_0
    //   220: invokestatic 9	com/estrongs/android/nativetool/c:a	(Z)Landroid/net/LocalSocket;
    //   223: astore_2
    //   224: goto -63 -> 161
    //   227: astore_2
    //   228: aconst_null
    //   229: astore_2
    //   230: goto -69 -> 161
    //   233: astore_2
    //   234: ldc 2
    //   236: monitorexit
    //   237: aload_2
    //   238: athrow
    //   239: astore_2
    //   240: goto -104 -> 136
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	243	0	paramBoolean	boolean
    //   98	4	1	bool	boolean
    //   72	93	2	localObject1	Object
    //   166	1	2	localException1	Exception
    //   173	1	2	localObject2	Object
    //   177	1	2	localException2	Exception
    //   179	45	2	localLocalSocket1	LocalSocket
    //   227	1	2	localException3	Exception
    //   229	1	2	localObject3	Object
    //   233	5	2	localObject4	Object
    //   239	1	2	localException4	Exception
    //   57	112	3	localLocalSocket2	LocalSocket
    //   6	207	4	str1	String
    //   34	181	5	str2	String
    //   48	71	6	localLocalSocketAddress	android.net.LocalSocketAddress
    //   77	9	7	localInputStream	java.io.InputStream
    // Exception table:
    //   from	to	target	type
    //   58	64	166	java/lang/Exception
    //   68	99	177	java/lang/Exception
    //   136	145	177	java/lang/Exception
    //   149	161	177	java/lang/Exception
    //   192	207	227	java/lang/Exception
    //   212	224	227	java/lang/Exception
    //   3	58	233	finally
    //   58	64	233	finally
    //   68	99	233	finally
    //   105	136	233	finally
    //   136	145	233	finally
    //   149	161	233	finally
    //   192	207	233	finally
    //   212	224	233	finally
    //   105	136	239	java/lang/Exception
  }
  
  /* Error */
  public static a a(String paramString)
  {
    // Byte code:
    //   0: invokestatic 100	com/estrongs/android/nativetool/c:a	()Landroid/net/LocalSocket;
    //   3: astore 5
    //   5: aload 5
    //   7: ifnonnull +5 -> 12
    //   10: aconst_null
    //   11: areturn
    //   12: aload 5
    //   14: invokevirtual 65	android/net/LocalSocket:getInputStream	()Ljava/io/InputStream;
    //   17: astore_3
    //   18: aload 5
    //   20: invokevirtual 61	android/net/LocalSocket:getOutputStream	()Ljava/io/OutputStream;
    //   23: astore 4
    //   25: aload 4
    //   27: sipush 10001
    //   30: invokestatic 68	com/estrongs/fs/impl/local/m:a	(Ljava/io/OutputStream;I)V
    //   33: aload 4
    //   35: aload_0
    //   36: invokestatic 103	com/estrongs/fs/impl/local/m:a	(Ljava/io/OutputStream;Ljava/lang/String;)V
    //   39: aload_3
    //   40: invokestatic 72	com/estrongs/fs/impl/local/m:c	(Ljava/io/InputStream;)I
    //   43: istore_1
    //   44: iload_1
    //   45: ifeq +31 -> 76
    //   48: aload_3
    //   49: ifnull +7 -> 56
    //   52: aload_3
    //   53: invokevirtual 106	java/io/InputStream:close	()V
    //   56: aload 4
    //   58: ifnull +8 -> 66
    //   61: aload 4
    //   63: invokevirtual 109	java/io/OutputStream:close	()V
    //   66: aload 5
    //   68: invokevirtual 79	android/net/LocalSocket:close	()V
    //   71: aconst_null
    //   72: areturn
    //   73: astore_0
    //   74: aconst_null
    //   75: areturn
    //   76: aload_3
    //   77: invokestatic 72	com/estrongs/fs/impl/local/m:c	(Ljava/io/InputStream;)I
    //   80: istore_1
    //   81: aload_3
    //   82: invokestatic 72	com/estrongs/fs/impl/local/m:c	(Ljava/io/InputStream;)I
    //   85: istore_2
    //   86: new 111	com/estrongs/android/nativetool/a
    //   89: dup
    //   90: aload 5
    //   92: iload_1
    //   93: iload_2
    //   94: invokespecial 114	com/estrongs/android/nativetool/a:<init>	(Landroid/net/LocalSocket;II)V
    //   97: astore 6
    //   99: aload 6
    //   101: aload_0
    //   102: putfield 117	com/estrongs/android/nativetool/a:a	Ljava/lang/String;
    //   105: aload 6
    //   107: aload_3
    //   108: invokestatic 72	com/estrongs/fs/impl/local/m:c	(Ljava/io/InputStream;)I
    //   111: putfield 120	com/estrongs/android/nativetool/a:d	I
    //   114: aload 6
    //   116: areturn
    //   117: astore_0
    //   118: aload_3
    //   119: ifnull +7 -> 126
    //   122: aload_3
    //   123: invokevirtual 106	java/io/InputStream:close	()V
    //   126: aload 4
    //   128: ifnull +8 -> 136
    //   131: aload 4
    //   133: invokevirtual 109	java/io/OutputStream:close	()V
    //   136: aload 5
    //   138: invokevirtual 79	android/net/LocalSocket:close	()V
    //   141: aconst_null
    //   142: areturn
    //   143: astore_0
    //   144: aconst_null
    //   145: areturn
    //   146: astore_0
    //   147: aconst_null
    //   148: astore_0
    //   149: aconst_null
    //   150: astore_3
    //   151: aload_3
    //   152: ifnull +7 -> 159
    //   155: aload_3
    //   156: invokevirtual 106	java/io/InputStream:close	()V
    //   159: aload_0
    //   160: ifnull +7 -> 167
    //   163: aload_0
    //   164: invokevirtual 109	java/io/OutputStream:close	()V
    //   167: aload 5
    //   169: invokevirtual 79	android/net/LocalSocket:close	()V
    //   172: aconst_null
    //   173: areturn
    //   174: astore_0
    //   175: aconst_null
    //   176: areturn
    //   177: astore_0
    //   178: aconst_null
    //   179: astore 4
    //   181: aconst_null
    //   182: astore_3
    //   183: aload_3
    //   184: ifnull +7 -> 191
    //   187: aload_3
    //   188: invokevirtual 106	java/io/InputStream:close	()V
    //   191: aload 4
    //   193: ifnull +8 -> 201
    //   196: aload 4
    //   198: invokevirtual 109	java/io/OutputStream:close	()V
    //   201: aload 5
    //   203: invokevirtual 79	android/net/LocalSocket:close	()V
    //   206: aload_0
    //   207: athrow
    //   208: astore_0
    //   209: aconst_null
    //   210: areturn
    //   211: astore_0
    //   212: aconst_null
    //   213: astore 4
    //   215: goto -32 -> 183
    //   218: astore_0
    //   219: goto -36 -> 183
    //   222: astore_0
    //   223: aconst_null
    //   224: astore_0
    //   225: goto -74 -> 151
    //   228: astore_0
    //   229: aload 4
    //   231: astore_0
    //   232: goto -81 -> 151
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	235	0	paramString	String
    //   43	50	1	i	int
    //   85	9	2	j	int
    //   17	171	3	localInputStream	java.io.InputStream
    //   23	207	4	localOutputStream	OutputStream
    //   3	199	5	localLocalSocket	LocalSocket
    //   97	18	6	locala	a
    // Exception table:
    //   from	to	target	type
    //   52	56	73	java/io/IOException
    //   61	66	73	java/io/IOException
    //   66	71	73	java/io/IOException
    //   86	114	117	java/lang/OutOfMemoryError
    //   122	126	143	java/io/IOException
    //   131	136	143	java/io/IOException
    //   136	141	143	java/io/IOException
    //   12	18	146	java/io/IOException
    //   155	159	174	java/io/IOException
    //   163	167	174	java/io/IOException
    //   167	172	174	java/io/IOException
    //   12	18	177	finally
    //   187	191	208	java/io/IOException
    //   196	201	208	java/io/IOException
    //   201	206	208	java/io/IOException
    //   18	25	211	finally
    //   25	44	218	finally
    //   76	86	218	finally
    //   86	114	218	finally
    //   18	25	222	java/io/IOException
    //   25	44	228	java/io/IOException
    //   76	86	228	java/io/IOException
    //   86	114	228	java/io/IOException
  }
  
  private static void a(String paramString1, String paramString2)
  {
    paramString2 = new ProcessBuilder(new String[] { paramString1, "39623", paramString2 });
    paramString2.redirectErrorStream(true);
    try
    {
      paramString2.directory(new File(ap.bB(paramString1)));
      try
      {
        paramString2.start();
        Thread.sleep(2000L);
        return;
      }
      catch (Exception paramString1) {}
    }
    catch (Exception paramString1)
    {
      for (;;) {}
    }
  }
  
  public static boolean a(LocalSocket paramLocalSocket)
  {
    if (paramLocalSocket == null) {}
    for (;;)
    {
      return false;
      try
      {
        OutputStream localOutputStream = paramLocalSocket.getOutputStream();
        paramLocalSocket = paramLocalSocket.getInputStream();
        m.a(localOutputStream, 10005);
        int i = m.c(paramLocalSocket);
        if (i == 0) {
          return true;
        }
      }
      catch (Exception paramLocalSocket) {}
    }
    return false;
  }
  
  public static boolean a(LocalSocket paramLocalSocket, String paramString)
  {
    if (paramLocalSocket == null) {
      throw new IOException("Failed to connect estools");
    }
    OutputStream localOutputStream = paramLocalSocket.getOutputStream();
    paramLocalSocket = paramLocalSocket.getInputStream();
    m.a(localOutputStream, 205);
    m.a(localOutputStream, paramString);
    if (m.c(paramLocalSocket) < 0) {
      throw new IOException("File IO errors");
    }
    return m.c(paramLocalSocket) != 0;
  }
  
  /* Error */
  private static boolean a(String paramString, boolean paramBoolean1, boolean paramBoolean2)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 5
    //   3: aconst_null
    //   4: astore 6
    //   6: aconst_null
    //   7: astore 4
    //   9: aload_0
    //   10: ifnonnull +5 -> 15
    //   13: iconst_0
    //   14: ireturn
    //   15: iload_2
    //   16: ifeq +19 -> 35
    //   19: iconst_2
    //   20: istore_3
    //   21: aload_0
    //   22: iload_1
    //   23: invokestatic 166	com/estrongs/android/util/ap:b	(Ljava/lang/String;Z)Ljava/lang/String;
    //   26: astore 8
    //   28: aload 8
    //   30: ifnonnull +10 -> 40
    //   33: iconst_0
    //   34: ireturn
    //   35: iconst_3
    //   36: istore_3
    //   37: goto -16 -> 21
    //   40: invokestatic 100	com/estrongs/android/nativetool/c:a	()Landroid/net/LocalSocket;
    //   43: astore 7
    //   45: aload 7
    //   47: ifnonnull +5 -> 52
    //   50: iconst_0
    //   51: ireturn
    //   52: aload 7
    //   54: invokevirtual 65	android/net/LocalSocket:getInputStream	()Ljava/io/InputStream;
    //   57: astore_0
    //   58: aload 6
    //   60: astore 4
    //   62: aload 7
    //   64: invokevirtual 61	android/net/LocalSocket:getOutputStream	()Ljava/io/OutputStream;
    //   67: astore 5
    //   69: aload 5
    //   71: astore 4
    //   73: aload 5
    //   75: iload_3
    //   76: invokestatic 68	com/estrongs/fs/impl/local/m:a	(Ljava/io/OutputStream;I)V
    //   79: aload 5
    //   81: astore 4
    //   83: aload 5
    //   85: aload 8
    //   87: invokestatic 103	com/estrongs/fs/impl/local/m:a	(Ljava/io/OutputStream;Ljava/lang/String;)V
    //   90: aload 5
    //   92: astore 4
    //   94: aload_0
    //   95: invokestatic 72	com/estrongs/fs/impl/local/m:c	(Ljava/io/InputStream;)I
    //   98: istore_3
    //   99: iload_3
    //   100: ifne +31 -> 131
    //   103: aload_0
    //   104: ifnull +7 -> 111
    //   107: aload_0
    //   108: invokevirtual 106	java/io/InputStream:close	()V
    //   111: aload 5
    //   113: ifnull +8 -> 121
    //   116: aload 5
    //   118: invokevirtual 109	java/io/OutputStream:close	()V
    //   121: aload 7
    //   123: invokevirtual 79	android/net/LocalSocket:close	()V
    //   126: iconst_1
    //   127: ireturn
    //   128: astore_0
    //   129: iconst_0
    //   130: ireturn
    //   131: aload 5
    //   133: astore 4
    //   135: new 168	com/estrongs/fs/impl/local/NativeException
    //   138: dup
    //   139: iload_3
    //   140: invokestatic 173	com/estrongs/fs/impl/local/l:a	(I)Ljava/lang/String;
    //   143: invokespecial 174	com/estrongs/fs/impl/local/NativeException:<init>	(Ljava/lang/String;)V
    //   146: athrow
    //   147: astore 4
    //   149: aload_0
    //   150: astore 4
    //   152: aload 5
    //   154: astore_0
    //   155: aload 4
    //   157: ifnull +8 -> 165
    //   160: aload 4
    //   162: invokevirtual 106	java/io/InputStream:close	()V
    //   165: aload_0
    //   166: ifnull +7 -> 173
    //   169: aload_0
    //   170: invokevirtual 109	java/io/OutputStream:close	()V
    //   173: aload 7
    //   175: invokevirtual 79	android/net/LocalSocket:close	()V
    //   178: iconst_0
    //   179: ireturn
    //   180: astore_0
    //   181: iconst_0
    //   182: ireturn
    //   183: astore 6
    //   185: aconst_null
    //   186: astore_0
    //   187: aload 5
    //   189: astore 4
    //   191: aload 6
    //   193: astore 5
    //   195: aload_0
    //   196: ifnull +7 -> 203
    //   199: aload_0
    //   200: invokevirtual 106	java/io/InputStream:close	()V
    //   203: aload 4
    //   205: ifnull +8 -> 213
    //   208: aload 4
    //   210: invokevirtual 109	java/io/OutputStream:close	()V
    //   213: aload 7
    //   215: invokevirtual 79	android/net/LocalSocket:close	()V
    //   218: aload 5
    //   220: athrow
    //   221: astore_0
    //   222: iconst_0
    //   223: ireturn
    //   224: astore 5
    //   226: goto -31 -> 195
    //   229: astore_0
    //   230: aconst_null
    //   231: astore_0
    //   232: goto -77 -> 155
    //   235: astore 4
    //   237: aconst_null
    //   238: astore 5
    //   240: aload_0
    //   241: astore 4
    //   243: aload 5
    //   245: astore_0
    //   246: goto -91 -> 155
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	249	0	paramString	String
    //   0	249	1	paramBoolean1	boolean
    //   0	249	2	paramBoolean2	boolean
    //   20	120	3	i	int
    //   7	127	4	localObject1	Object
    //   147	1	4	localIOException1	IOException
    //   150	59	4	localObject2	Object
    //   235	1	4	localIOException2	IOException
    //   241	1	4	str1	String
    //   1	218	5	localObject3	Object
    //   224	1	5	localObject4	Object
    //   238	6	5	localObject5	Object
    //   4	55	6	localObject6	Object
    //   183	9	6	localObject7	Object
    //   43	171	7	localLocalSocket	LocalSocket
    //   26	60	8	str2	String
    // Exception table:
    //   from	to	target	type
    //   107	111	128	java/io/IOException
    //   116	121	128	java/io/IOException
    //   121	126	128	java/io/IOException
    //   73	79	147	java/io/IOException
    //   83	90	147	java/io/IOException
    //   94	99	147	java/io/IOException
    //   135	147	147	java/io/IOException
    //   160	165	180	java/io/IOException
    //   169	173	180	java/io/IOException
    //   173	178	180	java/io/IOException
    //   52	58	183	finally
    //   199	203	221	java/io/IOException
    //   208	213	221	java/io/IOException
    //   213	218	221	java/io/IOException
    //   62	69	224	finally
    //   73	79	224	finally
    //   83	90	224	finally
    //   94	99	224	finally
    //   135	147	224	finally
    //   52	58	229	java/io/IOException
    //   62	69	235	java/io/IOException
  }
  
  public static boolean b(String paramString)
  {
    return a(paramString, false, false);
  }
  
  /* Error */
  public static boolean c(String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: aconst_null
    //   3: astore 4
    //   5: aconst_null
    //   6: astore_2
    //   7: invokestatic 100	com/estrongs/android/nativetool/c:a	()Landroid/net/LocalSocket;
    //   10: astore 6
    //   12: aload 6
    //   14: ifnonnull +5 -> 19
    //   17: iconst_0
    //   18: ireturn
    //   19: aload 6
    //   21: invokevirtual 65	android/net/LocalSocket:getInputStream	()Ljava/io/InputStream;
    //   24: astore 5
    //   26: aload 5
    //   28: astore_2
    //   29: aload 4
    //   31: astore_3
    //   32: aload 6
    //   34: invokevirtual 61	android/net/LocalSocket:getOutputStream	()Ljava/io/OutputStream;
    //   37: astore 4
    //   39: aload 4
    //   41: astore_3
    //   42: aload 4
    //   44: sipush 10006
    //   47: invokestatic 68	com/estrongs/fs/impl/local/m:a	(Ljava/io/OutputStream;I)V
    //   50: aload 4
    //   52: astore_3
    //   53: aload 4
    //   55: aload_0
    //   56: invokestatic 103	com/estrongs/fs/impl/local/m:a	(Ljava/io/OutputStream;Ljava/lang/String;)V
    //   59: aload 4
    //   61: astore_3
    //   62: aload_2
    //   63: invokestatic 72	com/estrongs/fs/impl/local/m:c	(Ljava/io/InputStream;)I
    //   66: istore_1
    //   67: iload_1
    //   68: iconst_1
    //   69: if_icmpne +31 -> 100
    //   72: aload_2
    //   73: ifnull +7 -> 80
    //   76: aload_2
    //   77: invokevirtual 106	java/io/InputStream:close	()V
    //   80: aload 4
    //   82: ifnull +8 -> 90
    //   85: aload 4
    //   87: invokevirtual 109	java/io/OutputStream:close	()V
    //   90: aload 6
    //   92: invokevirtual 79	android/net/LocalSocket:close	()V
    //   95: iconst_1
    //   96: ireturn
    //   97: astore_0
    //   98: iconst_1
    //   99: ireturn
    //   100: aload_2
    //   101: ifnull +7 -> 108
    //   104: aload_2
    //   105: invokevirtual 106	java/io/InputStream:close	()V
    //   108: aload 4
    //   110: ifnull +8 -> 118
    //   113: aload 4
    //   115: invokevirtual 109	java/io/OutputStream:close	()V
    //   118: aload 6
    //   120: invokevirtual 79	android/net/LocalSocket:close	()V
    //   123: iconst_0
    //   124: ireturn
    //   125: astore_0
    //   126: iconst_1
    //   127: ireturn
    //   128: astore_0
    //   129: aconst_null
    //   130: astore_0
    //   131: aload_2
    //   132: ifnull +7 -> 139
    //   135: aload_2
    //   136: invokevirtual 106	java/io/InputStream:close	()V
    //   139: aload_0
    //   140: ifnull +7 -> 147
    //   143: aload_0
    //   144: invokevirtual 109	java/io/OutputStream:close	()V
    //   147: aload 6
    //   149: invokevirtual 79	android/net/LocalSocket:close	()V
    //   152: iconst_1
    //   153: ireturn
    //   154: astore_0
    //   155: iconst_1
    //   156: ireturn
    //   157: astore_0
    //   158: aconst_null
    //   159: astore_2
    //   160: aload_2
    //   161: ifnull +7 -> 168
    //   164: aload_2
    //   165: invokevirtual 106	java/io/InputStream:close	()V
    //   168: aload_3
    //   169: ifnull +7 -> 176
    //   172: aload_3
    //   173: invokevirtual 109	java/io/OutputStream:close	()V
    //   176: aload 6
    //   178: invokevirtual 79	android/net/LocalSocket:close	()V
    //   181: aload_0
    //   182: athrow
    //   183: astore_0
    //   184: iconst_1
    //   185: ireturn
    //   186: astore_0
    //   187: goto -27 -> 160
    //   190: astore_0
    //   191: aconst_null
    //   192: astore_0
    //   193: goto -62 -> 131
    //   196: astore_0
    //   197: aload 4
    //   199: astore_0
    //   200: goto -69 -> 131
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	203	0	paramString	String
    //   66	4	1	i	int
    //   6	159	2	localObject1	Object
    //   1	172	3	localObject2	Object
    //   3	195	4	localOutputStream	OutputStream
    //   24	3	5	localInputStream	java.io.InputStream
    //   10	167	6	localLocalSocket	LocalSocket
    // Exception table:
    //   from	to	target	type
    //   76	80	97	java/io/IOException
    //   85	90	97	java/io/IOException
    //   90	95	97	java/io/IOException
    //   104	108	125	java/io/IOException
    //   113	118	125	java/io/IOException
    //   118	123	125	java/io/IOException
    //   19	26	128	java/io/IOException
    //   135	139	154	java/io/IOException
    //   143	147	154	java/io/IOException
    //   147	152	154	java/io/IOException
    //   19	26	157	finally
    //   164	168	183	java/io/IOException
    //   172	176	183	java/io/IOException
    //   176	181	183	java/io/IOException
    //   32	39	186	finally
    //   42	50	186	finally
    //   53	59	186	finally
    //   62	67	186	finally
    //   32	39	190	java/io/IOException
    //   42	50	196	java/io/IOException
    //   53	59	196	java/io/IOException
    //   62	67	196	java/io/IOException
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.nativetool.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */