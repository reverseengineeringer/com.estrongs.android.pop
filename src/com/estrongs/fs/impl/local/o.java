package com.estrongs.fs.impl.local;

import java.io.BufferedReader;
import java.io.BufferedWriter;

class o
{
  public Object a;
  public Object b;
  public Object c;
  public Object d;
  public Object e;
  public Object f;
  private Object g = null;
  
  private String a(String paramString, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
  {
    String[] arrayOfString = paramString.split("\\s+");
    try
    {
      if (Integer.parseInt(arrayOfString[paramInt3]) == paramInt5)
      {
        if (paramInt4 == -1) {}
        for (paramString = "0";; paramString = arrayOfString[paramInt4]) {
          return arrayOfString[paramInt2] + " " + paramString + " " + arrayOfString[paramInt1];
        }
      }
      return null;
    }
    catch (Exception paramString) {}
  }
  
  private String a(String paramString, int paramInt1, int paramInt2, int paramInt3, int paramInt4, String[] paramArrayOfString)
  {
    String[] arrayOfString = paramString.split("\\s+");
    if (arrayOfString[paramInt1] == null) {
      return null;
    }
    for (;;)
    {
      try
      {
        if (paramInt3 < paramArrayOfString.length)
        {
          if (arrayOfString[paramInt1].equals(paramArrayOfString[paramInt3])) {
            break label142;
          }
          if (arrayOfString[paramInt1].endsWith("/" + paramArrayOfString[paramInt3]))
          {
            break label142;
            return arrayOfString[paramInt2] + " " + paramString + " " + arrayOfString[paramInt1];
            paramString = arrayOfString[paramInt4];
            continue;
          }
          paramInt3 += 1;
          continue;
        }
        return null;
      }
      catch (Exception paramString) {}
      paramInt3 = 0;
      continue;
      label142:
      if (paramInt4 == -1) {
        paramString = "0";
      }
    }
  }
  
  private static String b(String paramString, Boolean paramBoolean)
  {
    int k = 1;
    int j = 1;
    String[] arrayOfString = paramString.split("\\s+");
    int i = 1;
    String str;
    if (i < arrayOfString.length) {
      if (arrayOfString[i].startsWith("/")) {
        if (arrayOfString[i].equals("/")) {
          str = "/ " + arrayOfString[0] + " ";
        }
      }
    }
    for (;;)
    {
      label75:
      if ((paramBoolean == null) || (!paramBoolean.booleanValue()))
      {
        if ((str != null) || (!arrayOfString[0].startsWith("/dev/block"))) {
          break label585;
        }
        i = j;
        label105:
        j = i;
        if (i >= arrayOfString.length) {
          break label577;
        }
        if ((arrayOfString[i].startsWith("/")) && (!arrayOfString[i].equals("/cache")) && (!arrayOfString[i].equals("/pds")) && (!arrayOfString[i].equals("/modem/nvm1")) && (!arrayOfString[i].equals("/firmware")) && (!arrayOfString[i].equals("/efs")) && (!arrayOfString[i].toLowerCase().equals("/storage/extsdcard")) && (!arrayOfString[i].equals("/persist")) && (!arrayOfString[i].equals("/storage_int")) && (!arrayOfString[i].startsWith("/data")) && (!arrayOfString[i].startsWith("/devlog")) && (!arrayOfString[i].contains("/sdcard")) && (!arrayOfString[i].startsWith("/mnt/secure")) && (!arrayOfString[i].startsWith("/mnt/asec"))) {
          paramBoolean = arrayOfString[i] + " " + arrayOfString[0] + " ";
        }
      }
      for (;;)
      {
        if (paramBoolean == null)
        {
          return null;
          if (!arrayOfString[i].equals("/system")) {
            break label591;
          }
          str = "/system " + arrayOfString[0] + " ";
          break label75;
          i += 1;
          break;
          i += 1;
          break label105;
          if (str != null) {
            break label585;
          }
          i = k;
          for (;;)
          {
            j = i;
            if (i >= arrayOfString.length) {
              break label577;
            }
            if (arrayOfString[i].startsWith("/"))
            {
              paramBoolean = arrayOfString[i] + " " + arrayOfString[0] + " ";
              break;
            }
            i += 1;
          }
        }
        j = paramString.indexOf(arrayOfString[i]);
        paramString = paramString.substring(arrayOfString[i].length() + j);
        if ((paramString.indexOf(" ro ") >= 0) || (paramString.indexOf("ro,") >= 0) || (paramString.indexOf("ro)") >= 0)) {
          return paramBoolean + "ro";
        }
        if ((paramString.indexOf(" rw ") >= 0) || (paramString.indexOf("rw,") >= 0) || (paramString.indexOf("rw)") >= 0)) {
          return paramBoolean + "rw";
        }
        return null;
        label577:
        paramBoolean = str;
        i = j;
        continue;
        label585:
        paramBoolean = str;
      }
      label591:
      str = null;
    }
  }
  
  /* Error */
  private Object d()
  {
    // Byte code:
    //   0: aload_0
    //   1: iconst_1
    //   2: invokestatic 149	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   5: putfield 151	com/estrongs/fs/impl/local/o:e	Ljava/lang/Object;
    //   8: aload_0
    //   9: getfield 153	com/estrongs/fs/impl/local/o:a	Ljava/lang/Object;
    //   12: checkcast 155	com/estrongs/fs/impl/local/r
    //   15: astore 16
    //   17: aload 16
    //   19: getfield 158	com/estrongs/fs/impl/local/r:b	Ljava/io/BufferedWriter;
    //   22: astore 15
    //   24: aload 16
    //   26: getfield 161	com/estrongs/fs/impl/local/r:c	Ljava/io/BufferedReader;
    //   29: astore 20
    //   31: aload_0
    //   32: getfield 163	com/estrongs/fs/impl/local/o:b	Ljava/lang/Object;
    //   35: checkcast 26	java/lang/String
    //   38: astore 16
    //   40: aload_0
    //   41: getfield 165	com/estrongs/fs/impl/local/o:c	Ljava/lang/Object;
    //   44: checkcast 32	java/lang/Integer
    //   47: invokevirtual 168	java/lang/Integer:intValue	()I
    //   50: istore 12
    //   52: aload 15
    //   54: new 40	java/lang/StringBuilder
    //   57: dup
    //   58: invokespecial 41	java/lang/StringBuilder:<init>	()V
    //   61: aload 16
    //   63: invokevirtual 45	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   66: ldc -86
    //   68: invokevirtual 45	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   71: invokevirtual 51	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   74: invokevirtual 176	java/io/BufferedWriter:write	(Ljava/lang/String;)V
    //   77: aload 15
    //   79: invokevirtual 179	java/io/BufferedWriter:flush	()V
    //   82: aload 15
    //   84: ldc -75
    //   86: invokevirtual 176	java/io/BufferedWriter:write	(Ljava/lang/String;)V
    //   89: aload 15
    //   91: invokevirtual 179	java/io/BufferedWriter:flush	()V
    //   94: aload 15
    //   96: ldc -73
    //   98: invokevirtual 176	java/io/BufferedWriter:write	(Ljava/lang/String;)V
    //   101: aload 15
    //   103: invokevirtual 179	java/io/BufferedWriter:flush	()V
    //   106: iconst_1
    //   107: istore 13
    //   109: aconst_null
    //   110: astore 17
    //   112: iconst_0
    //   113: istore 5
    //   115: aconst_null
    //   116: astore 19
    //   118: aconst_null
    //   119: astore 15
    //   121: iconst_0
    //   122: istore 9
    //   124: iload 12
    //   126: bipush 15
    //   128: if_icmpne +183 -> 311
    //   131: aload_0
    //   132: getfield 185	com/estrongs/fs/impl/local/o:d	Ljava/lang/Object;
    //   135: checkcast 187	[Ljava/lang/String;
    //   138: checkcast 187	[Ljava/lang/String;
    //   141: astore 18
    //   143: iconst_m1
    //   144: istore 6
    //   146: iconst_m1
    //   147: istore 7
    //   149: iconst_m1
    //   150: istore 8
    //   152: iconst_m1
    //   153: istore 11
    //   155: iload 12
    //   157: bipush 16
    //   159: if_icmpeq +35 -> 194
    //   162: iload 7
    //   164: istore 10
    //   166: iload 6
    //   168: istore_2
    //   169: iload 8
    //   171: istore_3
    //   172: iload 11
    //   174: istore 4
    //   176: aload 19
    //   178: astore 16
    //   180: iload 5
    //   182: istore_1
    //   183: aload 17
    //   185: astore 15
    //   187: iload 12
    //   189: bipush 17
    //   191: if_icmpne +31 -> 222
    //   194: iconst_0
    //   195: istore 13
    //   197: aload 17
    //   199: astore 15
    //   201: iload 5
    //   203: istore_1
    //   204: aload 19
    //   206: astore 16
    //   208: iload 11
    //   210: istore 4
    //   212: iload 8
    //   214: istore_3
    //   215: iload 6
    //   217: istore_2
    //   218: iload 7
    //   220: istore 10
    //   222: aload 20
    //   224: invokevirtual 192	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   227: astore 17
    //   229: aload 17
    //   231: ifnull +35 -> 266
    //   234: aload 17
    //   236: invokevirtual 195	java/lang/String:trim	()Ljava/lang/String;
    //   239: astore 19
    //   241: aload 19
    //   243: ifnull -21 -> 222
    //   246: aload 19
    //   248: invokevirtual 122	java/lang/String:length	()I
    //   251: ifeq -29 -> 222
    //   254: aload 19
    //   256: invokestatic 199	com/estrongs/fs/impl/local/l:b	(Ljava/lang/String;)Z
    //   259: istore 14
    //   261: iload 14
    //   263: ifeq +78 -> 341
    //   266: iload 12
    //   268: bipush 15
    //   270: if_icmpeq +10 -> 280
    //   273: iload 12
    //   275: bipush 14
    //   277: if_icmpne +9 -> 286
    //   280: aload_0
    //   281: aload 16
    //   283: putfield 185	com/estrongs/fs/impl/local/o:d	Ljava/lang/Object;
    //   286: iload 13
    //   288: invokestatic 149	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   291: astore 15
    //   293: aload 15
    //   295: areturn
    //   296: astore 15
    //   298: aload_0
    //   299: iconst_0
    //   300: invokestatic 149	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   303: putfield 151	com/estrongs/fs/impl/local/o:e	Ljava/lang/Object;
    //   306: iconst_0
    //   307: invokestatic 149	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   310: areturn
    //   311: aload 15
    //   313: astore 18
    //   315: iload 12
    //   317: bipush 14
    //   319: if_icmpne -176 -> 143
    //   322: aload_0
    //   323: getfield 185	com/estrongs/fs/impl/local/o:d	Ljava/lang/Object;
    //   326: checkcast 32	java/lang/Integer
    //   329: invokevirtual 168	java/lang/Integer:intValue	()I
    //   332: istore 9
    //   334: aload 15
    //   336: astore 18
    //   338: goto -195 -> 143
    //   341: iload 12
    //   343: tableswitch	default:+73->416, 4:+175->518, 5:+202->545, 6:+298->641, 7:+73->416, 8:+73->416, 9:+73->416, 10:+73->416, 11:+73->416, 12:+73->416, 13:+325->668, 14:+352->695, 15:+352->695, 16:+100->443, 17:+123->466, 18:+154->497
    //   416: aload 16
    //   418: astore 17
    //   420: aload 15
    //   422: astore 16
    //   424: aload 17
    //   426: astore 15
    //   428: aload 16
    //   430: astore 17
    //   432: aload 15
    //   434: astore 16
    //   436: aload 17
    //   438: astore 15
    //   440: goto -218 -> 222
    //   443: new 40	java/lang/StringBuilder
    //   446: dup
    //   447: invokespecial 41	java/lang/StringBuilder:<init>	()V
    //   450: ldc -55
    //   452: invokevirtual 45	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   455: aload 19
    //   457: invokevirtual 45	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   460: invokevirtual 51	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   463: invokestatic 205	com/estrongs/android/util/v:a	(Ljava/lang/String;)V
    //   466: aload 19
    //   468: invokevirtual 91	java/lang/String:toLowerCase	()Ljava/lang/String;
    //   471: ldc -49
    //   473: invokevirtual 107	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   476: ifeq -60 -> 416
    //   479: aload 15
    //   481: astore 17
    //   483: iconst_1
    //   484: istore 13
    //   486: aload 16
    //   488: astore 15
    //   490: aload 17
    //   492: astore 16
    //   494: goto -66 -> 428
    //   497: aload_0
    //   498: aload 19
    //   500: putfield 185	com/estrongs/fs/impl/local/o:d	Ljava/lang/Object;
    //   503: aload 15
    //   505: astore 17
    //   507: aload 16
    //   509: astore 15
    //   511: aload 17
    //   513: astore 16
    //   515: goto -87 -> 428
    //   518: aload 19
    //   520: invokevirtual 122	java/lang/String:length	()I
    //   523: iconst_2
    //   524: if_icmple -108 -> 416
    //   527: aload 15
    //   529: astore 17
    //   531: iconst_0
    //   532: istore 13
    //   534: aload 16
    //   536: astore 15
    //   538: aload 17
    //   540: astore 16
    //   542: goto -114 -> 428
    //   545: aconst_null
    //   546: astore 17
    //   548: aload_0
    //   549: getfield 209	com/estrongs/fs/impl/local/o:f	Ljava/lang/Object;
    //   552: instanceof 72
    //   555: ifeq +12 -> 567
    //   558: aload_0
    //   559: getfield 209	com/estrongs/fs/impl/local/o:f	Ljava/lang/Object;
    //   562: checkcast 72	java/lang/Boolean
    //   565: astore 17
    //   567: aload 19
    //   569: aload 17
    //   571: invokestatic 65	com/estrongs/fs/impl/local/o:b	(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/String;
    //   574: astore 17
    //   576: aload 17
    //   578: ifnull -162 -> 416
    //   581: aload 15
    //   583: ifnonnull +28 -> 611
    //   586: aload 17
    //   588: astore 15
    //   590: aload_0
    //   591: aload 15
    //   593: putfield 185	com/estrongs/fs/impl/local/o:d	Ljava/lang/Object;
    //   596: aload 15
    //   598: astore 17
    //   600: aload 16
    //   602: astore 15
    //   604: aload 17
    //   606: astore 16
    //   608: goto -180 -> 428
    //   611: new 40	java/lang/StringBuilder
    //   614: dup
    //   615: invokespecial 41	java/lang/StringBuilder:<init>	()V
    //   618: aload 15
    //   620: invokevirtual 45	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   623: ldc 47
    //   625: invokevirtual 45	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   628: aload 17
    //   630: invokevirtual 45	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   633: invokevirtual 51	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   636: astore 15
    //   638: goto -48 -> 590
    //   641: aload 19
    //   643: invokevirtual 122	java/lang/String:length	()I
    //   646: iconst_2
    //   647: if_icmple -231 -> 416
    //   650: aload 15
    //   652: astore 17
    //   654: iconst_0
    //   655: istore 13
    //   657: aload 16
    //   659: astore 15
    //   661: aload 17
    //   663: astore 16
    //   665: goto -237 -> 428
    //   668: aload 19
    //   670: invokevirtual 122	java/lang/String:length	()I
    //   673: iconst_2
    //   674: if_icmple -258 -> 416
    //   677: aload 15
    //   679: astore 17
    //   681: iconst_0
    //   682: istore 13
    //   684: aload 16
    //   686: astore 15
    //   688: aload 17
    //   690: astore 16
    //   692: goto -264 -> 428
    //   695: iload_1
    //   696: ifne +120 -> 816
    //   699: aload 19
    //   701: ldc 24
    //   703: invokevirtual 30	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   706: astore 17
    //   708: iconst_0
    //   709: istore 5
    //   711: iload_2
    //   712: istore 6
    //   714: iload 5
    //   716: istore_2
    //   717: iload 6
    //   719: istore 7
    //   721: iload_3
    //   722: istore 8
    //   724: iload 4
    //   726: istore 5
    //   728: iload_2
    //   729: aload 17
    //   731: arraylength
    //   732: if_icmpge +449 -> 1181
    //   735: aload 17
    //   737: iload_2
    //   738: aaload
    //   739: ldc -45
    //   741: invokevirtual 214	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   744: ifne +409 -> 1153
    //   747: aload 17
    //   749: iload_2
    //   750: aaload
    //   751: ldc -40
    //   753: invokevirtual 214	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   756: ifeq +6 -> 762
    //   759: goto +394 -> 1153
    //   762: aload 17
    //   764: iload_2
    //   765: aaload
    //   766: ldc -38
    //   768: invokevirtual 214	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   771: ifeq +13 -> 784
    //   774: iload_2
    //   775: istore 8
    //   777: iload 6
    //   779: istore 7
    //   781: goto +378 -> 1159
    //   784: iload 6
    //   786: istore 7
    //   788: iload_3
    //   789: istore 8
    //   791: aload 17
    //   793: iload_2
    //   794: aaload
    //   795: ldc -36
    //   797: invokevirtual 214	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   800: ifeq +359 -> 1159
    //   803: iload_2
    //   804: istore 4
    //   806: iload 6
    //   808: istore 7
    //   810: iload_3
    //   811: istore 8
    //   813: goto +346 -> 1159
    //   816: iload_1
    //   817: iconst_1
    //   818: if_icmpne +409 -> 1227
    //   821: aload 19
    //   823: ldc 24
    //   825: invokevirtual 30	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   828: arraylength
    //   829: iconst_1
    //   830: isub
    //   831: istore 10
    //   833: iload_1
    //   834: iconst_1
    //   835: iadd
    //   836: istore_1
    //   837: aload 15
    //   839: astore 17
    //   841: aload 16
    //   843: astore 15
    //   845: aload 17
    //   847: astore 16
    //   849: goto -421 -> 428
    //   852: iconst_0
    //   853: invokestatic 149	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   856: astore 17
    //   858: iload 12
    //   860: bipush 15
    //   862: if_icmpeq +14 -> 876
    //   865: aload 17
    //   867: astore 15
    //   869: iload 12
    //   871: bipush 14
    //   873: if_icmpne -580 -> 293
    //   876: aload_0
    //   877: aload 16
    //   879: putfield 185	com/estrongs/fs/impl/local/o:d	Ljava/lang/Object;
    //   882: aload 17
    //   884: areturn
    //   885: iload 12
    //   887: bipush 15
    //   889: if_icmpne +22 -> 911
    //   892: aload_0
    //   893: aload 19
    //   895: iload 10
    //   897: iload_2
    //   898: iload_3
    //   899: iload 4
    //   901: aload 18
    //   903: invokespecial 222	com/estrongs/fs/impl/local/o:a	(Ljava/lang/String;IIII[Ljava/lang/String;)Ljava/lang/String;
    //   906: astore 17
    //   908: goto +336 -> 1244
    //   911: iload 12
    //   913: bipush 14
    //   915: if_icmpne +329 -> 1244
    //   918: iload_3
    //   919: iconst_m1
    //   920: if_icmpne +36 -> 956
    //   923: iconst_0
    //   924: invokestatic 149	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   927: astore 17
    //   929: iload 12
    //   931: bipush 15
    //   933: if_icmpeq +14 -> 947
    //   936: aload 17
    //   938: astore 15
    //   940: iload 12
    //   942: bipush 14
    //   944: if_icmpne -651 -> 293
    //   947: aload_0
    //   948: aload 16
    //   950: putfield 185	com/estrongs/fs/impl/local/o:d	Ljava/lang/Object;
    //   953: aload 17
    //   955: areturn
    //   956: aload_0
    //   957: aload 19
    //   959: iload 10
    //   961: iload_2
    //   962: iload_3
    //   963: iload 4
    //   965: iload 9
    //   967: invokespecial 224	com/estrongs/fs/impl/local/o:a	(Ljava/lang/String;IIIII)Ljava/lang/String;
    //   970: astore 17
    //   972: goto +272 -> 1244
    //   975: new 40	java/lang/StringBuilder
    //   978: dup
    //   979: invokespecial 41	java/lang/StringBuilder:<init>	()V
    //   982: aload 16
    //   984: invokevirtual 45	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   987: ldc 47
    //   989: invokevirtual 45	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   992: aload 17
    //   994: invokevirtual 45	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   997: invokevirtual 51	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1000: astore 17
    //   1002: aload 17
    //   1004: astore 16
    //   1006: aload 15
    //   1008: astore 17
    //   1010: iconst_1
    //   1011: istore 13
    //   1013: aload 16
    //   1015: astore 15
    //   1017: aload 17
    //   1019: astore 16
    //   1021: goto -593 -> 428
    //   1024: astore 15
    //   1026: aload 15
    //   1028: invokevirtual 227	java/io/IOException:printStackTrace	()V
    //   1031: aload_0
    //   1032: iconst_0
    //   1033: invokestatic 149	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   1036: putfield 151	com/estrongs/fs/impl/local/o:e	Ljava/lang/Object;
    //   1039: new 40	java/lang/StringBuilder
    //   1042: dup
    //   1043: invokespecial 41	java/lang/StringBuilder:<init>	()V
    //   1046: ldc -27
    //   1048: invokevirtual 45	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1051: aload_0
    //   1052: getfield 151	com/estrongs/fs/impl/local/o:e	Ljava/lang/Object;
    //   1055: invokevirtual 232	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   1058: ldc -22
    //   1060: invokevirtual 45	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1063: aload 15
    //   1065: invokevirtual 237	java/io/IOException:getMessage	()Ljava/lang/String;
    //   1068: invokevirtual 45	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1071: invokevirtual 51	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1074: invokestatic 205	com/estrongs/android/util/v:a	(Ljava/lang/String;)V
    //   1077: iconst_0
    //   1078: invokestatic 149	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   1081: astore 17
    //   1083: iload 12
    //   1085: bipush 15
    //   1087: if_icmpeq +14 -> 1101
    //   1090: aload 17
    //   1092: astore 15
    //   1094: iload 12
    //   1096: bipush 14
    //   1098: if_icmpne -805 -> 293
    //   1101: aload_0
    //   1102: aload 16
    //   1104: putfield 185	com/estrongs/fs/impl/local/o:d	Ljava/lang/Object;
    //   1107: aload 17
    //   1109: areturn
    //   1110: astore 15
    //   1112: iload 12
    //   1114: bipush 15
    //   1116: if_icmpeq +10 -> 1126
    //   1119: iload 12
    //   1121: bipush 14
    //   1123: if_icmpne +9 -> 1132
    //   1126: aload_0
    //   1127: aload 16
    //   1129: putfield 185	com/estrongs/fs/impl/local/o:d	Ljava/lang/Object;
    //   1132: aload 15
    //   1134: athrow
    //   1135: aload 15
    //   1137: astore 17
    //   1139: iconst_1
    //   1140: istore 13
    //   1142: aload 16
    //   1144: astore 15
    //   1146: aload 17
    //   1148: astore 16
    //   1150: goto -722 -> 428
    //   1153: iload_2
    //   1154: istore 7
    //   1156: iload_3
    //   1157: istore 8
    //   1159: iload 7
    //   1161: iconst_m1
    //   1162: if_icmpeq +51 -> 1213
    //   1165: iload 8
    //   1167: iconst_m1
    //   1168: if_icmpeq +45 -> 1213
    //   1171: iload 4
    //   1173: iconst_m1
    //   1174: if_icmpeq +39 -> 1213
    //   1177: iload 4
    //   1179: istore 5
    //   1181: iload_1
    //   1182: iconst_1
    //   1183: iadd
    //   1184: istore_1
    //   1185: iconst_0
    //   1186: istore 13
    //   1188: aload 15
    //   1190: astore 17
    //   1192: aload 16
    //   1194: astore 15
    //   1196: iload 7
    //   1198: istore_2
    //   1199: iload 8
    //   1201: istore_3
    //   1202: iload 5
    //   1204: istore 4
    //   1206: aload 17
    //   1208: astore 16
    //   1210: goto -782 -> 428
    //   1213: iload_2
    //   1214: iconst_1
    //   1215: iadd
    //   1216: istore_2
    //   1217: iload 7
    //   1219: istore 6
    //   1221: iload 8
    //   1223: istore_3
    //   1224: goto -507 -> 717
    //   1227: aconst_null
    //   1228: astore 17
    //   1230: iload 10
    //   1232: iconst_m1
    //   1233: if_icmpeq -381 -> 852
    //   1236: iload_2
    //   1237: iconst_m1
    //   1238: if_icmpne -353 -> 885
    //   1241: goto -389 -> 852
    //   1244: aload 17
    //   1246: ifnull -111 -> 1135
    //   1249: aload 16
    //   1251: ifnonnull -276 -> 975
    //   1254: aload 15
    //   1256: astore 16
    //   1258: iconst_1
    //   1259: istore 13
    //   1261: aload 17
    //   1263: astore 15
    //   1265: goto -837 -> 428
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	1268	0	this	o
    //   182	1003	1	i	int
    //   168	1071	2	j	int
    //   171	1053	3	k	int
    //   174	1031	4	m	int
    //   113	1090	5	n	int
    //   144	1076	6	i1	int
    //   147	1071	7	i2	int
    //   150	1072	8	i3	int
    //   122	844	9	i4	int
    //   164	1070	10	i5	int
    //   153	56	11	i6	int
    //   50	1074	12	i7	int
    //   107	1153	13	bool1	boolean
    //   259	3	14	bool2	boolean
    //   22	272	15	localObject1	Object
    //   296	125	15	localException	Exception
    //   426	590	15	localObject2	Object
    //   1024	40	15	localIOException	java.io.IOException
    //   1092	1	15	localObject3	Object
    //   1110	26	15	localObject4	Object
    //   1144	120	15	localObject5	Object
    //   15	1242	16	localObject6	Object
    //   110	1152	17	localObject7	Object
    //   141	761	18	localObject8	Object
    //   116	842	19	str	String
    //   29	194	20	localBufferedReader	BufferedReader
    // Exception table:
    //   from	to	target	type
    //   52	106	296	java/lang/Exception
    //   222	229	1024	java/io/IOException
    //   234	241	1024	java/io/IOException
    //   246	261	1024	java/io/IOException
    //   443	466	1024	java/io/IOException
    //   466	479	1024	java/io/IOException
    //   497	503	1024	java/io/IOException
    //   518	527	1024	java/io/IOException
    //   548	567	1024	java/io/IOException
    //   567	576	1024	java/io/IOException
    //   590	596	1024	java/io/IOException
    //   611	638	1024	java/io/IOException
    //   641	650	1024	java/io/IOException
    //   668	677	1024	java/io/IOException
    //   699	708	1024	java/io/IOException
    //   728	759	1024	java/io/IOException
    //   762	774	1024	java/io/IOException
    //   791	803	1024	java/io/IOException
    //   821	833	1024	java/io/IOException
    //   892	908	1024	java/io/IOException
    //   956	972	1024	java/io/IOException
    //   975	1002	1024	java/io/IOException
    //   222	229	1110	finally
    //   234	241	1110	finally
    //   246	261	1110	finally
    //   443	466	1110	finally
    //   466	479	1110	finally
    //   497	503	1110	finally
    //   518	527	1110	finally
    //   548	567	1110	finally
    //   567	576	1110	finally
    //   590	596	1110	finally
    //   611	638	1110	finally
    //   641	650	1110	finally
    //   668	677	1110	finally
    //   699	708	1110	finally
    //   728	759	1110	finally
    //   762	774	1110	finally
    //   791	803	1110	finally
    //   821	833	1110	finally
    //   892	908	1110	finally
    //   956	972	1110	finally
    //   975	1002	1110	finally
    //   1026	1077	1110	finally
  }
  
  public Object a()
  {
    r localr = (r)a;
    if (localr != null) {
      try
      {
        if (d)
        {
          b.write("exit\n");
          b.flush();
        }
        c.close();
        b.close();
        a.destroy();
        return Boolean.valueOf(true);
      }
      catch (Exception localException) {}
    }
    return Boolean.valueOf(false);
  }
  
  public void b()
  {
    try
    {
      g = Boolean.valueOf(false);
      g = d();
      return;
    }
    catch (InterruptedException localInterruptedException)
    {
      localInterruptedException.printStackTrace();
    }
  }
  
  public Object c()
  {
    return g;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.local.o
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */