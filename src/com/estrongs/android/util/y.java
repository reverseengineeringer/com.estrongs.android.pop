package com.estrongs.android.util;

import java.io.File;

public class y
{
  public final int a = 0;
  public final int b = 1;
  public int c = 0;
  public Object d = null;
  public Object e = null;
  private final int f = 20000;
  private final int g = 60000;
  private final String h = ".tmp";
  private String i = null;
  private String j = null;
  private String k = null;
  private ab l = null;
  private long m = -1L;
  private long n = 0L;
  private Object o = null;
  private Thread p = null;
  private boolean q = false;
  private boolean r = true;
  private String s = "GET";
  private Object[] t = null;
  
  public y(String paramString)
  {
    j = paramString;
  }
  
  private void j()
  {
    p = new z(this);
    p.start();
  }
  
  /* Error */
  private void k()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 12
    //   3: aconst_null
    //   4: astore 7
    //   6: aconst_null
    //   7: astore 13
    //   9: aconst_null
    //   10: astore 11
    //   12: aconst_null
    //   13: astore 8
    //   15: aload 13
    //   17: astore 9
    //   19: aload 12
    //   21: astore 10
    //   23: new 103	java/net/URL
    //   26: dup
    //   27: aload_0
    //   28: getfield 56	com/estrongs/android/util/y:j	Ljava/lang/String;
    //   31: invokestatic 109	com/estrongs/android/util/am:bC	(Ljava/lang/String;)Ljava/lang/String;
    //   34: invokespecial 111	java/net/URL:<init>	(Ljava/lang/String;)V
    //   37: astore 14
    //   39: aload 13
    //   41: astore 9
    //   43: aload 12
    //   45: astore 10
    //   47: aload_0
    //   48: getfield 48	com/estrongs/android/util/y:c	I
    //   51: ifne +1355 -> 1406
    //   54: aload 13
    //   56: astore 9
    //   58: aload 12
    //   60: astore 10
    //   62: aload_0
    //   63: getfield 58	com/estrongs/android/util/y:k	Ljava/lang/String;
    //   66: ifnull +1340 -> 1406
    //   69: aload 13
    //   71: astore 9
    //   73: aload 12
    //   75: astore 10
    //   77: new 113	java/io/File
    //   80: dup
    //   81: new 115	java/lang/StringBuilder
    //   84: dup
    //   85: invokespecial 116	java/lang/StringBuilder:<init>	()V
    //   88: aload_0
    //   89: getfield 58	com/estrongs/android/util/y:k	Ljava/lang/String;
    //   92: invokevirtual 120	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   95: ldc 50
    //   97: invokevirtual 120	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   100: invokevirtual 124	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   103: invokespecial 125	java/io/File:<init>	(Ljava/lang/String;)V
    //   106: astore 6
    //   108: aload 13
    //   110: astore 9
    //   112: aload 12
    //   114: astore 10
    //   116: aload 14
    //   118: invokevirtual 129	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   121: checkcast 131	java/net/HttpURLConnection
    //   124: astore 14
    //   126: aload 13
    //   128: astore 9
    //   130: aload 12
    //   132: astore 10
    //   134: aload 14
    //   136: sipush 20000
    //   139: invokevirtual 135	java/net/HttpURLConnection:setConnectTimeout	(I)V
    //   142: aload 13
    //   144: astore 9
    //   146: aload 12
    //   148: astore 10
    //   150: aload 14
    //   152: ldc 40
    //   154: invokevirtual 138	java/net/HttpURLConnection:setReadTimeout	(I)V
    //   157: aload 13
    //   159: astore 9
    //   161: aload 12
    //   163: astore 10
    //   165: aload 14
    //   167: aload_0
    //   168: getfield 82	com/estrongs/android/util/y:s	Ljava/lang/String;
    //   171: invokevirtual 141	java/net/HttpURLConnection:setRequestMethod	(Ljava/lang/String;)V
    //   174: aload 13
    //   176: astore 9
    //   178: aload 12
    //   180: astore 10
    //   182: aload_0
    //   183: getfield 78	com/estrongs/android/util/y:r	Z
    //   186: ifeq +206 -> 392
    //   189: aload 13
    //   191: astore 9
    //   193: aload 12
    //   195: astore 10
    //   197: aload_0
    //   198: getfield 48	com/estrongs/android/util/y:c	I
    //   201: ifne +191 -> 392
    //   204: aload 6
    //   206: ifnull +186 -> 392
    //   209: aload 13
    //   211: astore 9
    //   213: aload 12
    //   215: astore 10
    //   217: aload 6
    //   219: invokevirtual 145	java/io/File:length	()J
    //   222: lconst_0
    //   223: lcmp
    //   224: ifle +168 -> 392
    //   227: aload 13
    //   229: astore 9
    //   231: aload 12
    //   233: astore 10
    //   235: aload_0
    //   236: aload 6
    //   238: invokevirtual 145	java/io/File:length	()J
    //   241: putfield 66	com/estrongs/android/util/y:n	J
    //   244: aload 13
    //   246: astore 9
    //   248: aload 12
    //   250: astore 10
    //   252: aload 14
    //   254: ldc -109
    //   256: new 115	java/lang/StringBuilder
    //   259: dup
    //   260: invokespecial 116	java/lang/StringBuilder:<init>	()V
    //   263: ldc -107
    //   265: invokevirtual 120	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   268: aload_0
    //   269: getfield 66	com/estrongs/android/util/y:n	J
    //   272: invokevirtual 152	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   275: ldc -102
    //   277: invokevirtual 120	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   280: invokevirtual 124	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   283: invokevirtual 158	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   286: aload 13
    //   288: astore 9
    //   290: aload 12
    //   292: astore 10
    //   294: aload_0
    //   295: getfield 84	com/estrongs/android/util/y:t	[Ljava/lang/Object;
    //   298: ifnull +179 -> 477
    //   301: iconst_0
    //   302: istore_1
    //   303: aload 13
    //   305: astore 9
    //   307: aload 12
    //   309: astore 10
    //   311: iload_1
    //   312: aload_0
    //   313: getfield 84	com/estrongs/android/util/y:t	[Ljava/lang/Object;
    //   316: arraylength
    //   317: if_icmpge +160 -> 477
    //   320: aload 13
    //   322: astore 9
    //   324: aload 12
    //   326: astore 10
    //   328: aload 14
    //   330: new 115	java/lang/StringBuilder
    //   333: dup
    //   334: invokespecial 116	java/lang/StringBuilder:<init>	()V
    //   337: ldc -96
    //   339: invokevirtual 120	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   342: aload_0
    //   343: getfield 84	com/estrongs/android/util/y:t	[Ljava/lang/Object;
    //   346: iload_1
    //   347: iconst_0
    //   348: iadd
    //   349: aaload
    //   350: invokevirtual 163	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   353: invokevirtual 124	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   356: new 115	java/lang/StringBuilder
    //   359: dup
    //   360: invokespecial 116	java/lang/StringBuilder:<init>	()V
    //   363: ldc -96
    //   365: invokevirtual 120	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   368: aload_0
    //   369: getfield 84	com/estrongs/android/util/y:t	[Ljava/lang/Object;
    //   372: iload_1
    //   373: iconst_1
    //   374: iadd
    //   375: aaload
    //   376: invokevirtual 163	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   379: invokevirtual 124	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   382: invokevirtual 158	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   385: iload_1
    //   386: iconst_2
    //   387: iadd
    //   388: istore_1
    //   389: goto -86 -> 303
    //   392: aload 13
    //   394: astore 9
    //   396: aload 12
    //   398: astore 10
    //   400: aload_0
    //   401: lconst_0
    //   402: putfield 66	com/estrongs/android/util/y:n	J
    //   405: goto -119 -> 286
    //   408: astore 9
    //   410: aload 7
    //   412: astore 6
    //   414: aload 9
    //   416: astore 7
    //   418: aload 8
    //   420: astore 9
    //   422: aload 6
    //   424: astore 10
    //   426: aload_0
    //   427: getfield 60	com/estrongs/android/util/y:l	Lcom/estrongs/android/util/ab;
    //   430: ifnull +26 -> 456
    //   433: aload 8
    //   435: astore 9
    //   437: aload 6
    //   439: astore 10
    //   441: aload_0
    //   442: getfield 60	com/estrongs/android/util/y:l	Lcom/estrongs/android/util/ab;
    //   445: aload_0
    //   446: getfield 68	com/estrongs/android/util/y:o	Ljava/lang/Object;
    //   449: aload 7
    //   451: invokeinterface 168 3 0
    //   456: aload 6
    //   458: ifnull +8 -> 466
    //   461: aload 6
    //   463: invokevirtual 173	java/io/RandomAccessFile:close	()V
    //   466: aload 8
    //   468: ifnull +8 -> 476
    //   471: aload 8
    //   473: invokevirtual 176	java/io/InputStream:close	()V
    //   476: return
    //   477: aload 13
    //   479: astore 9
    //   481: aload 12
    //   483: astore 10
    //   485: aload 14
    //   487: ldc -78
    //   489: ldc -76
    //   491: invokevirtual 158	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   494: aload 13
    //   496: astore 9
    //   498: aload 12
    //   500: astore 10
    //   502: aload 14
    //   504: ldc -74
    //   506: ldc -76
    //   508: invokevirtual 158	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   511: aload 13
    //   513: astore 9
    //   515: aload 12
    //   517: astore 10
    //   519: aload 14
    //   521: ldc -72
    //   523: ldc -70
    //   525: invokevirtual 158	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   528: aload 13
    //   530: astore 9
    //   532: aload 12
    //   534: astore 10
    //   536: aload_0
    //   537: getfield 82	com/estrongs/android/util/y:s	Ljava/lang/String;
    //   540: ldc -68
    //   542: invokevirtual 194	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   545: ifeq +17 -> 562
    //   548: aload 13
    //   550: astore 9
    //   552: aload 12
    //   554: astore 10
    //   556: aload 14
    //   558: iconst_1
    //   559: invokevirtual 198	java/net/HttpURLConnection:setDoOutput	(Z)V
    //   562: aload 13
    //   564: astore 9
    //   566: aload 12
    //   568: astore 10
    //   570: aload 14
    //   572: invokevirtual 201	java/net/HttpURLConnection:connect	()V
    //   575: aload 13
    //   577: astore 9
    //   579: aload 12
    //   581: astore 10
    //   583: aload_0
    //   584: getfield 66	com/estrongs/android/util/y:n	J
    //   587: lconst_0
    //   588: lcmp
    //   589: ifle +35 -> 624
    //   592: aload 13
    //   594: astore 9
    //   596: aload 12
    //   598: astore 10
    //   600: aload 14
    //   602: invokevirtual 205	java/net/HttpURLConnection:getResponseCode	()I
    //   605: sipush 206
    //   608: if_icmpeq +16 -> 624
    //   611: aload 13
    //   613: astore 9
    //   615: aload 12
    //   617: astore 10
    //   619: aload_0
    //   620: lconst_0
    //   621: putfield 66	com/estrongs/android/util/y:n	J
    //   624: aload 13
    //   626: astore 9
    //   628: aload 12
    //   630: astore 10
    //   632: aload_0
    //   633: getfield 60	com/estrongs/android/util/y:l	Lcom/estrongs/android/util/ab;
    //   636: ifnull +24 -> 660
    //   639: aload 13
    //   641: astore 9
    //   643: aload 12
    //   645: astore 10
    //   647: aload_0
    //   648: getfield 60	com/estrongs/android/util/y:l	Lcom/estrongs/android/util/ab;
    //   651: aload_0
    //   652: getfield 68	com/estrongs/android/util/y:o	Ljava/lang/Object;
    //   655: invokeinterface 208 2 0
    //   660: aload 13
    //   662: astore 9
    //   664: aload 12
    //   666: astore 10
    //   668: aload_0
    //   669: getfield 66	com/estrongs/android/util/y:n	J
    //   672: lconst_0
    //   673: lcmp
    //   674: ifne +36 -> 710
    //   677: aload 6
    //   679: ifnull +31 -> 710
    //   682: aload 13
    //   684: astore 9
    //   686: aload 12
    //   688: astore 10
    //   690: aload 6
    //   692: invokevirtual 212	java/io/File:delete	()Z
    //   695: pop
    //   696: aload 13
    //   698: astore 9
    //   700: aload 12
    //   702: astore 10
    //   704: aload 6
    //   706: invokevirtual 215	java/io/File:createNewFile	()Z
    //   709: pop
    //   710: aload 6
    //   712: ifnull +688 -> 1400
    //   715: aload 13
    //   717: astore 9
    //   719: aload 12
    //   721: astore 10
    //   723: new 170	java/io/RandomAccessFile
    //   726: dup
    //   727: aload 6
    //   729: ldc -39
    //   731: invokespecial 220	java/io/RandomAccessFile:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   734: astore 6
    //   736: aload 6
    //   738: aload_0
    //   739: getfield 66	com/estrongs/android/util/y:n	J
    //   742: invokevirtual 224	java/io/RandomAccessFile:seek	(J)V
    //   745: aload_0
    //   746: getfield 72	com/estrongs/android/util/y:q	Z
    //   749: ifeq +57 -> 806
    //   752: aload_0
    //   753: getfield 60	com/estrongs/android/util/y:l	Lcom/estrongs/android/util/ab;
    //   756: ifnull +25 -> 781
    //   759: aload_0
    //   760: getfield 60	com/estrongs/android/util/y:l	Lcom/estrongs/android/util/ab;
    //   763: aload_0
    //   764: getfield 68	com/estrongs/android/util/y:o	Ljava/lang/Object;
    //   767: new 101	java/lang/Exception
    //   770: dup
    //   771: ldc -30
    //   773: invokespecial 227	java/lang/Exception:<init>	(Ljava/lang/String;)V
    //   776: invokeinterface 168 3 0
    //   781: aload 6
    //   783: ifnull +8 -> 791
    //   786: aload 6
    //   788: invokevirtual 173	java/io/RandomAccessFile:close	()V
    //   791: iconst_0
    //   792: ifeq -316 -> 476
    //   795: new 229	java/lang/NullPointerException
    //   798: dup
    //   799: invokespecial 230	java/lang/NullPointerException:<init>	()V
    //   802: athrow
    //   803: astore 6
    //   805: return
    //   806: aload 14
    //   808: invokevirtual 234	java/net/HttpURLConnection:getInputStream	()Ljava/io/InputStream;
    //   811: astore 7
    //   813: aload_0
    //   814: aload 14
    //   816: invokevirtual 237	java/net/HttpURLConnection:getContentLength	()I
    //   819: i2l
    //   820: aload_0
    //   821: getfield 66	com/estrongs/android/util/y:n	J
    //   824: ladd
    //   825: putfield 64	com/estrongs/android/util/y:m	J
    //   828: aload_0
    //   829: getfield 64	com/estrongs/android/util/y:m	J
    //   832: lconst_0
    //   833: lcmp
    //   834: ifge +56 -> 890
    //   837: aload_0
    //   838: getfield 60	com/estrongs/android/util/y:l	Lcom/estrongs/android/util/ab;
    //   841: ifnull +49 -> 890
    //   844: aload_0
    //   845: getfield 60	com/estrongs/android/util/y:l	Lcom/estrongs/android/util/ab;
    //   848: aload_0
    //   849: getfield 68	com/estrongs/android/util/y:o	Ljava/lang/Object;
    //   852: new 101	java/lang/Exception
    //   855: dup
    //   856: ldc -17
    //   858: invokespecial 227	java/lang/Exception:<init>	(Ljava/lang/String;)V
    //   861: invokeinterface 168 3 0
    //   866: aload 6
    //   868: ifnull +8 -> 876
    //   871: aload 6
    //   873: invokevirtual 173	java/io/RandomAccessFile:close	()V
    //   876: aload 7
    //   878: ifnull -402 -> 476
    //   881: aload 7
    //   883: invokevirtual 176	java/io/InputStream:close	()V
    //   886: return
    //   887: astore 6
    //   889: return
    //   890: aload_0
    //   891: getfield 48	com/estrongs/android/util/y:c	I
    //   894: iconst_1
    //   895: if_icmpne +146 -> 1041
    //   898: aload_0
    //   899: getfield 64	com/estrongs/android/util/y:m	J
    //   902: l2i
    //   903: newarray <illegal type>
    //   905: astore 8
    //   907: aload_0
    //   908: getfield 60	com/estrongs/android/util/y:l	Lcom/estrongs/android/util/ab;
    //   911: ifnull +501 -> 1412
    //   914: aload_0
    //   915: getfield 60	com/estrongs/android/util/y:l	Lcom/estrongs/android/util/ab;
    //   918: aload_0
    //   919: getfield 68	com/estrongs/android/util/y:o	Ljava/lang/Object;
    //   922: aload_0
    //   923: getfield 64	com/estrongs/android/util/y:m	J
    //   926: aload_0
    //   927: getfield 66	com/estrongs/android/util/y:n	J
    //   930: invokeinterface 242 6 0
    //   935: goto +477 -> 1412
    //   938: aload 7
    //   940: aload 8
    //   942: iload_2
    //   943: aload 8
    //   945: arraylength
    //   946: iload_2
    //   947: isub
    //   948: invokevirtual 246	java/io/InputStream:read	([BII)I
    //   951: istore_3
    //   952: iload_3
    //   953: ifle +98 -> 1051
    //   956: aload_0
    //   957: getfield 66	com/estrongs/android/util/y:n	J
    //   960: aload_0
    //   961: getfield 64	com/estrongs/android/util/y:m	J
    //   964: lcmp
    //   965: ifge +86 -> 1051
    //   968: aload_0
    //   969: getfield 72	com/estrongs/android/util/y:q	Z
    //   972: ifne +79 -> 1051
    //   975: aload 6
    //   977: ifnull +453 -> 1430
    //   980: aload 6
    //   982: aload 8
    //   984: iconst_0
    //   985: iload_3
    //   986: invokevirtual 250	java/io/RandomAccessFile:write	([BII)V
    //   989: iconst_0
    //   990: istore_1
    //   991: aload_0
    //   992: getfield 66	com/estrongs/android/util/y:n	J
    //   995: lstore 4
    //   997: aload_0
    //   998: iload_3
    //   999: i2l
    //   1000: lload 4
    //   1002: ladd
    //   1003: putfield 66	com/estrongs/android/util/y:n	J
    //   1006: iload_1
    //   1007: istore_2
    //   1008: aload_0
    //   1009: getfield 60	com/estrongs/android/util/y:l	Lcom/estrongs/android/util/ab;
    //   1012: ifnull -74 -> 938
    //   1015: aload_0
    //   1016: getfield 60	com/estrongs/android/util/y:l	Lcom/estrongs/android/util/ab;
    //   1019: aload_0
    //   1020: getfield 68	com/estrongs/android/util/y:o	Ljava/lang/Object;
    //   1023: aload_0
    //   1024: getfield 64	com/estrongs/android/util/y:m	J
    //   1027: aload_0
    //   1028: getfield 66	com/estrongs/android/util/y:n	J
    //   1031: invokeinterface 242 6 0
    //   1036: iload_1
    //   1037: istore_2
    //   1038: goto -100 -> 938
    //   1041: sipush 16384
    //   1044: newarray <illegal type>
    //   1046: astore 8
    //   1048: goto -141 -> 907
    //   1051: aload_0
    //   1052: getfield 72	com/estrongs/android/util/y:q	Z
    //   1055: ifeq +56 -> 1111
    //   1058: aload_0
    //   1059: getfield 60	com/estrongs/android/util/y:l	Lcom/estrongs/android/util/ab;
    //   1062: ifnull +25 -> 1087
    //   1065: aload_0
    //   1066: getfield 60	com/estrongs/android/util/y:l	Lcom/estrongs/android/util/ab;
    //   1069: aload_0
    //   1070: getfield 68	com/estrongs/android/util/y:o	Ljava/lang/Object;
    //   1073: new 101	java/lang/Exception
    //   1076: dup
    //   1077: ldc -30
    //   1079: invokespecial 227	java/lang/Exception:<init>	(Ljava/lang/String;)V
    //   1082: invokeinterface 168 3 0
    //   1087: aload 6
    //   1089: ifnull +8 -> 1097
    //   1092: aload 6
    //   1094: invokevirtual 173	java/io/RandomAccessFile:close	()V
    //   1097: aload 7
    //   1099: ifnull -623 -> 476
    //   1102: aload 7
    //   1104: invokevirtual 176	java/io/InputStream:close	()V
    //   1107: return
    //   1108: astore 6
    //   1110: return
    //   1111: aload 14
    //   1113: invokevirtual 205	java/net/HttpURLConnection:getResponseCode	()I
    //   1116: sipush 300
    //   1119: if_icmplt +56 -> 1175
    //   1122: aload_0
    //   1123: getfield 60	com/estrongs/android/util/y:l	Lcom/estrongs/android/util/ab;
    //   1126: ifnull +25 -> 1151
    //   1129: aload_0
    //   1130: getfield 60	com/estrongs/android/util/y:l	Lcom/estrongs/android/util/ab;
    //   1133: aload_0
    //   1134: getfield 68	com/estrongs/android/util/y:o	Ljava/lang/Object;
    //   1137: new 101	java/lang/Exception
    //   1140: dup
    //   1141: ldc -17
    //   1143: invokespecial 227	java/lang/Exception:<init>	(Ljava/lang/String;)V
    //   1146: invokeinterface 168 3 0
    //   1151: aload 6
    //   1153: ifnull +8 -> 1161
    //   1156: aload 6
    //   1158: invokevirtual 173	java/io/RandomAccessFile:close	()V
    //   1161: aload 7
    //   1163: ifnull -687 -> 476
    //   1166: aload 7
    //   1168: invokevirtual 176	java/io/InputStream:close	()V
    //   1171: return
    //   1172: astore 6
    //   1174: return
    //   1175: aload_0
    //   1176: getfield 48	com/estrongs/android/util/y:c	I
    //   1179: iconst_1
    //   1180: if_icmpne +16 -> 1196
    //   1183: aload_0
    //   1184: new 190	java/lang/String
    //   1187: dup
    //   1188: aload 8
    //   1190: invokespecial 253	java/lang/String:<init>	([B)V
    //   1193: putfield 54	com/estrongs/android/util/y:i	Ljava/lang/String;
    //   1196: aload 6
    //   1198: ifnull +199 -> 1397
    //   1201: aload 6
    //   1203: invokevirtual 173	java/io/RandomAccessFile:close	()V
    //   1206: aload_0
    //   1207: invokespecial 255	com/estrongs/android/util/y:l	()V
    //   1210: aconst_null
    //   1211: astore 6
    //   1213: aload_0
    //   1214: getfield 60	com/estrongs/android/util/y:l	Lcom/estrongs/android/util/ab;
    //   1217: ifnull +16 -> 1233
    //   1220: aload_0
    //   1221: getfield 60	com/estrongs/android/util/y:l	Lcom/estrongs/android/util/ab;
    //   1224: aload_0
    //   1225: getfield 68	com/estrongs/android/util/y:o	Ljava/lang/Object;
    //   1228: invokeinterface 257 2 0
    //   1233: aload 6
    //   1235: ifnull +8 -> 1243
    //   1238: aload 6
    //   1240: invokevirtual 173	java/io/RandomAccessFile:close	()V
    //   1243: aload 7
    //   1245: ifnull -769 -> 476
    //   1248: aload 7
    //   1250: invokevirtual 176	java/io/InputStream:close	()V
    //   1253: return
    //   1254: astore 6
    //   1256: return
    //   1257: astore 6
    //   1259: aload 10
    //   1261: astore 7
    //   1263: aload 9
    //   1265: astore 8
    //   1267: aload 7
    //   1269: ifnull +8 -> 1277
    //   1272: aload 7
    //   1274: invokevirtual 173	java/io/RandomAccessFile:close	()V
    //   1277: aload 8
    //   1279: ifnull +8 -> 1287
    //   1282: aload 8
    //   1284: invokevirtual 176	java/io/InputStream:close	()V
    //   1287: aload 6
    //   1289: athrow
    //   1290: astore 7
    //   1292: goto -5 -> 1287
    //   1295: astore 8
    //   1297: aload 6
    //   1299: astore 7
    //   1301: aload 8
    //   1303: astore 6
    //   1305: aload 11
    //   1307: astore 8
    //   1309: goto -42 -> 1267
    //   1312: astore 8
    //   1314: aload 6
    //   1316: astore 7
    //   1318: aload 8
    //   1320: astore 6
    //   1322: aload 11
    //   1324: astore 8
    //   1326: goto -59 -> 1267
    //   1329: astore 8
    //   1331: aload 6
    //   1333: astore 9
    //   1335: aload 8
    //   1337: astore 6
    //   1339: aload 7
    //   1341: astore 8
    //   1343: aload 9
    //   1345: astore 7
    //   1347: goto -80 -> 1267
    //   1350: astore 8
    //   1352: aload 6
    //   1354: astore 9
    //   1356: aload 8
    //   1358: astore 6
    //   1360: aload 7
    //   1362: astore 8
    //   1364: aload 9
    //   1366: astore 7
    //   1368: goto -101 -> 1267
    //   1371: astore 6
    //   1373: return
    //   1374: astore 7
    //   1376: goto -958 -> 418
    //   1379: astore 7
    //   1381: goto -963 -> 418
    //   1384: astore 9
    //   1386: aload 7
    //   1388: astore 8
    //   1390: aload 9
    //   1392: astore 7
    //   1394: goto -976 -> 418
    //   1397: goto -184 -> 1213
    //   1400: aconst_null
    //   1401: astore 6
    //   1403: goto -658 -> 745
    //   1406: aconst_null
    //   1407: astore 6
    //   1409: goto -1301 -> 108
    //   1412: iconst_0
    //   1413: istore_2
    //   1414: goto -476 -> 938
    //   1417: astore 9
    //   1419: aload 7
    //   1421: astore 8
    //   1423: aload 9
    //   1425: astore 7
    //   1427: goto -1009 -> 418
    //   1430: iload_2
    //   1431: iload_3
    //   1432: iadd
    //   1433: istore_1
    //   1434: goto -443 -> 991
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	1437	0	this	y
    //   302	1132	1	i1	int
    //   942	491	2	i2	int
    //   951	482	3	i3	int
    //   995	6	4	l1	long
    //   106	681	6	localObject1	Object
    //   803	69	6	localException1	Exception
    //   887	206	6	localException2	Exception
    //   1108	49	6	localException3	Exception
    //   1172	30	6	localException4	Exception
    //   1211	28	6	localObject2	Object
    //   1254	1	6	localException5	Exception
    //   1257	41	6	localObject3	Object
    //   1303	56	6	localObject4	Object
    //   1371	1	6	localException6	Exception
    //   1401	7	6	localObject5	Object
    //   4	1269	7	localObject6	Object
    //   1290	1	7	localException7	Exception
    //   1299	68	7	localObject7	Object
    //   1374	1	7	localThrowable1	Throwable
    //   1379	8	7	localThrowable2	Throwable
    //   1392	34	7	localObject8	Object
    //   13	1270	8	localObject9	Object
    //   1295	7	8	localObject10	Object
    //   1307	1	8	localObject11	Object
    //   1312	7	8	localObject12	Object
    //   1324	1	8	localObject13	Object
    //   1329	7	8	localObject14	Object
    //   1341	1	8	localObject15	Object
    //   1350	7	8	localObject16	Object
    //   1362	60	8	localObject17	Object
    //   17	378	9	localObject18	Object
    //   408	7	9	localThrowable3	Throwable
    //   420	945	9	localObject19	Object
    //   1384	7	9	localThrowable4	Throwable
    //   1417	7	9	localThrowable5	Throwable
    //   21	1239	10	localObject20	Object
    //   10	1313	11	localObject21	Object
    //   1	719	12	localObject22	Object
    //   7	709	13	localObject23	Object
    //   37	1075	14	localObject24	Object
    // Exception table:
    //   from	to	target	type
    //   23	39	408	java/lang/Throwable
    //   47	54	408	java/lang/Throwable
    //   62	69	408	java/lang/Throwable
    //   77	108	408	java/lang/Throwable
    //   116	126	408	java/lang/Throwable
    //   134	142	408	java/lang/Throwable
    //   150	157	408	java/lang/Throwable
    //   165	174	408	java/lang/Throwable
    //   182	189	408	java/lang/Throwable
    //   197	204	408	java/lang/Throwable
    //   217	227	408	java/lang/Throwable
    //   235	244	408	java/lang/Throwable
    //   252	286	408	java/lang/Throwable
    //   294	301	408	java/lang/Throwable
    //   311	320	408	java/lang/Throwable
    //   328	385	408	java/lang/Throwable
    //   400	405	408	java/lang/Throwable
    //   485	494	408	java/lang/Throwable
    //   502	511	408	java/lang/Throwable
    //   519	528	408	java/lang/Throwable
    //   536	548	408	java/lang/Throwable
    //   556	562	408	java/lang/Throwable
    //   570	575	408	java/lang/Throwable
    //   583	592	408	java/lang/Throwable
    //   600	611	408	java/lang/Throwable
    //   619	624	408	java/lang/Throwable
    //   632	639	408	java/lang/Throwable
    //   647	660	408	java/lang/Throwable
    //   668	677	408	java/lang/Throwable
    //   690	696	408	java/lang/Throwable
    //   704	710	408	java/lang/Throwable
    //   723	736	408	java/lang/Throwable
    //   786	791	803	java/lang/Exception
    //   795	803	803	java/lang/Exception
    //   871	876	887	java/lang/Exception
    //   881	886	887	java/lang/Exception
    //   1092	1097	1108	java/lang/Exception
    //   1102	1107	1108	java/lang/Exception
    //   1156	1161	1172	java/lang/Exception
    //   1166	1171	1172	java/lang/Exception
    //   1238	1243	1254	java/lang/Exception
    //   1248	1253	1254	java/lang/Exception
    //   23	39	1257	finally
    //   47	54	1257	finally
    //   62	69	1257	finally
    //   77	108	1257	finally
    //   116	126	1257	finally
    //   134	142	1257	finally
    //   150	157	1257	finally
    //   165	174	1257	finally
    //   182	189	1257	finally
    //   197	204	1257	finally
    //   217	227	1257	finally
    //   235	244	1257	finally
    //   252	286	1257	finally
    //   294	301	1257	finally
    //   311	320	1257	finally
    //   328	385	1257	finally
    //   400	405	1257	finally
    //   426	433	1257	finally
    //   441	456	1257	finally
    //   485	494	1257	finally
    //   502	511	1257	finally
    //   519	528	1257	finally
    //   536	548	1257	finally
    //   556	562	1257	finally
    //   570	575	1257	finally
    //   583	592	1257	finally
    //   600	611	1257	finally
    //   619	624	1257	finally
    //   632	639	1257	finally
    //   647	660	1257	finally
    //   668	677	1257	finally
    //   690	696	1257	finally
    //   704	710	1257	finally
    //   723	736	1257	finally
    //   1272	1277	1290	java/lang/Exception
    //   1282	1287	1290	java/lang/Exception
    //   736	745	1295	finally
    //   745	781	1312	finally
    //   806	813	1312	finally
    //   813	866	1329	finally
    //   890	907	1329	finally
    //   907	935	1329	finally
    //   938	952	1329	finally
    //   956	975	1329	finally
    //   980	989	1329	finally
    //   991	1006	1329	finally
    //   1008	1036	1329	finally
    //   1041	1048	1329	finally
    //   1051	1087	1329	finally
    //   1111	1151	1329	finally
    //   1175	1196	1329	finally
    //   1201	1210	1329	finally
    //   1213	1233	1350	finally
    //   461	466	1371	java/lang/Exception
    //   471	476	1371	java/lang/Exception
    //   736	745	1374	java/lang/Throwable
    //   745	781	1379	java/lang/Throwable
    //   806	813	1379	java/lang/Throwable
    //   1213	1233	1384	java/lang/Throwable
    //   813	866	1417	java/lang/Throwable
    //   890	907	1417	java/lang/Throwable
    //   907	935	1417	java/lang/Throwable
    //   938	952	1417	java/lang/Throwable
    //   956	975	1417	java/lang/Throwable
    //   980	989	1417	java/lang/Throwable
    //   991	1006	1417	java/lang/Throwable
    //   1008	1036	1417	java/lang/Throwable
    //   1041	1048	1417	java/lang/Throwable
    //   1051	1087	1417	java/lang/Throwable
    //   1111	1151	1417	java/lang/Throwable
    //   1175	1196	1417	java/lang/Throwable
    //   1201	1210	1417	java/lang/Throwable
  }
  
  private void l()
  {
    try
    {
      File localFile = new File(k);
      if (localFile.exists()) {
        localFile.delete();
      }
      new File(k + ".tmp").renameTo(localFile);
      return;
    }
    catch (Exception localException) {}
  }
  
  public long a()
  {
    return n;
  }
  
  public void a(ab paramab)
  {
    l = paramab;
  }
  
  public void a(Object paramObject)
  {
    o = paramObject;
  }
  
  public void a(String paramString)
  {
    try
    {
      new File(am.bk(paramString)).mkdirs();
      k = paramString;
      return;
    }
    catch (Exception localException)
    {
      for (;;) {}
    }
  }
  
  public void b()
  {
    q = true;
    try
    {
      p.join(1000L);
      return;
    }
    catch (Exception localException) {}
  }
  
  public void c()
  {
    n = 0L;
    j();
  }
  
  public String d()
  {
    return i;
  }
  
  public String e()
  {
    return k;
  }
  
  public void f()
  {
    if (n == 0L) {
      n = new File(k + ".tmp").length();
    }
    p = new aa(this);
    p.start();
  }
  
  public long g()
  {
    return m;
  }
  
  public void h()
  {
    new File(k).delete();
  }
  
  public boolean i()
  {
    return q;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.util.y
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */