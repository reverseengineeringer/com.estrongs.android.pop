package com.estrongs.fs.impl.local;

import android.content.ContentResolver;
import android.content.Intent;
import android.net.Uri;
import android.os.storage.StorageManager;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.esclasses.g;
import com.estrongs.android.util.ao;
import com.estrongs.android.util.ap;
import com.estrongs.android.util.bg;
import com.estrongs.fs.b.r;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.OutputStream;
import java.lang.reflect.Method;
import java.util.ArrayList;

public class a
{
  public static ArrayList<d> a = new ArrayList();
  private static ArrayList<d> b = new ArrayList();
  private static Class<?> c = null;
  private static Method d = null;
  private static Method e = null;
  private static Method f = null;
  private static Method g = null;
  private static Method h = null;
  
  /* Error */
  public static Uri a(String paramString)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: aload_0
    //   4: invokestatic 50	com/estrongs/android/util/ap:bV	(Ljava/lang/String;)Ljava/lang/String;
    //   7: astore_0
    //   8: aload_0
    //   9: ldc 52
    //   11: invokevirtual 58	java/lang/String:endsWith	(Ljava/lang/String;)Z
    //   14: ifeq +1411 -> 1425
    //   17: aload_0
    //   18: iconst_0
    //   19: aload_0
    //   20: invokevirtual 62	java/lang/String:length	()I
    //   23: iconst_1
    //   24: isub
    //   25: invokevirtual 66	java/lang/String:substring	(II)Ljava/lang/String;
    //   28: astore_0
    //   29: getstatic 28	com/estrongs/fs/impl/local/a:a	Ljava/util/ArrayList;
    //   32: invokevirtual 69	java/util/ArrayList:size	()I
    //   35: ifne +6 -> 41
    //   38: invokestatic 71	com/estrongs/fs/impl/local/a:a	()V
    //   41: getstatic 30	com/estrongs/fs/impl/local/a:c	Ljava/lang/Class;
    //   44: astore 5
    //   46: aload 5
    //   48: ifnonnull +146 -> 194
    //   51: ldc 73
    //   53: invokestatic 79	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   56: putstatic 30	com/estrongs/fs/impl/local/a:c	Ljava/lang/Class;
    //   59: getstatic 30	com/estrongs/fs/impl/local/a:c	Ljava/lang/Class;
    //   62: ldc 81
    //   64: iconst_1
    //   65: anewarray 75	java/lang/Class
    //   68: dup
    //   69: iconst_0
    //   70: ldc 83
    //   72: aastore
    //   73: invokevirtual 87	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   76: putstatic 32	com/estrongs/fs/impl/local/a:d	Ljava/lang/reflect/Method;
    //   79: getstatic 30	com/estrongs/fs/impl/local/a:c	Ljava/lang/Class;
    //   82: ldc 89
    //   84: iconst_2
    //   85: anewarray 75	java/lang/Class
    //   88: dup
    //   89: iconst_0
    //   90: ldc 83
    //   92: aastore
    //   93: dup
    //   94: iconst_1
    //   95: ldc 54
    //   97: aastore
    //   98: invokevirtual 87	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   101: putstatic 34	com/estrongs/fs/impl/local/a:e	Ljava/lang/reflect/Method;
    //   104: getstatic 30	com/estrongs/fs/impl/local/a:c	Ljava/lang/Class;
    //   107: ldc 91
    //   109: iconst_4
    //   110: anewarray 75	java/lang/Class
    //   113: dup
    //   114: iconst_0
    //   115: ldc 93
    //   117: aastore
    //   118: dup
    //   119: iconst_1
    //   120: ldc 83
    //   122: aastore
    //   123: dup
    //   124: iconst_2
    //   125: ldc 54
    //   127: aastore
    //   128: dup
    //   129: iconst_3
    //   130: ldc 54
    //   132: aastore
    //   133: invokevirtual 87	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   136: putstatic 36	com/estrongs/fs/impl/local/a:f	Ljava/lang/reflect/Method;
    //   139: getstatic 30	com/estrongs/fs/impl/local/a:c	Ljava/lang/Class;
    //   142: ldc 95
    //   144: iconst_2
    //   145: anewarray 75	java/lang/Class
    //   148: dup
    //   149: iconst_0
    //   150: ldc 93
    //   152: aastore
    //   153: dup
    //   154: iconst_1
    //   155: ldc 83
    //   157: aastore
    //   158: invokevirtual 87	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   161: putstatic 38	com/estrongs/fs/impl/local/a:g	Ljava/lang/reflect/Method;
    //   164: getstatic 30	com/estrongs/fs/impl/local/a:c	Ljava/lang/Class;
    //   167: ldc 97
    //   169: iconst_3
    //   170: anewarray 75	java/lang/Class
    //   173: dup
    //   174: iconst_0
    //   175: ldc 93
    //   177: aastore
    //   178: dup
    //   179: iconst_1
    //   180: ldc 83
    //   182: aastore
    //   183: dup
    //   184: iconst_2
    //   185: ldc 54
    //   187: aastore
    //   188: invokevirtual 87	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   191: putstatic 40	com/estrongs/fs/impl/local/a:h	Ljava/lang/reflect/Method;
    //   194: iconst_0
    //   195: istore_1
    //   196: iload_1
    //   197: getstatic 28	com/estrongs/fs/impl/local/a:a	Ljava/util/ArrayList;
    //   200: invokevirtual 69	java/util/ArrayList:size	()I
    //   203: if_icmpge +1216 -> 1419
    //   206: getstatic 28	com/estrongs/fs/impl/local/a:a	Ljava/util/ArrayList;
    //   209: iload_1
    //   210: invokevirtual 101	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   213: checkcast 103	com/estrongs/fs/impl/local/d
    //   216: astore 8
    //   218: aload_0
    //   219: aload 8
    //   221: getfield 106	com/estrongs/fs/impl/local/d:c	Ljava/lang/String;
    //   224: invokevirtual 109	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   227: ifne +1201 -> 1428
    //   230: aload_0
    //   231: new 111	java/lang/StringBuilder
    //   234: dup
    //   235: invokespecial 112	java/lang/StringBuilder:<init>	()V
    //   238: aload 8
    //   240: getfield 106	com/estrongs/fs/impl/local/d:c	Ljava/lang/String;
    //   243: invokevirtual 116	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   246: ldc 52
    //   248: invokevirtual 116	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   251: invokevirtual 120	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   254: invokevirtual 123	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   257: ifeq +149 -> 406
    //   260: goto +1168 -> 1428
    //   263: invokestatic 128	com/estrongs/android/pop/FexApplication:a	()Lcom/estrongs/android/pop/FexApplication;
    //   266: invokevirtual 132	com/estrongs/android/pop/FexApplication:getContentResolver	()Landroid/content/ContentResolver;
    //   269: astore 10
    //   271: getstatic 26	com/estrongs/fs/impl/local/a:b	Ljava/util/ArrayList;
    //   274: invokevirtual 69	java/util/ArrayList:size	()I
    //   277: ifne +178 -> 455
    //   280: new 134	com/estrongs/android/util/ao
    //   283: dup
    //   284: aload 10
    //   286: invokespecial 137	com/estrongs/android/util/ao:<init>	(Ljava/lang/Object;)V
    //   289: ldc -117
    //   291: invokevirtual 142	com/estrongs/android/util/ao:a	(Ljava/lang/String;)Ljava/lang/Object;
    //   294: checkcast 144	java/util/List
    //   297: astore 5
    //   299: iconst_0
    //   300: istore_1
    //   301: aload 5
    //   303: invokeinterface 145 1 0
    //   308: istore_2
    //   309: iload_1
    //   310: iload_2
    //   311: if_icmpge +144 -> 455
    //   314: new 103	com/estrongs/fs/impl/local/d
    //   317: dup
    //   318: invokespecial 146	com/estrongs/fs/impl/local/d:<init>	()V
    //   321: astore 6
    //   323: aload 6
    //   325: new 134	com/estrongs/android/util/ao
    //   328: dup
    //   329: aload 5
    //   331: iload_1
    //   332: invokeinterface 147 2 0
    //   337: invokespecial 137	com/estrongs/android/util/ao:<init>	(Ljava/lang/Object;)V
    //   340: ldc -107
    //   342: invokevirtual 142	com/estrongs/android/util/ao:a	(Ljava/lang/String;)Ljava/lang/Object;
    //   345: checkcast 83	android/net/Uri
    //   348: putfield 152	com/estrongs/fs/impl/local/d:a	Landroid/net/Uri;
    //   351: getstatic 32	com/estrongs/fs/impl/local/a:d	Ljava/lang/reflect/Method;
    //   354: aconst_null
    //   355: iconst_1
    //   356: anewarray 4	java/lang/Object
    //   359: dup
    //   360: iconst_0
    //   361: aload 6
    //   363: getfield 152	com/estrongs/fs/impl/local/d:a	Landroid/net/Uri;
    //   366: aastore
    //   367: invokevirtual 158	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   370: checkcast 54	java/lang/String
    //   373: astore 7
    //   375: aload 7
    //   377: bipush 58
    //   379: invokevirtual 162	java/lang/String:indexOf	(I)I
    //   382: istore_2
    //   383: iload_2
    //   384: ifgt +29 -> 413
    //   387: iload_1
    //   388: iconst_1
    //   389: iadd
    //   390: istore_1
    //   391: goto -90 -> 301
    //   394: astore_0
    //   395: aconst_null
    //   396: putstatic 30	com/estrongs/fs/impl/local/a:c	Ljava/lang/Class;
    //   399: aconst_null
    //   400: astore_0
    //   401: ldc 2
    //   403: monitorexit
    //   404: aload_0
    //   405: areturn
    //   406: iload_1
    //   407: iconst_1
    //   408: iadd
    //   409: istore_1
    //   410: goto -214 -> 196
    //   413: aload 6
    //   415: aload 7
    //   417: iconst_0
    //   418: iload_2
    //   419: invokevirtual 66	java/lang/String:substring	(II)Ljava/lang/String;
    //   422: putfield 164	com/estrongs/fs/impl/local/d:b	Ljava/lang/String;
    //   425: aload 6
    //   427: aload 7
    //   429: iload_2
    //   430: iconst_1
    //   431: iadd
    //   432: invokevirtual 167	java/lang/String:substring	(I)Ljava/lang/String;
    //   435: putfield 106	com/estrongs/fs/impl/local/d:c	Ljava/lang/String;
    //   438: getstatic 26	com/estrongs/fs/impl/local/a:b	Ljava/util/ArrayList;
    //   441: aload 6
    //   443: invokevirtual 171	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   446: pop
    //   447: goto -60 -> 387
    //   450: astore 6
    //   452: goto -65 -> 387
    //   455: aconst_null
    //   456: astore 5
    //   458: aload 8
    //   460: ifnonnull +297 -> 757
    //   463: aload_0
    //   464: invokestatic 174	com/estrongs/android/util/ap:bU	(Ljava/lang/String;)Ljava/lang/String;
    //   467: astore 5
    //   469: aload 5
    //   471: ifnonnull +35 -> 506
    //   474: new 111	java/lang/StringBuilder
    //   477: dup
    //   478: invokespecial 112	java/lang/StringBuilder:<init>	()V
    //   481: ldc -80
    //   483: invokevirtual 116	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   486: aload_0
    //   487: invokevirtual 116	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   490: ldc -78
    //   492: invokevirtual 116	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   495: invokevirtual 120	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   498: invokestatic 183	com/estrongs/android/util/x:a	(Ljava/lang/String;)V
    //   501: aconst_null
    //   502: astore_0
    //   503: goto -102 -> 401
    //   506: aload_0
    //   507: invokevirtual 62	java/lang/String:length	()I
    //   510: aload 5
    //   512: invokevirtual 62	java/lang/String:length	()I
    //   515: if_icmple +237 -> 752
    //   518: aload_0
    //   519: aload 5
    //   521: invokevirtual 62	java/lang/String:length	()I
    //   524: iconst_1
    //   525: iadd
    //   526: invokevirtual 167	java/lang/String:substring	(I)Ljava/lang/String;
    //   529: astore_0
    //   530: new 111	java/lang/StringBuilder
    //   533: dup
    //   534: invokespecial 112	java/lang/StringBuilder:<init>	()V
    //   537: ldc -71
    //   539: invokevirtual 116	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   542: aload 5
    //   544: invokevirtual 116	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   547: ldc -69
    //   549: invokevirtual 116	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   552: aload_0
    //   553: invokevirtual 116	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   556: ldc -78
    //   558: invokevirtual 116	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   561: invokevirtual 120	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   564: invokestatic 183	com/estrongs/android/util/x:a	(Ljava/lang/String;)V
    //   567: aload_0
    //   568: astore 6
    //   570: aload_0
    //   571: ifnull +860 -> 1431
    //   574: aload_0
    //   575: astore 6
    //   577: aload_0
    //   578: invokevirtual 62	java/lang/String:length	()I
    //   581: ifne +850 -> 1431
    //   584: aconst_null
    //   585: astore 6
    //   587: goto +844 -> 1431
    //   590: iload_1
    //   591: getstatic 26	com/estrongs/fs/impl/local/a:b	Ljava/util/ArrayList;
    //   594: invokevirtual 69	java/util/ArrayList:size	()I
    //   597: if_icmpge +817 -> 1414
    //   600: getstatic 26	com/estrongs/fs/impl/local/a:b	Ljava/util/ArrayList;
    //   603: iload_1
    //   604: invokevirtual 101	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   607: checkcast 103	com/estrongs/fs/impl/local/d
    //   610: astore 7
    //   612: aload 7
    //   614: getfield 106	com/estrongs/fs/impl/local/d:c	Ljava/lang/String;
    //   617: ifnull +824 -> 1441
    //   620: aload 7
    //   622: getfield 106	com/estrongs/fs/impl/local/d:c	Ljava/lang/String;
    //   625: invokevirtual 62	java/lang/String:length	()I
    //   628: ifne +167 -> 795
    //   631: goto +810 -> 1441
    //   634: aload 7
    //   636: getfield 164	com/estrongs/fs/impl/local/d:b	Ljava/lang/String;
    //   639: aload 8
    //   641: getfield 164	com/estrongs/fs/impl/local/d:b	Ljava/lang/String;
    //   644: invokevirtual 109	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   647: ifeq +158 -> 805
    //   650: aload 7
    //   652: astore_0
    //   653: iload_2
    //   654: ifne +72 -> 726
    //   657: iload_3
    //   658: ifeq +10 -> 668
    //   661: aload 7
    //   663: astore_0
    //   664: iload_2
    //   665: ifne +61 -> 726
    //   668: iload_3
    //   669: ifne +136 -> 805
    //   672: aload 7
    //   674: astore_0
    //   675: aload 6
    //   677: new 111	java/lang/StringBuilder
    //   680: dup
    //   681: invokespecial 112	java/lang/StringBuilder:<init>	()V
    //   684: aload 7
    //   686: getfield 106	com/estrongs/fs/impl/local/d:c	Ljava/lang/String;
    //   689: invokevirtual 116	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   692: ldc 52
    //   694: invokevirtual 116	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   697: invokevirtual 120	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   700: invokevirtual 123	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   703: ifne +23 -> 726
    //   706: aload 6
    //   708: aload 7
    //   710: getfield 106	com/estrongs/fs/impl/local/d:c	Ljava/lang/String;
    //   713: invokevirtual 109	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   716: istore 4
    //   718: iload 4
    //   720: ifeq +85 -> 805
    //   723: aload 7
    //   725: astore_0
    //   726: iconst_1
    //   727: istore 4
    //   729: aload_0
    //   730: astore 7
    //   732: aload 7
    //   734: ifnonnull +483 -> 1217
    //   737: invokestatic 193	com/estrongs/a/a:getCurrentTask	()Lcom/estrongs/a/a;
    //   740: astore 11
    //   742: aload 11
    //   744: ifnonnull +68 -> 812
    //   747: aconst_null
    //   748: astore_0
    //   749: goto -348 -> 401
    //   752: aconst_null
    //   753: astore_0
    //   754: goto -224 -> 530
    //   757: aload_0
    //   758: invokevirtual 62	java/lang/String:length	()I
    //   761: aload 8
    //   763: getfield 106	com/estrongs/fs/impl/local/d:c	Ljava/lang/String;
    //   766: invokevirtual 62	java/lang/String:length	()I
    //   769: if_icmple +21 -> 790
    //   772: aload_0
    //   773: aload 8
    //   775: getfield 106	com/estrongs/fs/impl/local/d:c	Ljava/lang/String;
    //   778: invokevirtual 62	java/lang/String:length	()I
    //   781: iconst_1
    //   782: iadd
    //   783: invokevirtual 167	java/lang/String:substring	(I)Ljava/lang/String;
    //   786: astore_0
    //   787: goto -220 -> 567
    //   790: aconst_null
    //   791: astore_0
    //   792: goto -5 -> 787
    //   795: iconst_0
    //   796: istore_2
    //   797: goto +646 -> 1443
    //   800: iconst_0
    //   801: istore_3
    //   802: goto -168 -> 634
    //   805: iload_1
    //   806: iconst_1
    //   807: iadd
    //   808: istore_1
    //   809: goto -219 -> 590
    //   812: aload 8
    //   814: ifnonnull +71 -> 885
    //   817: aload 5
    //   819: astore_0
    //   820: aload 8
    //   822: ifnonnull +72 -> 894
    //   825: aload 5
    //   827: invokestatic 195	com/estrongs/android/util/ap:d	(Ljava/lang/String;)Ljava/lang/String;
    //   830: astore 9
    //   832: aload 11
    //   834: ldc -59
    //   836: iconst_3
    //   837: anewarray 4	java/lang/Object
    //   840: dup
    //   841: iconst_0
    //   842: aload_0
    //   843: aastore
    //   844: dup
    //   845: iconst_1
    //   846: aload 9
    //   848: aastore
    //   849: dup
    //   850: iconst_2
    //   851: iload 4
    //   853: invokestatic 203	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   856: aastore
    //   857: invokevirtual 207	com/estrongs/a/a:getDecision	(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/estrongs/a/a/d;
    //   860: checkcast 197	com/estrongs/a/a/j
    //   863: astore 9
    //   865: aload 9
    //   867: getfield 208	com/estrongs/a/a/j:a	Landroid/net/Uri;
    //   870: ifnull +583 -> 1453
    //   873: aload 9
    //   875: getfield 211	com/estrongs/a/a/j:g	I
    //   878: iconst_4
    //   879: if_icmpeq +25 -> 904
    //   882: goto +571 -> 1453
    //   885: aload 8
    //   887: getfield 106	com/estrongs/fs/impl/local/d:c	Ljava/lang/String;
    //   890: astore_0
    //   891: goto -71 -> 820
    //   894: aload 8
    //   896: getfield 213	com/estrongs/fs/impl/local/d:d	Ljava/lang/String;
    //   899: astore 9
    //   901: goto -69 -> 832
    //   904: new 103	com/estrongs/fs/impl/local/d
    //   907: dup
    //   908: invokespecial 146	com/estrongs/fs/impl/local/d:<init>	()V
    //   911: astore_0
    //   912: aload_0
    //   913: aload 9
    //   915: getfield 208	com/estrongs/a/a/j:a	Landroid/net/Uri;
    //   918: putfield 152	com/estrongs/fs/impl/local/d:a	Landroid/net/Uri;
    //   921: getstatic 32	com/estrongs/fs/impl/local/a:d	Ljava/lang/reflect/Method;
    //   924: aconst_null
    //   925: iconst_1
    //   926: anewarray 4	java/lang/Object
    //   929: dup
    //   930: iconst_0
    //   931: aload_0
    //   932: getfield 152	com/estrongs/fs/impl/local/d:a	Landroid/net/Uri;
    //   935: aastore
    //   936: invokevirtual 158	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   939: checkcast 54	java/lang/String
    //   942: astore 11
    //   944: aload 11
    //   946: bipush 58
    //   948: invokevirtual 162	java/lang/String:indexOf	(I)I
    //   951: istore_1
    //   952: iload_1
    //   953: ifgt +8 -> 961
    //   956: aconst_null
    //   957: astore_0
    //   958: goto -557 -> 401
    //   961: aload_0
    //   962: aload 11
    //   964: iconst_0
    //   965: iload_1
    //   966: invokevirtual 66	java/lang/String:substring	(II)Ljava/lang/String;
    //   969: putfield 164	com/estrongs/fs/impl/local/d:b	Ljava/lang/String;
    //   972: aload_0
    //   973: aload 11
    //   975: iload_1
    //   976: iconst_1
    //   977: iadd
    //   978: invokevirtual 167	java/lang/String:substring	(I)Ljava/lang/String;
    //   981: putfield 106	com/estrongs/fs/impl/local/d:c	Ljava/lang/String;
    //   984: getstatic 26	com/estrongs/fs/impl/local/a:b	Ljava/util/ArrayList;
    //   987: aload_0
    //   988: invokevirtual 171	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   991: pop
    //   992: new 111	java/lang/StringBuilder
    //   995: dup
    //   996: invokespecial 112	java/lang/StringBuilder:<init>	()V
    //   999: ldc -41
    //   1001: invokevirtual 116	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1004: aload_0
    //   1005: getfield 106	com/estrongs/fs/impl/local/d:c	Ljava/lang/String;
    //   1008: invokevirtual 116	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1011: ldc -39
    //   1013: invokevirtual 116	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1016: aload 6
    //   1018: invokevirtual 116	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1021: ldc -78
    //   1023: invokevirtual 116	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1026: invokevirtual 120	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1029: invokestatic 183	com/estrongs/android/util/x:a	(Ljava/lang/String;)V
    //   1032: aload_0
    //   1033: getfield 106	com/estrongs/fs/impl/local/d:c	Ljava/lang/String;
    //   1036: ifnull +422 -> 1458
    //   1039: aload_0
    //   1040: getfield 106	com/estrongs/fs/impl/local/d:c	Ljava/lang/String;
    //   1043: invokevirtual 62	java/lang/String:length	()I
    //   1046: ifne +439 -> 1485
    //   1049: goto +409 -> 1458
    //   1052: aload 8
    //   1054: ifnull +416 -> 1470
    //   1057: aload_0
    //   1058: getfield 164	com/estrongs/fs/impl/local/d:b	Ljava/lang/String;
    //   1061: aload 8
    //   1063: getfield 164	com/estrongs/fs/impl/local/d:b	Ljava/lang/String;
    //   1066: invokevirtual 109	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   1069: ifeq +131 -> 1200
    //   1072: goto +398 -> 1470
    //   1075: iload_2
    //   1076: ifne +124 -> 1200
    //   1079: aload 6
    //   1081: new 111	java/lang/StringBuilder
    //   1084: dup
    //   1085: invokespecial 112	java/lang/StringBuilder:<init>	()V
    //   1088: aload_0
    //   1089: getfield 106	com/estrongs/fs/impl/local/d:c	Ljava/lang/String;
    //   1092: invokevirtual 116	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1095: ldc 52
    //   1097: invokevirtual 116	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1100: invokevirtual 120	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1103: invokevirtual 123	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   1106: ifne +19 -> 1125
    //   1109: aload 6
    //   1111: aload_0
    //   1112: getfield 106	com/estrongs/fs/impl/local/d:c	Ljava/lang/String;
    //   1115: invokevirtual 109	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   1118: istore 4
    //   1120: iload 4
    //   1122: ifeq +78 -> 1200
    //   1125: new 134	com/estrongs/android/util/ao
    //   1128: dup
    //   1129: aload 10
    //   1131: invokespecial 137	com/estrongs/android/util/ao:<init>	(Ljava/lang/Object;)V
    //   1134: astore 7
    //   1136: getstatic 222	java/lang/Integer:TYPE	Ljava/lang/Class;
    //   1139: astore 11
    //   1141: aload_0
    //   1142: getfield 152	com/estrongs/fs/impl/local/d:a	Landroid/net/Uri;
    //   1145: astore 12
    //   1147: aload 7
    //   1149: ldc -32
    //   1151: iconst_2
    //   1152: anewarray 75	java/lang/Class
    //   1155: dup
    //   1156: iconst_0
    //   1157: ldc 83
    //   1159: aastore
    //   1160: dup
    //   1161: iconst_1
    //   1162: aload 11
    //   1164: aastore
    //   1165: iconst_2
    //   1166: anewarray 4	java/lang/Object
    //   1169: dup
    //   1170: iconst_0
    //   1171: aload 12
    //   1173: aastore
    //   1174: dup
    //   1175: iconst_1
    //   1176: iconst_3
    //   1177: invokestatic 227	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   1180: aastore
    //   1181: invokevirtual 230	com/estrongs/android/util/ao:a	(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    //   1184: pop
    //   1185: aload 9
    //   1187: iconst_0
    //   1188: putfield 233	com/estrongs/a/a/j:e	Z
    //   1191: iconst_0
    //   1192: istore 4
    //   1194: aload_0
    //   1195: astore 7
    //   1197: goto -465 -> 732
    //   1200: ldc -21
    //   1202: invokestatic 183	com/estrongs/android/util/x:a	(Ljava/lang/String;)V
    //   1205: aload 7
    //   1207: astore_0
    //   1208: goto -23 -> 1185
    //   1211: astore_0
    //   1212: aconst_null
    //   1213: astore_0
    //   1214: goto -813 -> 401
    //   1217: aload 7
    //   1219: ifnonnull +106 -> 1325
    //   1222: aconst_null
    //   1223: astore 6
    //   1225: new 111	java/lang/StringBuilder
    //   1228: dup
    //   1229: invokespecial 112	java/lang/StringBuilder:<init>	()V
    //   1232: ldc -19
    //   1234: invokevirtual 116	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1237: aload 6
    //   1239: invokevirtual 240	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   1242: invokevirtual 120	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1245: invokestatic 183	com/estrongs/android/util/x:a	(Ljava/lang/String;)V
    //   1248: aload 6
    //   1250: astore_0
    //   1251: aload 6
    //   1253: ifnull -852 -> 401
    //   1256: aload 6
    //   1258: astore_0
    //   1259: aload 8
    //   1261: ifnonnull -860 -> 401
    //   1264: new 103	com/estrongs/fs/impl/local/d
    //   1267: dup
    //   1268: invokespecial 146	com/estrongs/fs/impl/local/d:<init>	()V
    //   1271: astore_0
    //   1272: aload_0
    //   1273: aload 5
    //   1275: putfield 106	com/estrongs/fs/impl/local/d:c	Ljava/lang/String;
    //   1278: aload_0
    //   1279: aload 7
    //   1281: getfield 164	com/estrongs/fs/impl/local/d:b	Ljava/lang/String;
    //   1284: putfield 164	com/estrongs/fs/impl/local/d:b	Ljava/lang/String;
    //   1287: aload_0
    //   1288: aload 5
    //   1290: invokestatic 195	com/estrongs/android/util/ap:d	(Ljava/lang/String;)Ljava/lang/String;
    //   1293: putfield 213	com/estrongs/fs/impl/local/d:d	Ljava/lang/String;
    //   1296: invokestatic 128	com/estrongs/android/pop/FexApplication:a	()Lcom/estrongs/android/pop/FexApplication;
    //   1299: invokestatic 245	com/estrongs/android/pop/ad:a	(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;
    //   1302: aload 5
    //   1304: aload_0
    //   1305: getfield 164	com/estrongs/fs/impl/local/d:b	Ljava/lang/String;
    //   1308: invokevirtual 249	com/estrongs/android/pop/ad:k	(Ljava/lang/String;Ljava/lang/String;)V
    //   1311: getstatic 28	com/estrongs/fs/impl/local/a:a	Ljava/util/ArrayList;
    //   1314: aload_0
    //   1315: invokevirtual 171	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   1318: pop
    //   1319: aload 6
    //   1321: astore_0
    //   1322: goto -921 -> 401
    //   1325: getstatic 34	com/estrongs/fs/impl/local/a:e	Ljava/lang/reflect/Method;
    //   1328: astore 9
    //   1330: aload 7
    //   1332: getfield 152	com/estrongs/fs/impl/local/d:a	Landroid/net/Uri;
    //   1335: astore 10
    //   1337: new 111	java/lang/StringBuilder
    //   1340: dup
    //   1341: invokespecial 112	java/lang/StringBuilder:<init>	()V
    //   1344: aload 7
    //   1346: getfield 164	com/estrongs/fs/impl/local/d:b	Ljava/lang/String;
    //   1349: invokevirtual 116	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1352: ldc -5
    //   1354: invokevirtual 116	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1357: astore 11
    //   1359: aload 6
    //   1361: ifnonnull +41 -> 1402
    //   1364: ldc -3
    //   1366: astore_0
    //   1367: aload 9
    //   1369: aconst_null
    //   1370: iconst_2
    //   1371: anewarray 4	java/lang/Object
    //   1374: dup
    //   1375: iconst_0
    //   1376: aload 10
    //   1378: aastore
    //   1379: dup
    //   1380: iconst_1
    //   1381: aload 11
    //   1383: aload_0
    //   1384: invokevirtual 116	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1387: invokevirtual 120	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1390: aastore
    //   1391: invokevirtual 158	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   1394: checkcast 83	android/net/Uri
    //   1397: astore 6
    //   1399: goto -174 -> 1225
    //   1402: aload 6
    //   1404: astore_0
    //   1405: goto -38 -> 1367
    //   1408: astore_0
    //   1409: ldc 2
    //   1411: monitorexit
    //   1412: aload_0
    //   1413: athrow
    //   1414: aconst_null
    //   1415: astore_0
    //   1416: goto -690 -> 726
    //   1419: aconst_null
    //   1420: astore 8
    //   1422: goto -1159 -> 263
    //   1425: goto -1396 -> 29
    //   1428: goto -1165 -> 263
    //   1431: aload 8
    //   1433: ifnull -19 -> 1414
    //   1436: iconst_0
    //   1437: istore_1
    //   1438: goto -848 -> 590
    //   1441: iconst_1
    //   1442: istore_2
    //   1443: aload 6
    //   1445: ifnonnull -645 -> 800
    //   1448: iconst_1
    //   1449: istore_3
    //   1450: goto -816 -> 634
    //   1453: aconst_null
    //   1454: astore_0
    //   1455: goto -1054 -> 401
    //   1458: iconst_1
    //   1459: istore_1
    //   1460: aload 6
    //   1462: ifnonnull +28 -> 1490
    //   1465: iconst_1
    //   1466: istore_2
    //   1467: goto -415 -> 1052
    //   1470: iload_1
    //   1471: ifne -346 -> 1125
    //   1474: iload_2
    //   1475: ifeq -400 -> 1075
    //   1478: iload_1
    //   1479: ifne -354 -> 1125
    //   1482: goto -407 -> 1075
    //   1485: iconst_0
    //   1486: istore_1
    //   1487: goto -27 -> 1460
    //   1490: iconst_0
    //   1491: istore_2
    //   1492: goto -440 -> 1052
    //   1495: astore 7
    //   1497: goto -312 -> 1185
    //   1500: astore_0
    //   1501: aconst_null
    //   1502: astore_0
    //   1503: goto -1102 -> 401
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	1506	0	paramString	String
    //   195	1292	1	i	int
    //   308	1184	2	j	int
    //   657	793	3	k	int
    //   716	477	4	bool	boolean
    //   44	1259	5	localObject1	Object
    //   321	121	6	locald1	d
    //   450	1	6	localException1	Exception
    //   568	893	6	localObject2	Object
    //   373	972	7	localObject3	Object
    //   1495	1	7	localException2	Exception
    //   216	1216	8	locald2	d
    //   830	538	9	localObject4	Object
    //   269	1108	10	localObject5	Object
    //   740	642	11	localObject6	Object
    //   1145	27	12	localUri	Uri
    // Exception table:
    //   from	to	target	type
    //   51	194	394	java/lang/Exception
    //   314	383	450	java/lang/Exception
    //   413	447	450	java/lang/Exception
    //   737	742	1211	java/lang/Exception
    //   825	832	1211	java/lang/Exception
    //   832	882	1211	java/lang/Exception
    //   885	891	1211	java/lang/Exception
    //   894	901	1211	java/lang/Exception
    //   904	952	1211	java/lang/Exception
    //   961	1049	1211	java/lang/Exception
    //   1057	1072	1211	java/lang/Exception
    //   1079	1120	1211	java/lang/Exception
    //   1185	1191	1211	java/lang/Exception
    //   1200	1205	1211	java/lang/Exception
    //   3	29	1408	finally
    //   29	41	1408	finally
    //   41	46	1408	finally
    //   51	194	1408	finally
    //   196	260	1408	finally
    //   263	299	1408	finally
    //   301	309	1408	finally
    //   314	383	1408	finally
    //   395	399	1408	finally
    //   413	447	1408	finally
    //   463	469	1408	finally
    //   474	501	1408	finally
    //   506	530	1408	finally
    //   530	567	1408	finally
    //   577	584	1408	finally
    //   590	631	1408	finally
    //   634	650	1408	finally
    //   675	718	1408	finally
    //   737	742	1408	finally
    //   757	787	1408	finally
    //   825	832	1408	finally
    //   832	882	1408	finally
    //   885	891	1408	finally
    //   894	901	1408	finally
    //   904	952	1408	finally
    //   961	1049	1408	finally
    //   1057	1072	1408	finally
    //   1079	1120	1408	finally
    //   1125	1185	1408	finally
    //   1185	1191	1408	finally
    //   1200	1205	1408	finally
    //   1225	1248	1408	finally
    //   1264	1319	1408	finally
    //   1325	1359	1408	finally
    //   1367	1399	1408	finally
    //   1125	1185	1495	java/lang/Exception
    //   1225	1248	1500	java/lang/Exception
    //   1264	1319	1500	java/lang/Exception
    //   1325	1359	1500	java/lang/Exception
    //   1367	1399	1500	java/lang/Exception
  }
  
  public static OutputStream a(String paramString, boolean paramBoolean)
  {
    if (!new File(paramString).exists()) {}
    for (Uri localUri = b(paramString, false); localUri == null; localUri = a(paramString)) {
      return null;
    }
    String str1 = ap.bR(paramString);
    String str2 = ap.bR(localUri.toString());
    com.estrongs.a.a locala = com.estrongs.a.a.getCurrentTask();
    if ((str1 != null) && (str2 != null) && (!str2.equals(str1)) && ((locala instanceof r))) {
      u = (paramString.substring(0, paramString.length() - str1.length()) + str2);
    }
    paramString = FexApplication.a().getContentResolver();
    try
    {
      paramString = paramString.openOutputStream(localUri);
      return paramString;
    }
    catch (FileNotFoundException paramString) {}
    return null;
  }
  
  public static void a()
  {
    try
    {
      a.clear();
      localObject1 = (StorageManager)FexApplication.a().getSystemService("storage");
      if (localObject1 != null) {
        break label30;
      }
    }
    catch (Exception localException)
    {
      Object localObject1;
      label30:
      Object[] arrayOfObject;
      int k;
      label58:
      Object localObject3;
      for (;;) {}
    }
    finally {}
    return;
    arrayOfObject = (Object[])new ao(localObject1).a("getVolumeList");
    k = arrayOfObject.length;
    int i = 0;
    if (i < k)
    {
      localObject3 = new ao(arrayOfObject[i]);
      if (!"mounted".equals(((ao)localObject3).a("getState"))) {
        if (!"mounted_ro".equals(((ao)localObject3).a("getState"))) {
          break label310;
        }
      }
    }
    label310:
    label313:
    for (;;)
    {
      File localFile = (File)((ao)localObject3).a("getPathFile");
      localObject1 = (String)((ao)localObject3).a("getUuid");
      if ((((Boolean)((ao)localObject3).a("isPrimary")).booleanValue()) && (((Boolean)((ao)localObject3).a("isEmulated")).booleanValue())) {
        localObject1 = "primary";
      }
      for (;;)
      {
        String str = (String)((ao)localObject3).a("getUserLabel");
        localObject3 = localObject1;
        if (localObject1 == null) {
          localObject3 = ad.a(FexApplication.a()).T(localFile.getAbsolutePath());
        }
        if (localObject3 == null) {
          break;
        }
        d locald = new d();
        c = localFile.getAbsolutePath();
        b = ((String)localObject3);
        localObject1 = str;
        if (str == null) {
          localObject1 = ap.d(c);
        }
        d = ((String)localObject1);
        a.add(locald);
        break;
      }
      for (int j = 1;; j = 0)
      {
        if (j != 0) {
          break label313;
        }
        i += 1;
        break label58;
        break;
      }
    }
  }
  
  public static void a(com.estrongs.android.pop.app.d.a parama, c paramc)
  {
    Intent localIntent = new Intent("android.intent.action.OPEN_DOCUMENT_TREE");
    g[] arrayOfg = new g[1];
    paramc = new b(paramc, parama, arrayOfg);
    parama.a(paramc);
    arrayOfg[0] = paramc;
    parama.startActivityForResult(localIntent, 4127);
  }
  
  public static boolean a(String paramString1, String paramString2)
  {
    boolean bool = true;
    Uri localUri = a(paramString1);
    if (localUri == null) {}
    while (!ap.bB(paramString1).equalsIgnoreCase(ap.bB(paramString2))) {
      return false;
    }
    try
    {
      paramString1 = h.invoke(null, new Object[] { FexApplication.a().getContentResolver(), localUri, ap.d(paramString2) });
      if (paramString1 != null) {}
      for (;;)
      {
        return bool;
        bool = false;
      }
      return false;
    }
    catch (Exception paramString1) {}
  }
  
  static Uri b(String paramString, boolean paramBoolean)
  {
    Uri localUri = a(ap.bB(paramString));
    if (localUri == null) {
      return null;
    }
    String str2 = ap.d(paramString);
    if (paramBoolean) {}
    for (paramString = "vnd.android.document/directory";; paramString = bg.U(str2))
    {
      String str1 = paramString;
      if (paramString.equals("*/*")) {
        str1 = "application/octet-stream";
      }
      try
      {
        paramString = (Uri)f.invoke(null, new Object[] { FexApplication.a().getContentResolver(), localUri, str1, str2 });
        return paramString;
      }
      catch (Exception paramString)
      {
        paramString.printStackTrace();
      }
    }
    return null;
  }
  
  public static boolean c(String paramString, boolean paramBoolean)
  {
    return b(paramString, paramBoolean) != null;
  }
  
  public static boolean d(String paramString, boolean paramBoolean)
  {
    paramString = a(paramString);
    if (paramString == null) {
      return false;
    }
    try
    {
      paramBoolean = ((Boolean)g.invoke(null, new Object[] { FexApplication.a().getContentResolver(), paramString })).booleanValue();
      return paramBoolean;
    }
    catch (Exception paramString) {}
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.local.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */