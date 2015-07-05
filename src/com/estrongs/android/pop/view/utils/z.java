package com.estrongs.android.pop.view.utils;

import com.estrongs.a.a.o;
import com.estrongs.fs.h;

class z
  implements o
{
  z(y paramy, String paramString, h paramh) {}
  
  /* Error */
  public void a(com.estrongs.a.a arg1, boolean paramBoolean)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_3
    //   2: aload_1
    //   3: invokevirtual 37	com/estrongs/a/a:getTaskStatus	()I
    //   6: iconst_4
    //   7: if_icmpne +574 -> 581
    //   10: invokestatic 42	com/estrongs/fs/d:a	()Lcom/estrongs/fs/d;
    //   13: aload_0
    //   14: getfield 16	com/estrongs/android/pop/view/utils/z:c	Lcom/estrongs/android/pop/view/utils/y;
    //   17: getfield 47	com/estrongs/android/pop/view/utils/y:a	Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile;
    //   20: getfield 52	com/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile:path	Ljava/lang/String;
    //   23: iconst_0
    //   24: iconst_0
    //   25: invokevirtual 55	com/estrongs/fs/d:a	(Ljava/lang/String;ZZ)Lcom/estrongs/fs/h;
    //   28: astore 6
    //   30: aload 6
    //   32: ifnonnull +11 -> 43
    //   35: aload_0
    //   36: getfield 16	com/estrongs/android/pop/view/utils/z:c	Lcom/estrongs/android/pop/view/utils/y;
    //   39: invokevirtual 57	com/estrongs/android/pop/view/utils/y:a	()V
    //   42: return
    //   43: aload 6
    //   45: invokeinterface 63 1 0
    //   50: aload_0
    //   51: getfield 16	com/estrongs/android/pop/view/utils/z:c	Lcom/estrongs/android/pop/view/utils/y;
    //   54: invokestatic 66	com/estrongs/android/pop/view/utils/y:a	(Lcom/estrongs/android/pop/view/utils/y;)J
    //   57: lcmp
    //   58: ifne +21 -> 79
    //   61: aload 6
    //   63: invokeinterface 69 1 0
    //   68: aload_0
    //   69: getfield 16	com/estrongs/android/pop/view/utils/z:c	Lcom/estrongs/android/pop/view/utils/y;
    //   72: invokestatic 71	com/estrongs/android/pop/view/utils/y:b	(Lcom/estrongs/android/pop/view/utils/y;)J
    //   75: lcmp
    //   76: ifeq +11 -> 87
    //   79: aload_0
    //   80: getfield 16	com/estrongs/android/pop/view/utils/z:c	Lcom/estrongs/android/pop/view/utils/y;
    //   83: invokevirtual 57	com/estrongs/android/pop/view/utils/y:a	()V
    //   86: return
    //   87: new 73	java/lang/StringBuilder
    //   90: dup
    //   91: invokespecial 74	java/lang/StringBuilder:<init>	()V
    //   94: aload 6
    //   96: invokeinterface 78 1 0
    //   101: invokestatic 84	com/estrongs/android/util/am:bk	(Ljava/lang/String;)Ljava/lang/String;
    //   104: invokevirtual 88	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   107: aload 6
    //   109: invokeinterface 91 1 0
    //   114: invokevirtual 88	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   117: ldc 93
    //   119: invokevirtual 88	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   122: astore 7
    //   124: aload_0
    //   125: getfield 18	com/estrongs/android/pop/view/utils/z:a	Ljava/lang/String;
    //   128: ifnonnull +159 -> 287
    //   131: ldc 95
    //   133: astore_1
    //   134: aload 7
    //   136: aload_1
    //   137: invokevirtual 88	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   140: invokevirtual 98	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   143: invokestatic 103	com/estrongs/fs/util/j:m	(Ljava/lang/String;)Ljava/lang/String;
    //   146: astore_1
    //   147: invokestatic 42	com/estrongs/fs/d:a	()Lcom/estrongs/fs/d;
    //   150: aload 6
    //   152: aload_1
    //   153: invokestatic 106	com/estrongs/android/util/am:d	(Ljava/lang/String;)Ljava/lang/String;
    //   156: iconst_0
    //   157: invokevirtual 109	com/estrongs/fs/d:b	(Lcom/estrongs/fs/h;Ljava/lang/String;Z)Z
    //   160: ifeq +325 -> 485
    //   163: aload_0
    //   164: getfield 16	com/estrongs/android/pop/view/utils/z:c	Lcom/estrongs/android/pop/view/utils/y;
    //   167: iconst_1
    //   168: invokestatic 112	com/estrongs/android/pop/view/utils/y:a	(Lcom/estrongs/android/pop/view/utils/y;Z)Z
    //   171: pop
    //   172: aload_0
    //   173: getfield 16	com/estrongs/android/pop/view/utils/z:c	Lcom/estrongs/android/pop/view/utils/y;
    //   176: getfield 47	com/estrongs/android/pop/view/utils/y:a	Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile;
    //   179: getfield 52	com/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile:path	Ljava/lang/String;
    //   182: invokestatic 116	com/estrongs/android/util/am:aw	(Ljava/lang/String;)Z
    //   185: ifne +37 -> 222
    //   188: aload_0
    //   189: getfield 16	com/estrongs/android/pop/view/utils/z:c	Lcom/estrongs/android/pop/view/utils/y;
    //   192: getfield 47	com/estrongs/android/pop/view/utils/y:a	Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile;
    //   195: getfield 52	com/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile:path	Ljava/lang/String;
    //   198: invokestatic 119	com/estrongs/android/util/am:aB	(Ljava/lang/String;)Z
    //   201: ifne +21 -> 222
    //   204: aload_0
    //   205: getfield 16	com/estrongs/android/pop/view/utils/z:c	Lcom/estrongs/android/pop/view/utils/y;
    //   208: getfield 47	com/estrongs/android/pop/view/utils/y:a	Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile;
    //   211: getfield 52	com/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile:path	Ljava/lang/String;
    //   214: invokestatic 122	com/estrongs/android/util/am:az	(Ljava/lang/String;)Z
    //   217: istore_2
    //   218: iload_2
    //   219: ifeq +313 -> 532
    //   222: iconst_0
    //   223: istore_2
    //   224: iload_3
    //   225: iconst_5
    //   226: if_icmpge +378 -> 604
    //   229: iload_2
    //   230: ifne +374 -> 604
    //   233: iload_3
    //   234: istore 4
    //   236: ldc2_w 123
    //   239: invokestatic 130	java/lang/Thread:sleep	(J)V
    //   242: iload_3
    //   243: iconst_1
    //   244: iadd
    //   245: istore_3
    //   246: iload_3
    //   247: istore 4
    //   249: invokestatic 42	com/estrongs/fs/d:a	()Lcom/estrongs/fs/d;
    //   252: invokestatic 42	com/estrongs/fs/d:a	()Lcom/estrongs/fs/d;
    //   255: aload_0
    //   256: getfield 16	com/estrongs/android/pop/view/utils/z:c	Lcom/estrongs/android/pop/view/utils/y;
    //   259: getfield 47	com/estrongs/android/pop/view/utils/y:a	Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile;
    //   262: getfield 133	com/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile:tmpPath	Ljava/lang/String;
    //   265: invokevirtual 137	com/estrongs/fs/d:j	(Ljava/lang/String;)Lcom/estrongs/fs/h;
    //   268: aload 6
    //   270: invokeinterface 91 1 0
    //   275: iconst_0
    //   276: invokevirtual 109	com/estrongs/fs/d:b	(Lcom/estrongs/fs/h;Ljava/lang/String;Z)Z
    //   279: istore 5
    //   281: iload 5
    //   283: istore_2
    //   284: goto -60 -> 224
    //   287: aload_0
    //   288: getfield 18	com/estrongs/android/pop/view/utils/z:a	Ljava/lang/String;
    //   291: astore_1
    //   292: goto -158 -> 134
    //   295: iload_2
    //   296: ifeq +189 -> 485
    //   299: aload_0
    //   300: getfield 16	com/estrongs/android/pop/view/utils/z:c	Lcom/estrongs/android/pop/view/utils/y;
    //   303: getfield 47	com/estrongs/android/pop/view/utils/y:a	Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile;
    //   306: getfield 52	com/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile:path	Ljava/lang/String;
    //   309: invokestatic 116	com/estrongs/android/util/am:aw	(Ljava/lang/String;)Z
    //   312: ifne +37 -> 349
    //   315: aload_0
    //   316: getfield 16	com/estrongs/android/pop/view/utils/z:c	Lcom/estrongs/android/pop/view/utils/y;
    //   319: getfield 47	com/estrongs/android/pop/view/utils/y:a	Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile;
    //   322: getfield 52	com/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile:path	Ljava/lang/String;
    //   325: invokestatic 119	com/estrongs/android/util/am:aB	(Ljava/lang/String;)Z
    //   328: ifne +21 -> 349
    //   331: aload_0
    //   332: getfield 16	com/estrongs/android/pop/view/utils/z:c	Lcom/estrongs/android/pop/view/utils/y;
    //   335: getfield 47	com/estrongs/android/pop/view/utils/y:a	Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile;
    //   338: getfield 52	com/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile:path	Ljava/lang/String;
    //   341: invokestatic 122	com/estrongs/android/util/am:az	(Ljava/lang/String;)Z
    //   344: istore_2
    //   345: iload_2
    //   346: ifeq +9 -> 355
    //   349: ldc2_w 123
    //   352: invokestatic 130	java/lang/Thread:sleep	(J)V
    //   355: invokestatic 42	com/estrongs/fs/d:a	()Lcom/estrongs/fs/d;
    //   358: invokestatic 42	com/estrongs/fs/d:a	()Lcom/estrongs/fs/d;
    //   361: aload_1
    //   362: invokevirtual 137	com/estrongs/fs/d:j	(Ljava/lang/String;)Lcom/estrongs/fs/h;
    //   365: invokevirtual 140	com/estrongs/fs/d:a	(Lcom/estrongs/fs/h;)Z
    //   368: pop
    //   369: invokestatic 42	com/estrongs/fs/d:a	()Lcom/estrongs/fs/d;
    //   372: aload 6
    //   374: invokeinterface 78 1 0
    //   379: iconst_0
    //   380: iconst_0
    //   381: invokevirtual 55	com/estrongs/fs/d:a	(Ljava/lang/String;ZZ)Lcom/estrongs/fs/h;
    //   384: astore 7
    //   386: getstatic 145	com/estrongs/android/pop/view/utils/RemoteSynchronizer:c	Ljava/util/Map;
    //   389: astore_1
    //   390: aload_1
    //   391: monitorenter
    //   392: getstatic 145	com/estrongs/android/pop/view/utils/RemoteSynchronizer:c	Ljava/util/Map;
    //   395: aload 6
    //   397: invokeinterface 78 1 0
    //   402: invokestatic 149	com/estrongs/android/pop/view/utils/AppRunner:b	(Ljava/lang/String;)Ljava/lang/String;
    //   405: invokeinterface 155 2 0
    //   410: checkcast 49	com/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile
    //   413: astore 6
    //   415: aload 7
    //   417: ifnull +60 -> 477
    //   420: aload 6
    //   422: ifnull +55 -> 477
    //   425: aload 6
    //   427: aload 7
    //   429: invokeinterface 63 1 0
    //   434: putfield 158	com/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile:lastModified	J
    //   437: aload 6
    //   439: aload 7
    //   441: invokeinterface 69 1 0
    //   446: putfield 161	com/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile:size	J
    //   449: aload 6
    //   451: new 163	java/io/File
    //   454: dup
    //   455: aload_0
    //   456: getfield 16	com/estrongs/android/pop/view/utils/z:c	Lcom/estrongs/android/pop/view/utils/y;
    //   459: getfield 47	com/estrongs/android/pop/view/utils/y:a	Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile;
    //   462: getfield 166	com/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile:cachePath	Ljava/lang/String;
    //   465: invokespecial 169	java/io/File:<init>	(Ljava/lang/String;)V
    //   468: invokevirtual 170	java/io/File:lastModified	()J
    //   471: putfield 173	com/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile:localFileLastModified	J
    //   474: invokestatic 175	com/estrongs/android/pop/view/utils/RemoteSynchronizer:c	()V
    //   477: aload 6
    //   479: aconst_null
    //   480: putfield 133	com/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile:tmpPath	Ljava/lang/String;
    //   483: aload_1
    //   484: monitorexit
    //   485: aload_0
    //   486: getfield 16	com/estrongs/android/pop/view/utils/z:c	Lcom/estrongs/android/pop/view/utils/y;
    //   489: invokestatic 178	com/estrongs/android/pop/view/utils/y:c	(Lcom/estrongs/android/pop/view/utils/y;)Z
    //   492: ifeq -450 -> 42
    //   495: invokestatic 183	com/estrongs/fs/a/b:a	()Lcom/estrongs/fs/a/b;
    //   498: new 73	java/lang/StringBuilder
    //   501: dup
    //   502: invokespecial 74	java/lang/StringBuilder:<init>	()V
    //   505: aload_0
    //   506: getfield 20	com/estrongs/android/pop/view/utils/z:b	Lcom/estrongs/fs/h;
    //   509: invokeinterface 78 1 0
    //   514: invokestatic 84	com/estrongs/android/util/am:bk	(Ljava/lang/String;)Ljava/lang/String;
    //   517: invokevirtual 88	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   520: ldc -71
    //   522: invokevirtual 88	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   525: invokevirtual 98	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   528: invokevirtual 187	com/estrongs/fs/a/b:a	(Ljava/lang/String;)V
    //   531: return
    //   532: invokestatic 42	com/estrongs/fs/d:a	()Lcom/estrongs/fs/d;
    //   535: invokestatic 42	com/estrongs/fs/d:a	()Lcom/estrongs/fs/d;
    //   538: aload_0
    //   539: getfield 16	com/estrongs/android/pop/view/utils/z:c	Lcom/estrongs/android/pop/view/utils/y;
    //   542: getfield 47	com/estrongs/android/pop/view/utils/y:a	Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile;
    //   545: getfield 133	com/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile:tmpPath	Ljava/lang/String;
    //   548: invokevirtual 137	com/estrongs/fs/d:j	(Ljava/lang/String;)Lcom/estrongs/fs/h;
    //   551: aload 6
    //   553: invokeinterface 91 1 0
    //   558: iconst_0
    //   559: invokevirtual 109	com/estrongs/fs/d:b	(Lcom/estrongs/fs/h;Ljava/lang/String;Z)Z
    //   562: istore_2
    //   563: goto -268 -> 295
    //   566: astore 6
    //   568: aload_1
    //   569: monitorexit
    //   570: aload 6
    //   572: athrow
    //   573: astore_1
    //   574: aload_1
    //   575: invokevirtual 190	com/estrongs/fs/FileSystemException:printStackTrace	()V
    //   578: goto -93 -> 485
    //   581: aload_0
    //   582: getfield 16	com/estrongs/android/pop/view/utils/z:c	Lcom/estrongs/android/pop/view/utils/y;
    //   585: invokevirtual 57	com/estrongs/android/pop/view/utils/y:a	()V
    //   588: goto -103 -> 485
    //   591: astore 7
    //   593: goto -238 -> 355
    //   596: astore 7
    //   598: iload 4
    //   600: istore_3
    //   601: goto -377 -> 224
    //   604: goto -309 -> 295
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	607	0	this	z
    //   0	607	2	paramBoolean	boolean
    //   1	600	3	i	int
    //   234	365	4	j	int
    //   279	3	5	bool	boolean
    //   28	524	6	localObject1	Object
    //   566	5	6	localObject2	Object
    //   122	318	7	localObject3	Object
    //   591	1	7	localInterruptedException	InterruptedException
    //   596	1	7	localException	Exception
    // Exception table:
    //   from	to	target	type
    //   392	415	566	finally
    //   425	477	566	finally
    //   477	485	566	finally
    //   568	570	566	finally
    //   87	131	573	com/estrongs/fs/FileSystemException
    //   134	218	573	com/estrongs/fs/FileSystemException
    //   236	242	573	com/estrongs/fs/FileSystemException
    //   249	281	573	com/estrongs/fs/FileSystemException
    //   287	292	573	com/estrongs/fs/FileSystemException
    //   299	345	573	com/estrongs/fs/FileSystemException
    //   349	355	573	com/estrongs/fs/FileSystemException
    //   355	392	573	com/estrongs/fs/FileSystemException
    //   532	563	573	com/estrongs/fs/FileSystemException
    //   570	573	573	com/estrongs/fs/FileSystemException
    //   349	355	591	java/lang/InterruptedException
    //   236	242	596	java/lang/Exception
    //   249	281	596	java/lang/Exception
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.utils.z
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */