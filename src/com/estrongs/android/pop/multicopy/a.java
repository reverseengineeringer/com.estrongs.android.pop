package com.estrongs.android.pop.multicopy;

import android.os.ConditionVariable;

public class a
  implements Runnable
{
  private String a;
  private long b;
  private long c;
  private int d;
  private String e;
  private int f;
  private com.estrongs.a.a g;
  private long h;
  private MultiThreadCopy.SegmentInfo i;
  private boolean j;
  private ConditionVariable k = new ConditionVariable();
  
  public a(com.estrongs.a.a parama)
  {
    g = parama;
  }
  
  public void a(int paramInt)
  {
    d = paramInt;
  }
  
  public void a(long paramLong)
  {
    b = paramLong;
  }
  
  public void a(MultiThreadCopy.SegmentInfo paramSegmentInfo)
  {
    i = paramSegmentInfo;
  }
  
  public void a(String paramString)
  {
    a = paramString;
  }
  
  public boolean a()
  {
    return j;
  }
  
  public void b(int paramInt)
  {
    f = paramInt;
  }
  
  public void b(long paramLong)
  {
    c = paramLong;
  }
  
  public void b(String paramString)
  {
    e = paramString;
  }
  
  public void c(long paramLong)
  {
    h = paramLong;
  }
  
  /* Error */
  public void run()
  {
    // Byte code:
    //   0: getstatic 72	java/lang/System:out	Ljava/io/PrintStream;
    //   3: new 74	java/lang/StringBuilder
    //   6: dup
    //   7: invokespecial 75	java/lang/StringBuilder:<init>	()V
    //   10: ldc 77
    //   12: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   15: aload_0
    //   16: getfield 41	com/estrongs/android/pop/multicopy/a:d	I
    //   19: invokevirtual 84	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   22: ldc 86
    //   24: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   27: new 88	java/text/SimpleDateFormat
    //   30: dup
    //   31: ldc 90
    //   33: invokespecial 92	java/text/SimpleDateFormat:<init>	(Ljava/lang/String;)V
    //   36: new 94	java/util/Date
    //   39: dup
    //   40: invokespecial 95	java/util/Date:<init>	()V
    //   43: invokevirtual 99	java/text/SimpleDateFormat:format	(Ljava/util/Date;)Ljava/lang/String;
    //   46: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   49: invokevirtual 103	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   52: invokevirtual 108	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   55: aload_0
    //   56: getfield 36	com/estrongs/android/pop/multicopy/a:g	Lcom/estrongs/a/a;
    //   59: instanceof 110
    //   62: istore_2
    //   63: iload_2
    //   64: ifeq +18 -> 82
    //   67: aload_0
    //   68: getfield 36	com/estrongs/android/pop/multicopy/a:g	Lcom/estrongs/a/a;
    //   71: new 112	com/estrongs/android/pop/multicopy/b
    //   74: dup
    //   75: aload_0
    //   76: invokespecial 115	com/estrongs/android/pop/multicopy/b:<init>	(Lcom/estrongs/android/pop/multicopy/a;)V
    //   79: invokevirtual 121	com/estrongs/a/a:addTaskStatusChangeListener	(Lcom/estrongs/a/a/p;)V
    //   82: aconst_null
    //   83: astore 18
    //   85: aconst_null
    //   86: astore 17
    //   88: aconst_null
    //   89: astore 16
    //   91: aconst_null
    //   92: astore 15
    //   94: aload_0
    //   95: getfield 55	com/estrongs/android/pop/multicopy/a:f	I
    //   98: newarray <illegal type>
    //   100: astore 19
    //   102: aload 15
    //   104: astore 13
    //   106: aload 17
    //   108: astore 11
    //   110: aload 16
    //   112: astore 12
    //   114: aload 18
    //   116: astore 10
    //   118: aload_0
    //   119: getfield 47	com/estrongs/android/pop/multicopy/a:i	Lcom/estrongs/android/pop/multicopy/MultiThreadCopy$SegmentInfo;
    //   122: getfield 126	com/estrongs/android/pop/multicopy/MultiThreadCopy$SegmentInfo:totalWriteLen	J
    //   125: lstore 6
    //   127: aconst_null
    //   128: astore 14
    //   130: aload 15
    //   132: astore 13
    //   134: aload 17
    //   136: astore 11
    //   138: aload 16
    //   140: astore 12
    //   142: aload 18
    //   144: astore 10
    //   146: aload_0
    //   147: getfield 50	com/estrongs/android/pop/multicopy/a:a	Ljava/lang/String;
    //   150: invokestatic 132	com/estrongs/android/util/am:t	(Ljava/lang/String;)Z
    //   153: ifne +29 -> 182
    //   156: aload 15
    //   158: astore 13
    //   160: aload 17
    //   162: astore 11
    //   164: aload 16
    //   166: astore 12
    //   168: aload 18
    //   170: astore 10
    //   172: aload_0
    //   173: getfield 50	com/estrongs/android/pop/multicopy/a:a	Ljava/lang/String;
    //   176: invokestatic 135	com/estrongs/android/util/am:m	(Ljava/lang/String;)Z
    //   179: ifeq +107 -> 286
    //   182: aload 15
    //   184: astore 13
    //   186: aload 17
    //   188: astore 11
    //   190: aload 16
    //   192: astore 12
    //   194: aload 18
    //   196: astore 10
    //   198: new 137	com/estrongs/android/util/TypedMap
    //   201: dup
    //   202: invokespecial 138	com/estrongs/android/util/TypedMap:<init>	()V
    //   205: astore 14
    //   207: aload 15
    //   209: astore 13
    //   211: aload 17
    //   213: astore 11
    //   215: aload 16
    //   217: astore 12
    //   219: aload 18
    //   221: astore 10
    //   223: aload_0
    //   224: getfield 50	com/estrongs/android/pop/multicopy/a:a	Ljava/lang/String;
    //   227: invokestatic 135	com/estrongs/android/util/am:m	(Ljava/lang/String;)Z
    //   230: ifeq +483 -> 713
    //   233: aload 15
    //   235: astore 13
    //   237: aload 17
    //   239: astore 11
    //   241: aload 16
    //   243: astore 12
    //   245: aload 18
    //   247: astore 10
    //   249: aload_0
    //   250: getfield 57	com/estrongs/android/pop/multicopy/a:c	J
    //   253: lconst_1
    //   254: ladd
    //   255: lstore 4
    //   257: aload 15
    //   259: astore 13
    //   261: aload 17
    //   263: astore 11
    //   265: aload 16
    //   267: astore 12
    //   269: aload 18
    //   271: astore 10
    //   273: aload 14
    //   275: ldc -116
    //   277: lload 4
    //   279: invokestatic 146	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   282: invokevirtual 150	com/estrongs/android/util/TypedMap:put	(Ljava/lang/String;Ljava/lang/Object;)Lcom/estrongs/android/util/TypedMap;
    //   285: pop
    //   286: aload 15
    //   288: astore 13
    //   290: aload 17
    //   292: astore 11
    //   294: aload 16
    //   296: astore 12
    //   298: aload 18
    //   300: astore 10
    //   302: invokestatic 155	com/estrongs/fs/d:a	()Lcom/estrongs/fs/d;
    //   305: aload_0
    //   306: getfield 50	com/estrongs/android/pop/multicopy/a:a	Ljava/lang/String;
    //   309: aload_0
    //   310: getfield 44	com/estrongs/android/pop/multicopy/a:b	J
    //   313: lload 6
    //   315: ladd
    //   316: aload 14
    //   318: invokevirtual 158	com/estrongs/fs/d:a	(Ljava/lang/String;JLcom/estrongs/android/util/TypedMap;)Ljava/io/InputStream;
    //   321: astore 14
    //   323: aload 15
    //   325: astore 13
    //   327: aload 14
    //   329: astore 11
    //   331: aload 16
    //   333: astore 12
    //   335: aload 14
    //   337: astore 10
    //   339: invokestatic 155	com/estrongs/fs/d:a	()Lcom/estrongs/fs/d;
    //   342: aload_0
    //   343: getfield 59	com/estrongs/android/pop/multicopy/a:e	Ljava/lang/String;
    //   346: aload_0
    //   347: getfield 44	com/estrongs/android/pop/multicopy/a:b	J
    //   350: lload 6
    //   352: ladd
    //   353: iconst_1
    //   354: invokevirtual 161	com/estrongs/fs/d:a	(Ljava/lang/String;JZ)Ljava/io/OutputStream;
    //   357: astore 15
    //   359: lload 6
    //   361: lstore 4
    //   363: aload 15
    //   365: astore 13
    //   367: aload 14
    //   369: astore 11
    //   371: aload 15
    //   373: astore 12
    //   375: aload 14
    //   377: astore 10
    //   379: lload 4
    //   381: aload_0
    //   382: getfield 57	com/estrongs/android/pop/multicopy/a:c	J
    //   385: aload_0
    //   386: getfield 44	com/estrongs/android/pop/multicopy/a:b	J
    //   389: lsub
    //   390: lconst_1
    //   391: ladd
    //   392: lcmp
    //   393: ifge +754 -> 1147
    //   396: iload_2
    //   397: ifeq +99 -> 496
    //   400: aload 15
    //   402: astore 13
    //   404: aload 14
    //   406: astore 11
    //   408: aload 15
    //   410: astore 12
    //   412: aload 14
    //   414: astore 10
    //   416: aload_0
    //   417: getfield 36	com/estrongs/android/pop/multicopy/a:g	Lcom/estrongs/a/a;
    //   420: ifnull +76 -> 496
    //   423: aload 15
    //   425: astore 13
    //   427: aload 14
    //   429: astore 11
    //   431: aload 15
    //   433: astore 12
    //   435: aload 14
    //   437: astore 10
    //   439: aload_0
    //   440: getfield 36	com/estrongs/android/pop/multicopy/a:g	Lcom/estrongs/a/a;
    //   443: invokevirtual 165	com/estrongs/a/a:getTaskStatus	()I
    //   446: iconst_3
    //   447: if_icmpne +49 -> 496
    //   450: aload 15
    //   452: astore 13
    //   454: aload 14
    //   456: astore 11
    //   458: aload 15
    //   460: astore 12
    //   462: aload 14
    //   464: astore 10
    //   466: aload_0
    //   467: getfield 34	com/estrongs/android/pop/multicopy/a:k	Landroid/os/ConditionVariable;
    //   470: invokevirtual 168	android/os/ConditionVariable:block	()V
    //   473: aload 15
    //   475: astore 13
    //   477: aload 14
    //   479: astore 11
    //   481: aload 15
    //   483: astore 12
    //   485: aload 14
    //   487: astore 10
    //   489: aload_0
    //   490: getfield 34	com/estrongs/android/pop/multicopy/a:k	Landroid/os/ConditionVariable;
    //   493: invokevirtual 171	android/os/ConditionVariable:close	()V
    //   496: aload 15
    //   498: astore 13
    //   500: aload 14
    //   502: astore 11
    //   504: aload 15
    //   506: astore 12
    //   508: aload 14
    //   510: astore 10
    //   512: aload_0
    //   513: getfield 55	com/estrongs/android/pop/multicopy/a:f	I
    //   516: i2l
    //   517: lload 4
    //   519: ladd
    //   520: aload_0
    //   521: getfield 57	com/estrongs/android/pop/multicopy/a:c	J
    //   524: aload_0
    //   525: getfield 44	com/estrongs/android/pop/multicopy/a:b	J
    //   528: lsub
    //   529: lconst_1
    //   530: ladd
    //   531: lcmp
    //   532: ifle +206 -> 738
    //   535: aload 15
    //   537: astore 13
    //   539: aload 14
    //   541: astore 11
    //   543: aload 15
    //   545: astore 12
    //   547: aload 14
    //   549: astore 10
    //   551: aload 14
    //   553: aload 19
    //   555: iconst_0
    //   556: aload_0
    //   557: getfield 57	com/estrongs/android/pop/multicopy/a:c	J
    //   560: aload_0
    //   561: getfield 44	com/estrongs/android/pop/multicopy/a:b	J
    //   564: lsub
    //   565: lconst_1
    //   566: ladd
    //   567: lload 4
    //   569: lsub
    //   570: l2i
    //   571: invokevirtual 177	java/io/InputStream:read	([BII)I
    //   574: istore_1
    //   575: iload_1
    //   576: iconst_m1
    //   577: if_icmpne +227 -> 804
    //   580: aload 15
    //   582: astore 13
    //   584: aload 14
    //   586: astore 11
    //   588: aload 15
    //   590: astore 12
    //   592: aload 14
    //   594: astore 10
    //   596: aload_0
    //   597: getfield 57	com/estrongs/android/pop/multicopy/a:c	J
    //   600: lstore 6
    //   602: aload 15
    //   604: astore 13
    //   606: aload 14
    //   608: astore 11
    //   610: aload 15
    //   612: astore 12
    //   614: aload 14
    //   616: astore 10
    //   618: aload_0
    //   619: getfield 44	com/estrongs/android/pop/multicopy/a:b	J
    //   622: lstore 8
    //   624: lload 4
    //   626: lload 6
    //   628: lload 8
    //   630: lsub
    //   631: lconst_1
    //   632: ladd
    //   633: lcmp
    //   634: ifge +513 -> 1147
    //   637: aload 15
    //   639: ifnull +8 -> 647
    //   642: aload 15
    //   644: invokevirtual 180	java/io/OutputStream:close	()V
    //   647: aload 14
    //   649: ifnull +8 -> 657
    //   652: aload 14
    //   654: invokevirtual 181	java/io/InputStream:close	()V
    //   657: getstatic 72	java/lang/System:out	Ljava/io/PrintStream;
    //   660: new 74	java/lang/StringBuilder
    //   663: dup
    //   664: invokespecial 75	java/lang/StringBuilder:<init>	()V
    //   667: ldc 77
    //   669: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   672: aload_0
    //   673: getfield 41	com/estrongs/android/pop/multicopy/a:d	I
    //   676: invokevirtual 84	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   679: ldc -73
    //   681: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   684: new 88	java/text/SimpleDateFormat
    //   687: dup
    //   688: ldc 90
    //   690: invokespecial 92	java/text/SimpleDateFormat:<init>	(Ljava/lang/String;)V
    //   693: new 94	java/util/Date
    //   696: dup
    //   697: invokespecial 95	java/util/Date:<init>	()V
    //   700: invokevirtual 99	java/text/SimpleDateFormat:format	(Ljava/util/Date;)Ljava/lang/String;
    //   703: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   706: invokevirtual 103	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   709: invokevirtual 108	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   712: return
    //   713: aload 15
    //   715: astore 13
    //   717: aload 17
    //   719: astore 11
    //   721: aload 16
    //   723: astore 12
    //   725: aload 18
    //   727: astore 10
    //   729: aload_0
    //   730: getfield 57	com/estrongs/android/pop/multicopy/a:c	J
    //   733: lstore 4
    //   735: goto -478 -> 257
    //   738: aload 15
    //   740: astore 13
    //   742: aload 14
    //   744: astore 11
    //   746: aload 15
    //   748: astore 12
    //   750: aload 14
    //   752: astore 10
    //   754: aload 14
    //   756: aload 19
    //   758: iconst_0
    //   759: aload_0
    //   760: getfield 55	com/estrongs/android/pop/multicopy/a:f	I
    //   763: invokevirtual 177	java/io/InputStream:read	([BII)I
    //   766: istore_1
    //   767: goto -192 -> 575
    //   770: astore 10
    //   772: getstatic 72	java/lang/System:out	Ljava/io/PrintStream;
    //   775: new 74	java/lang/StringBuilder
    //   778: dup
    //   779: invokespecial 75	java/lang/StringBuilder:<init>	()V
    //   782: ldc -71
    //   784: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   787: aload 10
    //   789: invokevirtual 189	java/io/IOException:getStackTrace	()[Ljava/lang/StackTraceElement;
    //   792: invokevirtual 192	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   795: invokevirtual 103	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   798: invokevirtual 108	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   801: goto -144 -> 657
    //   804: aload 15
    //   806: astore 13
    //   808: aload 14
    //   810: astore 11
    //   812: aload 15
    //   814: astore 12
    //   816: aload 14
    //   818: astore 10
    //   820: aload 15
    //   822: aload 19
    //   824: iconst_0
    //   825: iload_1
    //   826: invokevirtual 196	java/io/OutputStream:write	([BII)V
    //   829: lload 4
    //   831: iload_1
    //   832: i2l
    //   833: ladd
    //   834: lstore 6
    //   836: aload 15
    //   838: astore 13
    //   840: aload 14
    //   842: astore 11
    //   844: aload 15
    //   846: astore 12
    //   848: aload 14
    //   850: astore 10
    //   852: aload_0
    //   853: getfield 47	com/estrongs/android/pop/multicopy/a:i	Lcom/estrongs/android/pop/multicopy/MultiThreadCopy$SegmentInfo;
    //   856: lload 6
    //   858: putfield 126	com/estrongs/android/pop/multicopy/MultiThreadCopy$SegmentInfo:totalWriteLen	J
    //   861: aload 15
    //   863: astore 13
    //   865: aload 14
    //   867: astore 11
    //   869: aload 15
    //   871: astore 12
    //   873: aload 14
    //   875: astore 10
    //   877: aload_0
    //   878: getfield 36	com/estrongs/android/pop/multicopy/a:g	Lcom/estrongs/a/a;
    //   881: ifnull +97 -> 978
    //   884: aload 15
    //   886: astore 13
    //   888: aload 14
    //   890: astore 11
    //   892: aload 15
    //   894: astore 12
    //   896: aload 14
    //   898: astore 10
    //   900: aload_0
    //   901: getfield 36	com/estrongs/android/pop/multicopy/a:g	Lcom/estrongs/a/a;
    //   904: bipush 14
    //   906: iconst_2
    //   907: anewarray 4	java/lang/Object
    //   910: dup
    //   911: iconst_0
    //   912: aload_0
    //   913: getfield 61	com/estrongs/android/pop/multicopy/a:h	J
    //   916: invokestatic 146	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   919: aastore
    //   920: dup
    //   921: iconst_1
    //   922: iload_1
    //   923: i2l
    //   924: lconst_0
    //   925: ladd
    //   926: invokestatic 146	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   929: aastore
    //   930: invokevirtual 200	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   933: aload 15
    //   935: astore 13
    //   937: aload 14
    //   939: astore 11
    //   941: aload 15
    //   943: astore 12
    //   945: aload 14
    //   947: astore 10
    //   949: aload_0
    //   950: getfield 36	com/estrongs/android/pop/multicopy/a:g	Lcom/estrongs/a/a;
    //   953: iconst_2
    //   954: iconst_2
    //   955: anewarray 4	java/lang/Object
    //   958: dup
    //   959: iconst_0
    //   960: iload_1
    //   961: i2l
    //   962: lconst_0
    //   963: ladd
    //   964: invokestatic 146	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   967: aastore
    //   968: dup
    //   969: iconst_1
    //   970: aload_0
    //   971: getfield 50	com/estrongs/android/pop/multicopy/a:a	Ljava/lang/String;
    //   974: aastore
    //   975: invokevirtual 200	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   978: lload 6
    //   980: lstore 4
    //   982: aload 15
    //   984: astore 13
    //   986: aload 14
    //   988: astore 11
    //   990: aload 15
    //   992: astore 12
    //   994: aload 14
    //   996: astore 10
    //   998: aload_0
    //   999: getfield 36	com/estrongs/android/pop/multicopy/a:g	Lcom/estrongs/a/a;
    //   1002: ifnull -639 -> 363
    //   1005: aload 15
    //   1007: astore 13
    //   1009: aload 14
    //   1011: astore 11
    //   1013: aload 15
    //   1015: astore 12
    //   1017: aload 14
    //   1019: astore 10
    //   1021: aload_0
    //   1022: getfield 36	com/estrongs/android/pop/multicopy/a:g	Lcom/estrongs/a/a;
    //   1025: invokevirtual 203	com/estrongs/a/a:taskStopped	()Z
    //   1028: istore_3
    //   1029: lload 6
    //   1031: lstore 4
    //   1033: iload_3
    //   1034: ifeq -671 -> 363
    //   1037: aload 15
    //   1039: ifnull +8 -> 1047
    //   1042: aload 15
    //   1044: invokevirtual 180	java/io/OutputStream:close	()V
    //   1047: aload 14
    //   1049: ifnull +8 -> 1057
    //   1052: aload 14
    //   1054: invokevirtual 181	java/io/InputStream:close	()V
    //   1057: getstatic 72	java/lang/System:out	Ljava/io/PrintStream;
    //   1060: new 74	java/lang/StringBuilder
    //   1063: dup
    //   1064: invokespecial 75	java/lang/StringBuilder:<init>	()V
    //   1067: ldc 77
    //   1069: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1072: aload_0
    //   1073: getfield 41	com/estrongs/android/pop/multicopy/a:d	I
    //   1076: invokevirtual 84	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   1079: ldc -73
    //   1081: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1084: new 88	java/text/SimpleDateFormat
    //   1087: dup
    //   1088: ldc 90
    //   1090: invokespecial 92	java/text/SimpleDateFormat:<init>	(Ljava/lang/String;)V
    //   1093: new 94	java/util/Date
    //   1096: dup
    //   1097: invokespecial 95	java/util/Date:<init>	()V
    //   1100: invokevirtual 99	java/text/SimpleDateFormat:format	(Ljava/util/Date;)Ljava/lang/String;
    //   1103: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1106: invokevirtual 103	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1109: invokevirtual 108	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   1112: return
    //   1113: astore 10
    //   1115: getstatic 72	java/lang/System:out	Ljava/io/PrintStream;
    //   1118: new 74	java/lang/StringBuilder
    //   1121: dup
    //   1122: invokespecial 75	java/lang/StringBuilder:<init>	()V
    //   1125: ldc -71
    //   1127: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1130: aload 10
    //   1132: invokevirtual 189	java/io/IOException:getStackTrace	()[Ljava/lang/StackTraceElement;
    //   1135: invokevirtual 192	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   1138: invokevirtual 103	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1141: invokevirtual 108	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   1144: goto -87 -> 1057
    //   1147: aload 15
    //   1149: astore 13
    //   1151: aload 14
    //   1153: astore 11
    //   1155: aload 15
    //   1157: astore 12
    //   1159: aload 14
    //   1161: astore 10
    //   1163: aload_0
    //   1164: iconst_1
    //   1165: putfield 53	com/estrongs/android/pop/multicopy/a:j	Z
    //   1168: aload 15
    //   1170: ifnull +8 -> 1178
    //   1173: aload 15
    //   1175: invokevirtual 180	java/io/OutputStream:close	()V
    //   1178: aload 14
    //   1180: ifnull +8 -> 1188
    //   1183: aload 14
    //   1185: invokevirtual 181	java/io/InputStream:close	()V
    //   1188: getstatic 72	java/lang/System:out	Ljava/io/PrintStream;
    //   1191: new 74	java/lang/StringBuilder
    //   1194: dup
    //   1195: invokespecial 75	java/lang/StringBuilder:<init>	()V
    //   1198: ldc 77
    //   1200: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1203: aload_0
    //   1204: getfield 41	com/estrongs/android/pop/multicopy/a:d	I
    //   1207: invokevirtual 84	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   1210: ldc -73
    //   1212: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1215: new 88	java/text/SimpleDateFormat
    //   1218: dup
    //   1219: ldc 90
    //   1221: invokespecial 92	java/text/SimpleDateFormat:<init>	(Ljava/lang/String;)V
    //   1224: new 94	java/util/Date
    //   1227: dup
    //   1228: invokespecial 95	java/util/Date:<init>	()V
    //   1231: invokevirtual 99	java/text/SimpleDateFormat:format	(Ljava/util/Date;)Ljava/lang/String;
    //   1234: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1237: invokevirtual 103	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1240: invokevirtual 108	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   1243: return
    //   1244: astore 10
    //   1246: getstatic 72	java/lang/System:out	Ljava/io/PrintStream;
    //   1249: new 74	java/lang/StringBuilder
    //   1252: dup
    //   1253: invokespecial 75	java/lang/StringBuilder:<init>	()V
    //   1256: ldc -71
    //   1258: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1261: aload 10
    //   1263: invokevirtual 189	java/io/IOException:getStackTrace	()[Ljava/lang/StackTraceElement;
    //   1266: invokevirtual 192	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   1269: invokevirtual 103	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1272: invokevirtual 108	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   1275: goto -87 -> 1188
    //   1278: astore 14
    //   1280: aload 13
    //   1282: astore 12
    //   1284: aload 11
    //   1286: astore 10
    //   1288: aload 14
    //   1290: invokevirtual 206	java/lang/Exception:printStackTrace	()V
    //   1293: aload 13
    //   1295: ifnull +8 -> 1303
    //   1298: aload 13
    //   1300: invokevirtual 180	java/io/OutputStream:close	()V
    //   1303: aload 11
    //   1305: ifnull +8 -> 1313
    //   1308: aload 11
    //   1310: invokevirtual 181	java/io/InputStream:close	()V
    //   1313: getstatic 72	java/lang/System:out	Ljava/io/PrintStream;
    //   1316: new 74	java/lang/StringBuilder
    //   1319: dup
    //   1320: invokespecial 75	java/lang/StringBuilder:<init>	()V
    //   1323: ldc 77
    //   1325: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1328: aload_0
    //   1329: getfield 41	com/estrongs/android/pop/multicopy/a:d	I
    //   1332: invokevirtual 84	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   1335: ldc -73
    //   1337: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1340: new 88	java/text/SimpleDateFormat
    //   1343: dup
    //   1344: ldc 90
    //   1346: invokespecial 92	java/text/SimpleDateFormat:<init>	(Ljava/lang/String;)V
    //   1349: new 94	java/util/Date
    //   1352: dup
    //   1353: invokespecial 95	java/util/Date:<init>	()V
    //   1356: invokevirtual 99	java/text/SimpleDateFormat:format	(Ljava/util/Date;)Ljava/lang/String;
    //   1359: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1362: invokevirtual 103	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1365: invokevirtual 108	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   1368: return
    //   1369: astore 10
    //   1371: getstatic 72	java/lang/System:out	Ljava/io/PrintStream;
    //   1374: new 74	java/lang/StringBuilder
    //   1377: dup
    //   1378: invokespecial 75	java/lang/StringBuilder:<init>	()V
    //   1381: ldc -71
    //   1383: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1386: aload 10
    //   1388: invokevirtual 189	java/io/IOException:getStackTrace	()[Ljava/lang/StackTraceElement;
    //   1391: invokevirtual 192	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   1394: invokevirtual 103	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1397: invokevirtual 108	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   1400: goto -87 -> 1313
    //   1403: astore 11
    //   1405: aload 12
    //   1407: ifnull +8 -> 1415
    //   1410: aload 12
    //   1412: invokevirtual 180	java/io/OutputStream:close	()V
    //   1415: aload 10
    //   1417: ifnull +8 -> 1425
    //   1420: aload 10
    //   1422: invokevirtual 181	java/io/InputStream:close	()V
    //   1425: getstatic 72	java/lang/System:out	Ljava/io/PrintStream;
    //   1428: new 74	java/lang/StringBuilder
    //   1431: dup
    //   1432: invokespecial 75	java/lang/StringBuilder:<init>	()V
    //   1435: ldc 77
    //   1437: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1440: aload_0
    //   1441: getfield 41	com/estrongs/android/pop/multicopy/a:d	I
    //   1444: invokevirtual 84	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   1447: ldc -73
    //   1449: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1452: new 88	java/text/SimpleDateFormat
    //   1455: dup
    //   1456: ldc 90
    //   1458: invokespecial 92	java/text/SimpleDateFormat:<init>	(Ljava/lang/String;)V
    //   1461: new 94	java/util/Date
    //   1464: dup
    //   1465: invokespecial 95	java/util/Date:<init>	()V
    //   1468: invokevirtual 99	java/text/SimpleDateFormat:format	(Ljava/util/Date;)Ljava/lang/String;
    //   1471: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1474: invokevirtual 103	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1477: invokevirtual 108	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   1480: aload 11
    //   1482: athrow
    //   1483: astore 10
    //   1485: getstatic 72	java/lang/System:out	Ljava/io/PrintStream;
    //   1488: new 74	java/lang/StringBuilder
    //   1491: dup
    //   1492: invokespecial 75	java/lang/StringBuilder:<init>	()V
    //   1495: ldc -71
    //   1497: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1500: aload 10
    //   1502: invokevirtual 189	java/io/IOException:getStackTrace	()[Ljava/lang/StackTraceElement;
    //   1505: invokevirtual 192	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   1508: invokevirtual 103	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1511: invokevirtual 108	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   1514: goto -89 -> 1425
    //   1517: astore 10
    //   1519: goto -872 -> 647
    //   1522: astore 10
    //   1524: goto -477 -> 1047
    //   1527: astore 10
    //   1529: goto -351 -> 1178
    //   1532: astore 10
    //   1534: goto -231 -> 1303
    //   1537: astore 12
    //   1539: goto -124 -> 1415
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	1542	0	this	a
    //   574	387	1	m	int
    //   62	335	2	bool1	boolean
    //   1028	6	3	bool2	boolean
    //   255	777	4	l1	long
    //   125	905	6	l2	long
    //   622	7	8	l3	long
    //   116	637	10	localObject1	Object
    //   770	18	10	localIOException1	java.io.IOException
    //   818	202	10	localObject2	Object
    //   1113	18	10	localIOException2	java.io.IOException
    //   1161	1	10	localObject3	Object
    //   1244	18	10	localIOException3	java.io.IOException
    //   1286	1	10	localObject4	Object
    //   1369	52	10	localIOException4	java.io.IOException
    //   1483	18	10	localIOException5	java.io.IOException
    //   1517	1	10	localIOException6	java.io.IOException
    //   1522	1	10	localIOException7	java.io.IOException
    //   1527	1	10	localIOException8	java.io.IOException
    //   1532	1	10	localIOException9	java.io.IOException
    //   108	1201	11	localObject5	Object
    //   1403	78	11	localObject6	Object
    //   112	1299	12	localObject7	Object
    //   1537	1	12	localIOException10	java.io.IOException
    //   104	1195	13	localOutputStream1	java.io.OutputStream
    //   128	1056	14	localObject8	Object
    //   1278	11	14	localException	Exception
    //   92	1082	15	localOutputStream2	java.io.OutputStream
    //   89	633	16	localObject9	Object
    //   86	632	17	localObject10	Object
    //   83	643	18	localObject11	Object
    //   100	723	19	arrayOfByte	byte[]
    // Exception table:
    //   from	to	target	type
    //   652	657	770	java/io/IOException
    //   1052	1057	1113	java/io/IOException
    //   1183	1188	1244	java/io/IOException
    //   118	127	1278	java/lang/Exception
    //   146	156	1278	java/lang/Exception
    //   172	182	1278	java/lang/Exception
    //   198	207	1278	java/lang/Exception
    //   223	233	1278	java/lang/Exception
    //   249	257	1278	java/lang/Exception
    //   273	286	1278	java/lang/Exception
    //   302	323	1278	java/lang/Exception
    //   339	359	1278	java/lang/Exception
    //   379	396	1278	java/lang/Exception
    //   416	423	1278	java/lang/Exception
    //   439	450	1278	java/lang/Exception
    //   466	473	1278	java/lang/Exception
    //   489	496	1278	java/lang/Exception
    //   512	535	1278	java/lang/Exception
    //   551	575	1278	java/lang/Exception
    //   596	602	1278	java/lang/Exception
    //   618	624	1278	java/lang/Exception
    //   729	735	1278	java/lang/Exception
    //   754	767	1278	java/lang/Exception
    //   820	829	1278	java/lang/Exception
    //   852	861	1278	java/lang/Exception
    //   877	884	1278	java/lang/Exception
    //   900	933	1278	java/lang/Exception
    //   949	978	1278	java/lang/Exception
    //   998	1005	1278	java/lang/Exception
    //   1021	1029	1278	java/lang/Exception
    //   1163	1168	1278	java/lang/Exception
    //   1308	1313	1369	java/io/IOException
    //   118	127	1403	finally
    //   146	156	1403	finally
    //   172	182	1403	finally
    //   198	207	1403	finally
    //   223	233	1403	finally
    //   249	257	1403	finally
    //   273	286	1403	finally
    //   302	323	1403	finally
    //   339	359	1403	finally
    //   379	396	1403	finally
    //   416	423	1403	finally
    //   439	450	1403	finally
    //   466	473	1403	finally
    //   489	496	1403	finally
    //   512	535	1403	finally
    //   551	575	1403	finally
    //   596	602	1403	finally
    //   618	624	1403	finally
    //   729	735	1403	finally
    //   754	767	1403	finally
    //   820	829	1403	finally
    //   852	861	1403	finally
    //   877	884	1403	finally
    //   900	933	1403	finally
    //   949	978	1403	finally
    //   998	1005	1403	finally
    //   1021	1029	1403	finally
    //   1163	1168	1403	finally
    //   1288	1293	1403	finally
    //   1420	1425	1483	java/io/IOException
    //   642	647	1517	java/io/IOException
    //   1042	1047	1522	java/io/IOException
    //   1173	1178	1527	java/io/IOException
    //   1298	1303	1532	java/io/IOException
    //   1410	1415	1537	java/io/IOException
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.multicopy.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */