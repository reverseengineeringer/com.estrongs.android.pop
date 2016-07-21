package com.estrongs.android.util;

import java.io.File;
import java.security.SecureRandom;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;

public class aa
{
  private static boolean u = false;
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
  private af l = null;
  private long m = -1L;
  private long n = 0L;
  private Object o = null;
  private Thread p = null;
  private boolean q = false;
  private boolean r = true;
  private byte[] s;
  private boolean t = false;
  private String v = "GET";
  private Object[] w = null;
  
  public aa(String paramString)
  {
    j = paramString;
    if (!u)
    {
      u = true;
      paramString = new ab(this);
    }
    try
    {
      HttpsURLConnection.setDefaultHostnameVerifier(new ag(null));
      SSLContext localSSLContext = SSLContext.getInstance("SSL");
      SecureRandom localSecureRandom = new SecureRandom();
      localSSLContext.init(null, new TrustManager[] { paramString }, localSecureRandom);
      HttpsURLConnection.setDefaultSSLSocketFactory(localSSLContext.getSocketFactory());
      return;
    }
    catch (Exception paramString)
    {
      paramString.printStackTrace();
    }
  }
  
  private void k()
  {
    p = new ac(this);
    p.setName("HttpDownloader");
    p.start();
  }
  
  /* Error */
  private void l()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 12
    //   3: aconst_null
    //   4: astore 11
    //   6: aconst_null
    //   7: astore 10
    //   9: aconst_null
    //   10: astore 13
    //   12: aconst_null
    //   13: astore 7
    //   15: aload 13
    //   17: astore 9
    //   19: aload 12
    //   21: astore 8
    //   23: new 163	java/net/URL
    //   26: dup
    //   27: aload_0
    //   28: getfield 66	com/estrongs/android/util/aa:j	Ljava/lang/String;
    //   31: ldc -91
    //   33: invokestatic 171	android/net/Uri:encode	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   36: invokespecial 173	java/net/URL:<init>	(Ljava/lang/String;)V
    //   39: astore 5
    //   41: aload 13
    //   43: astore 9
    //   45: aload 12
    //   47: astore 8
    //   49: aload 5
    //   51: invokevirtual 177	java/net/URL:getQuery	()Ljava/lang/String;
    //   54: astore 6
    //   56: aload 6
    //   58: ifnull +1680 -> 1738
    //   61: aload 13
    //   63: astore 9
    //   65: aload 12
    //   67: astore 8
    //   69: aload 6
    //   71: invokevirtual 182	java/lang/String:toLowerCase	()Ljava/lang/String;
    //   74: ldc -72
    //   76: invokevirtual 188	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   79: ifne +1659 -> 1738
    //   82: aload 13
    //   84: astore 9
    //   86: aload 12
    //   88: astore 8
    //   90: new 163	java/net/URL
    //   93: dup
    //   94: aload_0
    //   95: getfield 66	com/estrongs/android/util/aa:j	Ljava/lang/String;
    //   98: invokestatic 194	com/estrongs/android/util/ap:bT	(Ljava/lang/String;)Ljava/lang/String;
    //   101: invokespecial 173	java/net/URL:<init>	(Ljava/lang/String;)V
    //   104: astore 5
    //   106: aload 13
    //   108: astore 9
    //   110: aload 12
    //   112: astore 8
    //   114: aload_0
    //   115: getfield 58	com/estrongs/android/util/aa:c	I
    //   118: ifne +1614 -> 1732
    //   121: aload 13
    //   123: astore 9
    //   125: aload 12
    //   127: astore 8
    //   129: aload_0
    //   130: getfield 68	com/estrongs/android/util/aa:k	Ljava/lang/String;
    //   133: ifnull +1599 -> 1732
    //   136: aload 13
    //   138: astore 9
    //   140: aload 12
    //   142: astore 8
    //   144: new 196	java/io/File
    //   147: dup
    //   148: new 198	java/lang/StringBuilder
    //   151: dup
    //   152: invokespecial 199	java/lang/StringBuilder:<init>	()V
    //   155: aload_0
    //   156: getfield 68	com/estrongs/android/util/aa:k	Ljava/lang/String;
    //   159: invokevirtual 203	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   162: ldc 60
    //   164: invokevirtual 203	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   167: invokevirtual 206	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   170: invokespecial 207	java/io/File:<init>	(Ljava/lang/String;)V
    //   173: astore 6
    //   175: aload 13
    //   177: astore 9
    //   179: aload 12
    //   181: astore 8
    //   183: aload 5
    //   185: invokevirtual 211	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   188: checkcast 213	java/net/HttpURLConnection
    //   191: astore 14
    //   193: aload 13
    //   195: astore 9
    //   197: aload 12
    //   199: astore 8
    //   201: aload 14
    //   203: sipush 20000
    //   206: invokevirtual 217	java/net/HttpURLConnection:setConnectTimeout	(I)V
    //   209: aload 13
    //   211: astore 9
    //   213: aload 12
    //   215: astore 8
    //   217: aload 14
    //   219: ldc 50
    //   221: invokevirtual 220	java/net/HttpURLConnection:setReadTimeout	(I)V
    //   224: aload 13
    //   226: astore 9
    //   228: aload 12
    //   230: astore 8
    //   232: aload 14
    //   234: aload_0
    //   235: getfield 94	com/estrongs/android/util/aa:v	Ljava/lang/String;
    //   238: invokevirtual 223	java/net/HttpURLConnection:setRequestMethod	(Ljava/lang/String;)V
    //   241: aload 13
    //   243: astore 9
    //   245: aload 12
    //   247: astore 8
    //   249: aload_0
    //   250: getfield 88	com/estrongs/android/util/aa:r	Z
    //   253: ifeq +206 -> 459
    //   256: aload 13
    //   258: astore 9
    //   260: aload 12
    //   262: astore 8
    //   264: aload_0
    //   265: getfield 58	com/estrongs/android/util/aa:c	I
    //   268: ifne +191 -> 459
    //   271: aload 6
    //   273: ifnull +186 -> 459
    //   276: aload 13
    //   278: astore 9
    //   280: aload 12
    //   282: astore 8
    //   284: aload 6
    //   286: invokevirtual 227	java/io/File:length	()J
    //   289: lconst_0
    //   290: lcmp
    //   291: ifle +168 -> 459
    //   294: aload 13
    //   296: astore 9
    //   298: aload 12
    //   300: astore 8
    //   302: aload_0
    //   303: aload 6
    //   305: invokevirtual 227	java/io/File:length	()J
    //   308: putfield 76	com/estrongs/android/util/aa:n	J
    //   311: aload 13
    //   313: astore 9
    //   315: aload 12
    //   317: astore 8
    //   319: aload 14
    //   321: ldc -27
    //   323: new 198	java/lang/StringBuilder
    //   326: dup
    //   327: invokespecial 199	java/lang/StringBuilder:<init>	()V
    //   330: ldc -25
    //   332: invokevirtual 203	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   335: aload_0
    //   336: getfield 76	com/estrongs/android/util/aa:n	J
    //   339: invokevirtual 234	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   342: ldc -20
    //   344: invokevirtual 203	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   347: invokevirtual 206	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   350: invokevirtual 240	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   353: aload 13
    //   355: astore 9
    //   357: aload 12
    //   359: astore 8
    //   361: aload_0
    //   362: getfield 96	com/estrongs/android/util/aa:w	[Ljava/lang/Object;
    //   365: ifnull +180 -> 545
    //   368: iconst_0
    //   369: istore_1
    //   370: aload 13
    //   372: astore 9
    //   374: aload 12
    //   376: astore 8
    //   378: iload_1
    //   379: aload_0
    //   380: getfield 96	com/estrongs/android/util/aa:w	[Ljava/lang/Object;
    //   383: arraylength
    //   384: if_icmpge +161 -> 545
    //   387: aload 13
    //   389: astore 9
    //   391: aload 12
    //   393: astore 8
    //   395: aload 14
    //   397: new 198	java/lang/StringBuilder
    //   400: dup
    //   401: invokespecial 199	java/lang/StringBuilder:<init>	()V
    //   404: ldc -14
    //   406: invokevirtual 203	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   409: aload_0
    //   410: getfield 96	com/estrongs/android/util/aa:w	[Ljava/lang/Object;
    //   413: iload_1
    //   414: iconst_0
    //   415: iadd
    //   416: aaload
    //   417: invokevirtual 245	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   420: invokevirtual 206	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   423: new 198	java/lang/StringBuilder
    //   426: dup
    //   427: invokespecial 199	java/lang/StringBuilder:<init>	()V
    //   430: ldc -14
    //   432: invokevirtual 203	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   435: aload_0
    //   436: getfield 96	com/estrongs/android/util/aa:w	[Ljava/lang/Object;
    //   439: iload_1
    //   440: iconst_1
    //   441: iadd
    //   442: aaload
    //   443: invokevirtual 245	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   446: invokevirtual 206	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   449: invokevirtual 240	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   452: iload_1
    //   453: iconst_2
    //   454: iadd
    //   455: istore_1
    //   456: goto -86 -> 370
    //   459: aload 13
    //   461: astore 9
    //   463: aload 12
    //   465: astore 8
    //   467: aload_0
    //   468: lconst_0
    //   469: putfield 76	com/estrongs/android/util/aa:n	J
    //   472: goto -119 -> 353
    //   475: astore 6
    //   477: aload 11
    //   479: astore 5
    //   481: aload 7
    //   483: astore 9
    //   485: aload 5
    //   487: astore 8
    //   489: aload_0
    //   490: getfield 70	com/estrongs/android/util/aa:l	Lcom/estrongs/android/util/af;
    //   493: ifnull +26 -> 519
    //   496: aload 7
    //   498: astore 9
    //   500: aload 5
    //   502: astore 8
    //   504: aload_0
    //   505: getfield 70	com/estrongs/android/util/aa:l	Lcom/estrongs/android/util/af;
    //   508: aload_0
    //   509: getfield 78	com/estrongs/android/util/aa:o	Ljava/lang/Object;
    //   512: aload 6
    //   514: invokeinterface 251 3 0
    //   519: aload_0
    //   520: iconst_1
    //   521: putfield 90	com/estrongs/android/util/aa:t	Z
    //   524: aload 5
    //   526: ifnull +8 -> 534
    //   529: aload 5
    //   531: invokevirtual 256	java/io/RandomAccessFile:close	()V
    //   534: aload 7
    //   536: ifnull +8 -> 544
    //   539: aload 7
    //   541: invokevirtual 259	java/io/InputStream:close	()V
    //   544: return
    //   545: aload 13
    //   547: astore 9
    //   549: aload 12
    //   551: astore 8
    //   553: aload 14
    //   555: ldc_w 261
    //   558: ldc_w 263
    //   561: invokevirtual 240	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   564: aload 13
    //   566: astore 9
    //   568: aload 12
    //   570: astore 8
    //   572: aload 14
    //   574: ldc_w 265
    //   577: ldc_w 263
    //   580: invokevirtual 240	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   583: aload 13
    //   585: astore 9
    //   587: aload 12
    //   589: astore 8
    //   591: aload 14
    //   593: ldc_w 267
    //   596: ldc_w 269
    //   599: invokevirtual 240	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   602: aload 13
    //   604: astore 9
    //   606: aload 12
    //   608: astore 8
    //   610: aload_0
    //   611: getfield 94	com/estrongs/android/util/aa:v	Ljava/lang/String;
    //   614: ldc_w 271
    //   617: invokevirtual 275	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   620: ifeq +90 -> 710
    //   623: aload 13
    //   625: astore 9
    //   627: aload 12
    //   629: astore 8
    //   631: aload 14
    //   633: iconst_1
    //   634: invokevirtual 279	java/net/HttpURLConnection:setDoOutput	(Z)V
    //   637: aload 13
    //   639: astore 9
    //   641: aload 12
    //   643: astore 8
    //   645: aload_0
    //   646: getfield 281	com/estrongs/android/util/aa:s	[B
    //   649: ifnull +61 -> 710
    //   652: aload 13
    //   654: astore 9
    //   656: aload 12
    //   658: astore 8
    //   660: aload 14
    //   662: invokevirtual 285	java/net/HttpURLConnection:getOutputStream	()Ljava/io/OutputStream;
    //   665: astore 5
    //   667: aload 13
    //   669: astore 9
    //   671: aload 12
    //   673: astore 8
    //   675: aload 5
    //   677: aload_0
    //   678: getfield 281	com/estrongs/android/util/aa:s	[B
    //   681: invokevirtual 291	java/io/OutputStream:write	([B)V
    //   684: aload 13
    //   686: astore 9
    //   688: aload 12
    //   690: astore 8
    //   692: aload 5
    //   694: invokevirtual 294	java/io/OutputStream:flush	()V
    //   697: aload 13
    //   699: astore 9
    //   701: aload 12
    //   703: astore 8
    //   705: aload 5
    //   707: invokevirtual 295	java/io/OutputStream:close	()V
    //   710: aload 13
    //   712: astore 9
    //   714: aload 12
    //   716: astore 8
    //   718: aload 14
    //   720: invokevirtual 298	java/net/HttpURLConnection:connect	()V
    //   723: aload 13
    //   725: astore 9
    //   727: aload 12
    //   729: astore 8
    //   731: aload_0
    //   732: getfield 76	com/estrongs/android/util/aa:n	J
    //   735: lconst_0
    //   736: lcmp
    //   737: ifle +35 -> 772
    //   740: aload 13
    //   742: astore 9
    //   744: aload 12
    //   746: astore 8
    //   748: aload 14
    //   750: invokevirtual 302	java/net/HttpURLConnection:getResponseCode	()I
    //   753: sipush 206
    //   756: if_icmpeq +16 -> 772
    //   759: aload 13
    //   761: astore 9
    //   763: aload 12
    //   765: astore 8
    //   767: aload_0
    //   768: lconst_0
    //   769: putfield 76	com/estrongs/android/util/aa:n	J
    //   772: aload 13
    //   774: astore 9
    //   776: aload 12
    //   778: astore 8
    //   780: aload_0
    //   781: getfield 70	com/estrongs/android/util/aa:l	Lcom/estrongs/android/util/af;
    //   784: ifnull +24 -> 808
    //   787: aload 13
    //   789: astore 9
    //   791: aload 12
    //   793: astore 8
    //   795: aload_0
    //   796: getfield 70	com/estrongs/android/util/aa:l	Lcom/estrongs/android/util/af;
    //   799: aload_0
    //   800: getfield 78	com/estrongs/android/util/aa:o	Ljava/lang/Object;
    //   803: invokeinterface 306 2 0
    //   808: aload 13
    //   810: astore 9
    //   812: aload 12
    //   814: astore 8
    //   816: aload_0
    //   817: getfield 76	com/estrongs/android/util/aa:n	J
    //   820: lconst_0
    //   821: lcmp
    //   822: ifne +36 -> 858
    //   825: aload 6
    //   827: ifnull +31 -> 858
    //   830: aload 13
    //   832: astore 9
    //   834: aload 12
    //   836: astore 8
    //   838: aload 6
    //   840: invokevirtual 310	java/io/File:delete	()Z
    //   843: pop
    //   844: aload 13
    //   846: astore 9
    //   848: aload 12
    //   850: astore 8
    //   852: aload 6
    //   854: invokevirtual 313	java/io/File:createNewFile	()Z
    //   857: pop
    //   858: aload 6
    //   860: ifnull +866 -> 1726
    //   863: aload 13
    //   865: astore 9
    //   867: aload 12
    //   869: astore 8
    //   871: new 253	java/io/RandomAccessFile
    //   874: dup
    //   875: aload 6
    //   877: ldc_w 315
    //   880: invokespecial 318	java/io/RandomAccessFile:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   883: astore 5
    //   885: aload 5
    //   887: aload_0
    //   888: getfield 76	com/estrongs/android/util/aa:n	J
    //   891: invokevirtual 322	java/io/RandomAccessFile:seek	(J)V
    //   894: aload_0
    //   895: getfield 82	com/estrongs/android/util/aa:q	Z
    //   898: ifeq +63 -> 961
    //   901: aload_0
    //   902: getfield 70	com/estrongs/android/util/aa:l	Lcom/estrongs/android/util/af;
    //   905: ifnull +26 -> 931
    //   908: aload_0
    //   909: getfield 70	com/estrongs/android/util/aa:l	Lcom/estrongs/android/util/af;
    //   912: aload_0
    //   913: getfield 78	com/estrongs/android/util/aa:o	Ljava/lang/Object;
    //   916: new 45	java/lang/Exception
    //   919: dup
    //   920: ldc_w 324
    //   923: invokespecial 325	java/lang/Exception:<init>	(Ljava/lang/String;)V
    //   926: invokeinterface 251 3 0
    //   931: aload_0
    //   932: iconst_1
    //   933: putfield 90	com/estrongs/android/util/aa:t	Z
    //   936: aload 5
    //   938: ifnull +8 -> 946
    //   941: aload 5
    //   943: invokevirtual 256	java/io/RandomAccessFile:close	()V
    //   946: iconst_0
    //   947: ifeq -403 -> 544
    //   950: new 327	java/lang/NullPointerException
    //   953: dup
    //   954: invokespecial 328	java/lang/NullPointerException:<init>	()V
    //   957: athrow
    //   958: astore 5
    //   960: return
    //   961: aload 14
    //   963: invokevirtual 331	java/net/HttpURLConnection:getContentLength	()I
    //   966: istore_2
    //   967: iconst_0
    //   968: istore_1
    //   969: iload_2
    //   970: ifge +255 -> 1225
    //   973: iconst_1
    //   974: istore_2
    //   975: ldc_w 333
    //   978: aload 14
    //   980: ldc_w 335
    //   983: invokevirtual 338	java/net/HttpURLConnection:getHeaderField	(Ljava/lang/String;)Ljava/lang/String;
    //   986: invokevirtual 342	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   989: ifeq +7 -> 996
    //   992: iconst_1
    //   993: istore_1
    //   994: iconst_0
    //   995: istore_2
    //   996: iload_2
    //   997: ifeq +63 -> 1060
    //   1000: aload_0
    //   1001: getfield 70	com/estrongs/android/util/aa:l	Lcom/estrongs/android/util/af;
    //   1004: ifnull +26 -> 1030
    //   1007: aload_0
    //   1008: getfield 70	com/estrongs/android/util/aa:l	Lcom/estrongs/android/util/af;
    //   1011: aload_0
    //   1012: getfield 78	com/estrongs/android/util/aa:o	Ljava/lang/Object;
    //   1015: new 45	java/lang/Exception
    //   1018: dup
    //   1019: ldc_w 344
    //   1022: invokespecial 325	java/lang/Exception:<init>	(Ljava/lang/String;)V
    //   1025: invokeinterface 251 3 0
    //   1030: aload_0
    //   1031: iconst_1
    //   1032: putfield 90	com/estrongs/android/util/aa:t	Z
    //   1035: aload 5
    //   1037: ifnull +8 -> 1045
    //   1040: aload 5
    //   1042: invokevirtual 256	java/io/RandomAccessFile:close	()V
    //   1045: iconst_0
    //   1046: ifeq -502 -> 544
    //   1049: new 327	java/lang/NullPointerException
    //   1052: dup
    //   1053: invokespecial 328	java/lang/NullPointerException:<init>	()V
    //   1056: athrow
    //   1057: astore 5
    //   1059: return
    //   1060: aload 14
    //   1062: invokevirtual 348	java/net/HttpURLConnection:getInputStream	()Ljava/io/InputStream;
    //   1065: astore 6
    //   1067: aload_0
    //   1068: getfield 58	com/estrongs/android/util/aa:c	I
    //   1071: iconst_1
    //   1072: if_icmpne +181 -> 1253
    //   1075: aload_0
    //   1076: getfield 74	com/estrongs/android/util/aa:m	J
    //   1079: lconst_0
    //   1080: lcmp
    //   1081: ifle +162 -> 1243
    //   1084: aload_0
    //   1085: getfield 74	com/estrongs/android/util/aa:m	J
    //   1088: l2i
    //   1089: newarray <illegal type>
    //   1091: astore 7
    //   1093: aload_0
    //   1094: getfield 70	com/estrongs/android/util/aa:l	Lcom/estrongs/android/util/af;
    //   1097: ifnull +24 -> 1121
    //   1100: aload_0
    //   1101: getfield 70	com/estrongs/android/util/aa:l	Lcom/estrongs/android/util/af;
    //   1104: aload_0
    //   1105: getfield 78	com/estrongs/android/util/aa:o	Ljava/lang/Object;
    //   1108: aload_0
    //   1109: getfield 74	com/estrongs/android/util/aa:m	J
    //   1112: aload_0
    //   1113: getfield 76	com/estrongs/android/util/aa:n	J
    //   1116: invokeinterface 352 6 0
    //   1121: iconst_0
    //   1122: istore_2
    //   1123: aload_0
    //   1124: iconst_0
    //   1125: putfield 90	com/estrongs/android/util/aa:t	Z
    //   1128: new 354	com/estrongs/android/util/ae
    //   1131: dup
    //   1132: aload_0
    //   1133: invokespecial 355	com/estrongs/android/util/ae:<init>	(Lcom/estrongs/android/util/aa;)V
    //   1136: invokevirtual 356	com/estrongs/android/util/ae:start	()V
    //   1139: iload_1
    //   1140: ifne +123 -> 1263
    //   1143: iload_2
    //   1144: istore_1
    //   1145: aload 6
    //   1147: aload 7
    //   1149: iload_1
    //   1150: aload 7
    //   1152: arraylength
    //   1153: iload_1
    //   1154: isub
    //   1155: invokevirtual 360	java/io/InputStream:read	([BII)I
    //   1158: istore_2
    //   1159: iload_2
    //   1160: ifle +563 -> 1723
    //   1163: aload_0
    //   1164: getfield 76	com/estrongs/android/util/aa:n	J
    //   1167: aload_0
    //   1168: getfield 74	com/estrongs/android/util/aa:m	J
    //   1171: lcmp
    //   1172: ifge +551 -> 1723
    //   1175: aload_0
    //   1176: getfield 82	com/estrongs/android/util/aa:q	Z
    //   1179: ifne +544 -> 1723
    //   1182: aload 5
    //   1184: ifnull +557 -> 1741
    //   1187: aload 5
    //   1189: aload 7
    //   1191: iconst_0
    //   1192: iload_2
    //   1193: invokevirtual 363	java/io/RandomAccessFile:write	([BII)V
    //   1196: iconst_0
    //   1197: istore_1
    //   1198: aload_0
    //   1199: aload_0
    //   1200: getfield 76	com/estrongs/android/util/aa:n	J
    //   1203: iload_2
    //   1204: i2l
    //   1205: ladd
    //   1206: putfield 76	com/estrongs/android/util/aa:n	J
    //   1209: goto -64 -> 1145
    //   1212: astore 8
    //   1214: aload 6
    //   1216: astore 7
    //   1218: aload 8
    //   1220: astore 6
    //   1222: goto -741 -> 481
    //   1225: iload_2
    //   1226: i2l
    //   1227: lstore_3
    //   1228: aload_0
    //   1229: lload_3
    //   1230: aload_0
    //   1231: getfield 76	com/estrongs/android/util/aa:n	J
    //   1234: ladd
    //   1235: putfield 74	com/estrongs/android/util/aa:m	J
    //   1238: iconst_0
    //   1239: istore_1
    //   1240: goto -180 -> 1060
    //   1243: sipush 16384
    //   1246: newarray <illegal type>
    //   1248: astore 7
    //   1250: goto -157 -> 1093
    //   1253: sipush 16384
    //   1256: newarray <illegal type>
    //   1258: astore 7
    //   1260: goto -167 -> 1093
    //   1263: aconst_null
    //   1264: astore 8
    //   1266: aload 5
    //   1268: ifnonnull +12 -> 1280
    //   1271: new 365	java/io/ByteArrayOutputStream
    //   1274: dup
    //   1275: invokespecial 366	java/io/ByteArrayOutputStream:<init>	()V
    //   1278: astore 8
    //   1280: aload 6
    //   1282: aload 7
    //   1284: invokevirtual 369	java/io/InputStream:read	([B)I
    //   1287: istore_1
    //   1288: iload_1
    //   1289: ifle +92 -> 1381
    //   1292: aload_0
    //   1293: getfield 82	com/estrongs/android/util/aa:q	Z
    //   1296: ifne +85 -> 1381
    //   1299: aload 5
    //   1301: ifnull +68 -> 1369
    //   1304: aload 5
    //   1306: aload 7
    //   1308: iconst_0
    //   1309: iload_1
    //   1310: invokevirtual 363	java/io/RandomAccessFile:write	([BII)V
    //   1313: aload_0
    //   1314: aload_0
    //   1315: getfield 76	com/estrongs/android/util/aa:n	J
    //   1318: iload_1
    //   1319: i2l
    //   1320: ladd
    //   1321: putfield 76	com/estrongs/android/util/aa:n	J
    //   1324: goto -44 -> 1280
    //   1327: astore 8
    //   1329: aload 6
    //   1331: astore 7
    //   1333: aload 5
    //   1335: astore 6
    //   1337: aload 8
    //   1339: astore 5
    //   1341: aload_0
    //   1342: iconst_1
    //   1343: putfield 90	com/estrongs/android/util/aa:t	Z
    //   1346: aload 6
    //   1348: ifnull +8 -> 1356
    //   1351: aload 6
    //   1353: invokevirtual 256	java/io/RandomAccessFile:close	()V
    //   1356: aload 7
    //   1358: ifnull +8 -> 1366
    //   1361: aload 7
    //   1363: invokevirtual 259	java/io/InputStream:close	()V
    //   1366: aload 5
    //   1368: athrow
    //   1369: aload 8
    //   1371: aload 7
    //   1373: iconst_0
    //   1374: iload_1
    //   1375: invokevirtual 370	java/io/ByteArrayOutputStream:write	([BII)V
    //   1378: goto -65 -> 1313
    //   1381: aload 5
    //   1383: ifnonnull +340 -> 1723
    //   1386: aload 8
    //   1388: invokevirtual 374	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   1391: astore 7
    //   1393: aload_0
    //   1394: iconst_1
    //   1395: putfield 90	com/estrongs/android/util/aa:t	Z
    //   1398: aload_0
    //   1399: getfield 82	com/estrongs/android/util/aa:q	Z
    //   1402: ifeq +62 -> 1464
    //   1405: aload_0
    //   1406: getfield 70	com/estrongs/android/util/aa:l	Lcom/estrongs/android/util/af;
    //   1409: ifnull +26 -> 1435
    //   1412: aload_0
    //   1413: getfield 70	com/estrongs/android/util/aa:l	Lcom/estrongs/android/util/af;
    //   1416: aload_0
    //   1417: getfield 78	com/estrongs/android/util/aa:o	Ljava/lang/Object;
    //   1420: new 45	java/lang/Exception
    //   1423: dup
    //   1424: ldc_w 324
    //   1427: invokespecial 325	java/lang/Exception:<init>	(Ljava/lang/String;)V
    //   1430: invokeinterface 251 3 0
    //   1435: aload_0
    //   1436: iconst_1
    //   1437: putfield 90	com/estrongs/android/util/aa:t	Z
    //   1440: aload 5
    //   1442: ifnull +8 -> 1450
    //   1445: aload 5
    //   1447: invokevirtual 256	java/io/RandomAccessFile:close	()V
    //   1450: aload 6
    //   1452: ifnull -908 -> 544
    //   1455: aload 6
    //   1457: invokevirtual 259	java/io/InputStream:close	()V
    //   1460: return
    //   1461: astore 5
    //   1463: return
    //   1464: aload 14
    //   1466: invokevirtual 302	java/net/HttpURLConnection:getResponseCode	()I
    //   1469: sipush 300
    //   1472: if_icmplt +62 -> 1534
    //   1475: aload_0
    //   1476: getfield 70	com/estrongs/android/util/aa:l	Lcom/estrongs/android/util/af;
    //   1479: ifnull +26 -> 1505
    //   1482: aload_0
    //   1483: getfield 70	com/estrongs/android/util/aa:l	Lcom/estrongs/android/util/af;
    //   1486: aload_0
    //   1487: getfield 78	com/estrongs/android/util/aa:o	Ljava/lang/Object;
    //   1490: new 45	java/lang/Exception
    //   1493: dup
    //   1494: ldc_w 344
    //   1497: invokespecial 325	java/lang/Exception:<init>	(Ljava/lang/String;)V
    //   1500: invokeinterface 251 3 0
    //   1505: aload_0
    //   1506: iconst_1
    //   1507: putfield 90	com/estrongs/android/util/aa:t	Z
    //   1510: aload 5
    //   1512: ifnull +8 -> 1520
    //   1515: aload 5
    //   1517: invokevirtual 256	java/io/RandomAccessFile:close	()V
    //   1520: aload 6
    //   1522: ifnull -978 -> 544
    //   1525: aload 6
    //   1527: invokevirtual 259	java/io/InputStream:close	()V
    //   1530: return
    //   1531: astore 5
    //   1533: return
    //   1534: aload_0
    //   1535: getfield 58	com/estrongs/android/util/aa:c	I
    //   1538: iconst_1
    //   1539: if_icmpne +16 -> 1555
    //   1542: aload_0
    //   1543: new 179	java/lang/String
    //   1546: dup
    //   1547: aload 7
    //   1549: invokespecial 376	java/lang/String:<init>	([B)V
    //   1552: putfield 64	com/estrongs/android/util/aa:i	Ljava/lang/String;
    //   1555: aload 5
    //   1557: ifnull +163 -> 1720
    //   1560: aload 5
    //   1562: invokevirtual 256	java/io/RandomAccessFile:close	()V
    //   1565: aload_0
    //   1566: invokespecial 378	com/estrongs/android/util/aa:m	()V
    //   1569: aconst_null
    //   1570: astore 5
    //   1572: aload_0
    //   1573: getfield 70	com/estrongs/android/util/aa:l	Lcom/estrongs/android/util/af;
    //   1576: ifnull +16 -> 1592
    //   1579: aload_0
    //   1580: getfield 70	com/estrongs/android/util/aa:l	Lcom/estrongs/android/util/af;
    //   1583: aload_0
    //   1584: getfield 78	com/estrongs/android/util/aa:o	Ljava/lang/Object;
    //   1587: invokeinterface 381 2 0
    //   1592: aload_0
    //   1593: iconst_1
    //   1594: putfield 90	com/estrongs/android/util/aa:t	Z
    //   1597: aload 5
    //   1599: ifnull +8 -> 1607
    //   1602: aload 5
    //   1604: invokevirtual 256	java/io/RandomAccessFile:close	()V
    //   1607: aload 6
    //   1609: ifnull -1065 -> 544
    //   1612: aload 6
    //   1614: invokevirtual 259	java/io/InputStream:close	()V
    //   1617: return
    //   1618: astore 5
    //   1620: return
    //   1621: astore 6
    //   1623: goto -257 -> 1366
    //   1626: astore 5
    //   1628: aload 9
    //   1630: astore 7
    //   1632: aload 8
    //   1634: astore 6
    //   1636: goto -295 -> 1341
    //   1639: astore 7
    //   1641: aload 5
    //   1643: astore 6
    //   1645: aload 7
    //   1647: astore 5
    //   1649: aload 10
    //   1651: astore 7
    //   1653: goto -312 -> 1341
    //   1656: astore 7
    //   1658: aload 5
    //   1660: astore 6
    //   1662: aload 7
    //   1664: astore 5
    //   1666: aload 10
    //   1668: astore 7
    //   1670: goto -329 -> 1341
    //   1673: astore 7
    //   1675: aload 5
    //   1677: astore 8
    //   1679: aload 7
    //   1681: astore 5
    //   1683: aload 6
    //   1685: astore 7
    //   1687: aload 8
    //   1689: astore 6
    //   1691: goto -350 -> 1341
    //   1694: astore 5
    //   1696: return
    //   1697: astore 6
    //   1699: goto -1218 -> 481
    //   1702: astore 6
    //   1704: goto -1223 -> 481
    //   1707: astore 8
    //   1709: aload 6
    //   1711: astore 7
    //   1713: aload 8
    //   1715: astore 6
    //   1717: goto -1236 -> 481
    //   1720: goto -148 -> 1572
    //   1723: goto -330 -> 1393
    //   1726: aconst_null
    //   1727: astore 5
    //   1729: goto -835 -> 894
    //   1732: aconst_null
    //   1733: astore 6
    //   1735: goto -1560 -> 175
    //   1738: goto -1632 -> 106
    //   1741: iload_1
    //   1742: iload_2
    //   1743: iadd
    //   1744: istore_1
    //   1745: goto -547 -> 1198
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	1748	0	this	aa
    //   369	1376	1	i1	int
    //   966	778	2	i2	int
    //   1227	3	3	l1	long
    //   39	903	5	localObject1	Object
    //   958	83	5	localException1	Exception
    //   1057	277	5	localException2	Exception
    //   1339	107	5	localObject2	Object
    //   1461	55	5	localException3	Exception
    //   1531	30	5	localException4	Exception
    //   1570	33	5	localObject3	Object
    //   1618	1	5	localException5	Exception
    //   1626	16	5	localObject4	Object
    //   1647	35	5	localObject5	Object
    //   1694	1	5	localException6	Exception
    //   1727	1	5	localObject6	Object
    //   54	250	6	localObject7	Object
    //   475	401	6	localThrowable1	Throwable
    //   1065	548	6	localObject8	Object
    //   1621	1	6	localException7	Exception
    //   1634	56	6	localObject9	Object
    //   1697	1	6	localThrowable2	Throwable
    //   1702	8	6	localThrowable3	Throwable
    //   1715	19	6	localThrowable4	Throwable
    //   13	1618	7	localObject10	Object
    //   1639	7	7	localObject11	Object
    //   1651	1	7	localObject12	Object
    //   1656	7	7	localObject13	Object
    //   1668	1	7	localObject14	Object
    //   1673	7	7	localObject15	Object
    //   1685	27	7	localObject16	Object
    //   21	849	8	localObject17	Object
    //   1212	7	8	localThrowable5	Throwable
    //   1264	15	8	localByteArrayOutputStream	java.io.ByteArrayOutputStream
    //   1327	306	8	localObject18	Object
    //   1677	11	8	localObject19	Object
    //   1707	7	8	localThrowable6	Throwable
    //   17	1612	9	localObject20	Object
    //   7	1660	10	localObject21	Object
    //   4	474	11	localObject22	Object
    //   1	867	12	localObject23	Object
    //   10	854	13	localObject24	Object
    //   191	1274	14	localHttpURLConnection	java.net.HttpURLConnection
    // Exception table:
    //   from	to	target	type
    //   23	41	475	java/lang/Throwable
    //   49	56	475	java/lang/Throwable
    //   69	82	475	java/lang/Throwable
    //   90	106	475	java/lang/Throwable
    //   114	121	475	java/lang/Throwable
    //   129	136	475	java/lang/Throwable
    //   144	175	475	java/lang/Throwable
    //   183	193	475	java/lang/Throwable
    //   201	209	475	java/lang/Throwable
    //   217	224	475	java/lang/Throwable
    //   232	241	475	java/lang/Throwable
    //   249	256	475	java/lang/Throwable
    //   264	271	475	java/lang/Throwable
    //   284	294	475	java/lang/Throwable
    //   302	311	475	java/lang/Throwable
    //   319	353	475	java/lang/Throwable
    //   361	368	475	java/lang/Throwable
    //   378	387	475	java/lang/Throwable
    //   395	452	475	java/lang/Throwable
    //   467	472	475	java/lang/Throwable
    //   553	564	475	java/lang/Throwable
    //   572	583	475	java/lang/Throwable
    //   591	602	475	java/lang/Throwable
    //   610	623	475	java/lang/Throwable
    //   631	637	475	java/lang/Throwable
    //   645	652	475	java/lang/Throwable
    //   660	667	475	java/lang/Throwable
    //   675	684	475	java/lang/Throwable
    //   692	697	475	java/lang/Throwable
    //   705	710	475	java/lang/Throwable
    //   718	723	475	java/lang/Throwable
    //   731	740	475	java/lang/Throwable
    //   748	759	475	java/lang/Throwable
    //   767	772	475	java/lang/Throwable
    //   780	787	475	java/lang/Throwable
    //   795	808	475	java/lang/Throwable
    //   816	825	475	java/lang/Throwable
    //   838	844	475	java/lang/Throwable
    //   852	858	475	java/lang/Throwable
    //   871	885	475	java/lang/Throwable
    //   941	946	958	java/lang/Exception
    //   950	958	958	java/lang/Exception
    //   1040	1045	1057	java/lang/Exception
    //   1049	1057	1057	java/lang/Exception
    //   1067	1093	1212	java/lang/Throwable
    //   1093	1121	1212	java/lang/Throwable
    //   1123	1139	1212	java/lang/Throwable
    //   1145	1159	1212	java/lang/Throwable
    //   1163	1182	1212	java/lang/Throwable
    //   1187	1196	1212	java/lang/Throwable
    //   1198	1209	1212	java/lang/Throwable
    //   1243	1250	1212	java/lang/Throwable
    //   1253	1260	1212	java/lang/Throwable
    //   1271	1280	1212	java/lang/Throwable
    //   1280	1288	1212	java/lang/Throwable
    //   1292	1299	1212	java/lang/Throwable
    //   1304	1313	1212	java/lang/Throwable
    //   1313	1324	1212	java/lang/Throwable
    //   1369	1378	1212	java/lang/Throwable
    //   1386	1393	1212	java/lang/Throwable
    //   1393	1435	1212	java/lang/Throwable
    //   1464	1505	1212	java/lang/Throwable
    //   1534	1555	1212	java/lang/Throwable
    //   1560	1569	1212	java/lang/Throwable
    //   1067	1093	1327	finally
    //   1093	1121	1327	finally
    //   1123	1139	1327	finally
    //   1145	1159	1327	finally
    //   1163	1182	1327	finally
    //   1187	1196	1327	finally
    //   1198	1209	1327	finally
    //   1243	1250	1327	finally
    //   1253	1260	1327	finally
    //   1271	1280	1327	finally
    //   1280	1288	1327	finally
    //   1292	1299	1327	finally
    //   1304	1313	1327	finally
    //   1313	1324	1327	finally
    //   1369	1378	1327	finally
    //   1386	1393	1327	finally
    //   1393	1435	1327	finally
    //   1464	1505	1327	finally
    //   1534	1555	1327	finally
    //   1560	1569	1327	finally
    //   1445	1450	1461	java/lang/Exception
    //   1455	1460	1461	java/lang/Exception
    //   1515	1520	1531	java/lang/Exception
    //   1525	1530	1531	java/lang/Exception
    //   1602	1607	1618	java/lang/Exception
    //   1612	1617	1618	java/lang/Exception
    //   1351	1356	1621	java/lang/Exception
    //   1361	1366	1621	java/lang/Exception
    //   23	41	1626	finally
    //   49	56	1626	finally
    //   69	82	1626	finally
    //   90	106	1626	finally
    //   114	121	1626	finally
    //   129	136	1626	finally
    //   144	175	1626	finally
    //   183	193	1626	finally
    //   201	209	1626	finally
    //   217	224	1626	finally
    //   232	241	1626	finally
    //   249	256	1626	finally
    //   264	271	1626	finally
    //   284	294	1626	finally
    //   302	311	1626	finally
    //   319	353	1626	finally
    //   361	368	1626	finally
    //   378	387	1626	finally
    //   395	452	1626	finally
    //   467	472	1626	finally
    //   489	496	1626	finally
    //   504	519	1626	finally
    //   553	564	1626	finally
    //   572	583	1626	finally
    //   591	602	1626	finally
    //   610	623	1626	finally
    //   631	637	1626	finally
    //   645	652	1626	finally
    //   660	667	1626	finally
    //   675	684	1626	finally
    //   692	697	1626	finally
    //   705	710	1626	finally
    //   718	723	1626	finally
    //   731	740	1626	finally
    //   748	759	1626	finally
    //   767	772	1626	finally
    //   780	787	1626	finally
    //   795	808	1626	finally
    //   816	825	1626	finally
    //   838	844	1626	finally
    //   852	858	1626	finally
    //   871	885	1626	finally
    //   885	894	1639	finally
    //   894	931	1656	finally
    //   961	967	1656	finally
    //   975	992	1656	finally
    //   1000	1030	1656	finally
    //   1060	1067	1656	finally
    //   1228	1238	1656	finally
    //   1572	1592	1673	finally
    //   529	534	1694	java/lang/Exception
    //   539	544	1694	java/lang/Exception
    //   885	894	1697	java/lang/Throwable
    //   894	931	1702	java/lang/Throwable
    //   961	967	1702	java/lang/Throwable
    //   975	992	1702	java/lang/Throwable
    //   1000	1030	1702	java/lang/Throwable
    //   1060	1067	1702	java/lang/Throwable
    //   1228	1238	1702	java/lang/Throwable
    //   1572	1592	1707	java/lang/Throwable
  }
  
  private void m()
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
  
  public void a(af paramaf)
  {
    l = paramaf;
  }
  
  public void a(Object paramObject)
  {
    o = paramObject;
  }
  
  public void a(String paramString)
  {
    try
    {
      new File(ap.bB(paramString)).mkdirs();
      k = paramString;
      return;
    }
    catch (Exception localException)
    {
      for (;;) {}
    }
  }
  
  public void a(byte[] paramArrayOfByte)
  {
    s = paramArrayOfByte;
  }
  
  public void a(Object[] paramArrayOfObject)
  {
    w = paramArrayOfObject;
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
    k();
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
    p = new ad(this);
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
  
  public void i()
  {
    v = "POST";
  }
  
  public boolean j()
  {
    return q;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.util.aa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */