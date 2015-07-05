package com.estrongs.fs.impl.r;

import android.content.Context;
import com.estrongs.a.b.o;
import com.estrongs.android.util.TypedMap;
import com.estrongs.android.util.am;
import com.estrongs.fs.FileSystemException;
import com.estrongs.fs.c;
import com.estrongs.fs.h;
import com.estrongs.fs.i;
import de.aflx.sardine.Sardine;
import de.aflx.sardine.SardineFactory;
import java.io.InputStream;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class b
{
  public static String a = null;
  private static String b = null;
  private static HashMap<String, ArrayList<Sardine>> c = new HashMap();
  private static boolean d = false;
  
  public static c a(String paramString)
  {
    return a(paramString, false);
  }
  
  /* Error */
  public static c a(String paramString, boolean paramBoolean)
  {
    // Byte code:
    //   0: ldc 36
    //   2: astore 6
    //   4: aload_0
    //   5: invokestatic 42	com/estrongs/android/util/am:y	(Ljava/lang/String;)Ljava/lang/String;
    //   8: astore 5
    //   10: aload_0
    //   11: invokestatic 45	com/estrongs/android/util/am:A	(Ljava/lang/String;)Ljava/lang/String;
    //   14: astore 9
    //   16: aload_0
    //   17: invokestatic 47	com/estrongs/android/util/am:a	(Ljava/lang/String;)Ljava/lang/String;
    //   20: astore 4
    //   22: aload 6
    //   24: astore 7
    //   26: aload 6
    //   28: astore 8
    //   30: aload_0
    //   31: invokestatic 50	com/estrongs/android/util/am:w	(Ljava/lang/String;)Ljava/lang/String;
    //   34: astore 6
    //   36: aload 6
    //   38: astore 7
    //   40: aload 6
    //   42: astore 8
    //   44: aload_0
    //   45: ldc 52
    //   47: invokevirtual 58	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   50: istore_3
    //   51: aload 5
    //   53: ifnonnull +720 -> 773
    //   56: ldc 60
    //   58: astore 5
    //   60: aload 9
    //   62: ifnonnull +704 -> 766
    //   65: ldc 60
    //   67: astore 7
    //   69: aload 6
    //   71: ifnonnull +692 -> 763
    //   74: iload_3
    //   75: ifeq +43 -> 118
    //   78: ldc 62
    //   80: astore 6
    //   82: aload 5
    //   84: aload 7
    //   86: aload 4
    //   88: aload 6
    //   90: invokestatic 65	com/estrongs/fs/impl/r/b:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lde/aflx/sardine/Sardine;
    //   93: astore 8
    //   95: aload 8
    //   97: ifnonnull +28 -> 125
    //   100: aload 8
    //   102: ifnull +14 -> 116
    //   105: aload 5
    //   107: aload 4
    //   109: aload 6
    //   111: aload 8
    //   113: invokestatic 68	com/estrongs/fs/impl/r/b:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lde/aflx/sardine/Sardine;)V
    //   116: aconst_null
    //   117: areturn
    //   118: ldc 36
    //   120: astore 6
    //   122: goto -40 -> 82
    //   125: aload_0
    //   126: invokestatic 71	com/estrongs/android/util/am:i	(Ljava/lang/String;)Ljava/lang/String;
    //   129: astore 10
    //   131: iload_3
    //   132: ifeq +157 -> 289
    //   135: new 73	java/lang/StringBuilder
    //   138: dup
    //   139: invokespecial 74	java/lang/StringBuilder:<init>	()V
    //   142: ldc 76
    //   144: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   147: aload 4
    //   149: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   152: astore 11
    //   154: aload 6
    //   156: ldc 62
    //   158: invokevirtual 84	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   161: ifeq +103 -> 264
    //   164: ldc 86
    //   166: astore 9
    //   168: aload 11
    //   170: aload 9
    //   172: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   175: aload 10
    //   177: invokestatic 91	java/net/URLEncoder:encode	(Ljava/lang/String;)Ljava/lang/String;
    //   180: ldc 93
    //   182: ldc 95
    //   184: invokevirtual 99	java/lang/String:replace	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   187: ldc 101
    //   189: ldc 103
    //   191: invokevirtual 99	java/lang/String:replace	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   194: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   197: invokevirtual 107	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   200: astore 9
    //   202: iload_1
    //   203: ifeq +573 -> 776
    //   206: aload 5
    //   208: aload 7
    //   210: aload 10
    //   212: invokestatic 110	com/estrongs/android/util/am:c	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   215: astore 7
    //   217: aload 8
    //   219: aload 9
    //   221: iconst_0
    //   222: invokeinterface 116 3 0
    //   227: astore 9
    //   229: aload 9
    //   231: ifnull +15 -> 246
    //   234: aload 9
    //   236: invokeinterface 122 1 0
    //   241: istore_2
    //   242: iload_2
    //   243: ifne +141 -> 384
    //   246: aload 8
    //   248: ifnull +14 -> 262
    //   251: aload 5
    //   253: aload 4
    //   255: aload 6
    //   257: aload 8
    //   259: invokestatic 68	com/estrongs/fs/impl/r/b:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lde/aflx/sardine/Sardine;)V
    //   262: aconst_null
    //   263: areturn
    //   264: new 73	java/lang/StringBuilder
    //   267: dup
    //   268: invokespecial 74	java/lang/StringBuilder:<init>	()V
    //   271: ldc 124
    //   273: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   276: aload 6
    //   278: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   281: invokevirtual 107	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   284: astore 9
    //   286: goto -118 -> 168
    //   289: new 73	java/lang/StringBuilder
    //   292: dup
    //   293: invokespecial 74	java/lang/StringBuilder:<init>	()V
    //   296: ldc 126
    //   298: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   301: aload 4
    //   303: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   306: astore 11
    //   308: aload 6
    //   310: ldc 36
    //   312: invokevirtual 84	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   315: ifeq +44 -> 359
    //   318: ldc 86
    //   320: astore 9
    //   322: aload 11
    //   324: aload 9
    //   326: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   329: aload 10
    //   331: invokestatic 91	java/net/URLEncoder:encode	(Ljava/lang/String;)Ljava/lang/String;
    //   334: ldc 93
    //   336: ldc 95
    //   338: invokevirtual 99	java/lang/String:replace	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   341: ldc 101
    //   343: ldc 103
    //   345: invokevirtual 99	java/lang/String:replace	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   348: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   351: invokevirtual 107	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   354: astore 9
    //   356: goto -154 -> 202
    //   359: new 73	java/lang/StringBuilder
    //   362: dup
    //   363: invokespecial 74	java/lang/StringBuilder:<init>	()V
    //   366: ldc 124
    //   368: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   371: aload 6
    //   373: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   376: invokevirtual 107	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   379: astore 9
    //   381: goto -59 -> 322
    //   384: iload_1
    //   385: ifeq +131 -> 516
    //   388: new 128	com/estrongs/fs/c
    //   391: dup
    //   392: aload 7
    //   394: invokespecial 131	com/estrongs/fs/c:<init>	(Ljava/lang/String;)V
    //   397: astore 7
    //   399: aload 7
    //   401: aload 9
    //   403: iconst_0
    //   404: invokeinterface 135 2 0
    //   409: checkcast 137	de/aflx/sardine/DavResource
    //   412: invokevirtual 141	de/aflx/sardine/DavResource:isDirectory	()Z
    //   415: putfield 142	com/estrongs/fs/c:d	Z
    //   418: aload 7
    //   420: getfield 142	com/estrongs/fs/c:d	Z
    //   423: ifeq +99 -> 522
    //   426: aload 7
    //   428: aload 9
    //   430: iconst_0
    //   431: invokeinterface 135 2 0
    //   436: checkcast 137	de/aflx/sardine/DavResource
    //   439: invokevirtual 146	de/aflx/sardine/DavResource:getModified	()Ljava/util/Date;
    //   442: invokevirtual 152	java/util/Date:getTime	()J
    //   445: putfield 156	com/estrongs/fs/c:j	J
    //   448: aload 7
    //   450: lconst_0
    //   451: putfield 159	com/estrongs/fs/c:h	J
    //   454: aload 7
    //   456: iconst_1
    //   457: putfield 162	com/estrongs/fs/c:k	Z
    //   460: aload 7
    //   462: iconst_1
    //   463: putfield 165	com/estrongs/fs/c:l	Z
    //   466: aload_0
    //   467: invokestatic 167	com/estrongs/android/util/am:d	(Ljava/lang/String;)Ljava/lang/String;
    //   470: astore_0
    //   471: aload_0
    //   472: ifnull +310 -> 782
    //   475: aload_0
    //   476: ldc -87
    //   478: invokevirtual 58	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   481: ifeq +125 -> 606
    //   484: goto +298 -> 782
    //   487: aload 7
    //   489: iload_1
    //   490: putfield 172	com/estrongs/fs/c:m	Z
    //   493: aconst_null
    //   494: putstatic 16	com/estrongs/fs/impl/r/b:a	Ljava/lang/String;
    //   497: aload 8
    //   499: ifnull +14 -> 513
    //   502: aload 5
    //   504: aload 4
    //   506: aload 6
    //   508: aload 8
    //   510: invokestatic 68	com/estrongs/fs/impl/r/b:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lde/aflx/sardine/Sardine;)V
    //   513: aload 7
    //   515: areturn
    //   516: aload_0
    //   517: astore 7
    //   519: goto -131 -> 388
    //   522: aload 7
    //   524: ldc -82
    //   526: putfield 176	com/estrongs/fs/c:c	Ljava/lang/String;
    //   529: aload 7
    //   531: aload 9
    //   533: iconst_0
    //   534: invokeinterface 135 2 0
    //   539: checkcast 137	de/aflx/sardine/DavResource
    //   542: invokevirtual 180	de/aflx/sardine/DavResource:getContentLength	()Ljava/lang/Long;
    //   545: invokevirtual 185	java/lang/Long:longValue	()J
    //   548: putfield 188	com/estrongs/fs/c:e	J
    //   551: goto -125 -> 426
    //   554: astore 7
    //   556: aload 8
    //   558: astore_0
    //   559: aload 7
    //   561: invokevirtual 191	java/lang/Exception:printStackTrace	()V
    //   564: aload 7
    //   566: invokevirtual 194	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   569: putstatic 16	com/estrongs/fs/impl/r/b:a	Ljava/lang/String;
    //   572: aload_0
    //   573: astore 7
    //   575: aload_0
    //   576: ifnull +12 -> 588
    //   579: aload_0
    //   580: invokeinterface 197 1 0
    //   585: aconst_null
    //   586: astore 7
    //   588: aload 7
    //   590: ifnull +14 -> 604
    //   593: aload 5
    //   595: aload 4
    //   597: aload 6
    //   599: aload 7
    //   601: invokestatic 68	com/estrongs/fs/impl/r/b:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lde/aflx/sardine/Sardine;)V
    //   604: aconst_null
    //   605: areturn
    //   606: iconst_0
    //   607: istore_1
    //   608: goto -121 -> 487
    //   611: astore_0
    //   612: ldc 36
    //   614: astore 6
    //   616: aconst_null
    //   617: astore 7
    //   619: aconst_null
    //   620: astore 5
    //   622: aconst_null
    //   623: astore 4
    //   625: aload 4
    //   627: ifnull +14 -> 641
    //   630: aload 5
    //   632: aload 7
    //   634: aload 6
    //   636: aload 4
    //   638: invokestatic 68	com/estrongs/fs/impl/r/b:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lde/aflx/sardine/Sardine;)V
    //   641: aload_0
    //   642: athrow
    //   643: astore_0
    //   644: aconst_null
    //   645: astore 7
    //   647: aconst_null
    //   648: astore 4
    //   650: ldc 36
    //   652: astore 6
    //   654: goto -29 -> 625
    //   657: astore_0
    //   658: aconst_null
    //   659: astore 8
    //   661: aload 7
    //   663: astore 6
    //   665: aload 4
    //   667: astore 7
    //   669: aload 8
    //   671: astore 4
    //   673: goto -48 -> 625
    //   676: astore_0
    //   677: aconst_null
    //   678: astore 8
    //   680: aload 4
    //   682: astore 7
    //   684: aload 8
    //   686: astore 4
    //   688: goto -63 -> 625
    //   691: astore_0
    //   692: aload 4
    //   694: astore 7
    //   696: aload 8
    //   698: astore 4
    //   700: goto -75 -> 625
    //   703: astore 7
    //   705: aload_0
    //   706: astore 8
    //   708: aload 7
    //   710: astore_0
    //   711: aload 4
    //   713: astore 7
    //   715: aload 8
    //   717: astore 4
    //   719: goto -94 -> 625
    //   722: astore 7
    //   724: aconst_null
    //   725: astore 4
    //   727: aconst_null
    //   728: astore 5
    //   730: aconst_null
    //   731: astore_0
    //   732: goto -173 -> 559
    //   735: astore 7
    //   737: aconst_null
    //   738: astore_0
    //   739: aconst_null
    //   740: astore 4
    //   742: goto -183 -> 559
    //   745: astore 7
    //   747: aconst_null
    //   748: astore_0
    //   749: aload 8
    //   751: astore 6
    //   753: goto -194 -> 559
    //   756: astore 7
    //   758: aconst_null
    //   759: astore_0
    //   760: goto -201 -> 559
    //   763: goto -681 -> 82
    //   766: aload 9
    //   768: astore 7
    //   770: goto -701 -> 69
    //   773: goto -713 -> 60
    //   776: aconst_null
    //   777: astore 7
    //   779: goto -562 -> 217
    //   782: iconst_1
    //   783: istore_1
    //   784: goto -297 -> 487
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	787	0	paramString	String
    //   0	787	1	paramBoolean	boolean
    //   241	2	2	i	int
    //   50	82	3	bool	boolean
    //   20	721	4	localObject1	Object
    //   8	721	5	str1	String
    //   2	750	6	localObject2	Object
    //   24	506	7	localObject3	Object
    //   554	11	7	localException1	Exception
    //   573	122	7	localObject4	Object
    //   703	6	7	localObject5	Object
    //   713	1	7	localObject6	Object
    //   722	1	7	localException2	Exception
    //   735	1	7	localException3	Exception
    //   745	1	7	localException4	Exception
    //   756	1	7	localException5	Exception
    //   768	10	7	localObject7	Object
    //   28	722	8	localObject8	Object
    //   14	753	9	localObject9	Object
    //   129	201	10	str2	String
    //   152	171	11	localStringBuilder	StringBuilder
    // Exception table:
    //   from	to	target	type
    //   125	131	554	java/lang/Exception
    //   135	164	554	java/lang/Exception
    //   168	202	554	java/lang/Exception
    //   206	217	554	java/lang/Exception
    //   217	229	554	java/lang/Exception
    //   234	242	554	java/lang/Exception
    //   264	286	554	java/lang/Exception
    //   289	318	554	java/lang/Exception
    //   322	356	554	java/lang/Exception
    //   359	381	554	java/lang/Exception
    //   388	426	554	java/lang/Exception
    //   426	471	554	java/lang/Exception
    //   475	484	554	java/lang/Exception
    //   487	497	554	java/lang/Exception
    //   522	551	554	java/lang/Exception
    //   4	10	611	finally
    //   10	22	643	finally
    //   30	36	657	finally
    //   44	51	657	finally
    //   82	95	676	finally
    //   125	131	691	finally
    //   135	164	691	finally
    //   168	202	691	finally
    //   206	217	691	finally
    //   217	229	691	finally
    //   234	242	691	finally
    //   264	286	691	finally
    //   289	318	691	finally
    //   322	356	691	finally
    //   359	381	691	finally
    //   388	426	691	finally
    //   426	471	691	finally
    //   475	484	691	finally
    //   487	497	691	finally
    //   522	551	691	finally
    //   559	572	703	finally
    //   579	585	703	finally
    //   4	10	722	java/lang/Exception
    //   10	22	735	java/lang/Exception
    //   30	36	745	java/lang/Exception
    //   44	51	745	java/lang/Exception
    //   82	95	756	java/lang/Exception
  }
  
  /* Error */
  private static Sardine a(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 25	com/estrongs/fs/impl/r/b:c	Ljava/util/HashMap;
    //   6: astore 6
    //   8: aload 6
    //   10: monitorenter
    //   11: getstatic 25	com/estrongs/fs/impl/r/b:c	Ljava/util/HashMap;
    //   14: new 73	java/lang/StringBuilder
    //   17: dup
    //   18: invokespecial 74	java/lang/StringBuilder:<init>	()V
    //   21: aload_0
    //   22: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   25: ldc -57
    //   27: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   30: aload_2
    //   31: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   34: ldc -57
    //   36: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   39: aload_3
    //   40: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   43: invokevirtual 107	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   46: invokevirtual 202	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   49: checkcast 204	java/util/ArrayList
    //   52: astore 5
    //   54: aload 5
    //   56: astore 4
    //   58: aload 5
    //   60: ifnonnull +53 -> 113
    //   63: new 204	java/util/ArrayList
    //   66: dup
    //   67: invokespecial 205	java/util/ArrayList:<init>	()V
    //   70: astore 4
    //   72: getstatic 25	com/estrongs/fs/impl/r/b:c	Ljava/util/HashMap;
    //   75: new 73	java/lang/StringBuilder
    //   78: dup
    //   79: invokespecial 74	java/lang/StringBuilder:<init>	()V
    //   82: aload_0
    //   83: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   86: ldc -57
    //   88: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   91: aload_2
    //   92: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   95: ldc -57
    //   97: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   100: aload_3
    //   101: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   104: invokevirtual 107	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   107: aload 4
    //   109: invokevirtual 209	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   112: pop
    //   113: aload 6
    //   115: monitorexit
    //   116: aload 4
    //   118: invokevirtual 210	java/util/ArrayList:size	()I
    //   121: ifle +34 -> 155
    //   124: aload 4
    //   126: iconst_0
    //   127: invokevirtual 213	java/util/ArrayList:remove	(I)Ljava/lang/Object;
    //   130: checkcast 112	de/aflx/sardine/Sardine
    //   133: astore_0
    //   134: ldc 2
    //   136: monitorexit
    //   137: aload_0
    //   138: areturn
    //   139: astore_0
    //   140: aload 6
    //   142: monitorexit
    //   143: aload_0
    //   144: athrow
    //   145: astore_0
    //   146: aload_0
    //   147: invokevirtual 191	java/lang/Exception:printStackTrace	()V
    //   150: aconst_null
    //   151: astore_0
    //   152: goto -18 -> 134
    //   155: aload_0
    //   156: aload_1
    //   157: invokestatic 219	de/aflx/sardine/SardineFactory:begin	(Ljava/lang/String;Ljava/lang/String;)Lde/aflx/sardine/Sardine;
    //   160: astore_0
    //   161: goto -27 -> 134
    //   164: astore_0
    //   165: ldc 2
    //   167: monitorexit
    //   168: aload_0
    //   169: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	170	0	paramString1	String
    //   0	170	1	paramString2	String
    //   0	170	2	paramString3	String
    //   0	170	3	paramString4	String
    //   56	69	4	localArrayList1	ArrayList
    //   52	7	5	localArrayList2	ArrayList
    // Exception table:
    //   from	to	target	type
    //   11	54	139	finally
    //   63	113	139	finally
    //   113	116	139	finally
    //   140	143	139	finally
    //   3	11	145	java/lang/Exception
    //   116	134	145	java/lang/Exception
    //   143	145	145	java/lang/Exception
    //   155	161	145	java/lang/Exception
    //   3	11	164	finally
    //   116	134	164	finally
    //   143	145	164	finally
    //   146	150	164	finally
    //   155	161	164	finally
  }
  
  public static InputStream a(String paramString, long paramLong, TypedMap paramTypedMap)
  {
    try
    {
      localObject1 = am.y(paramString);
      str1 = am.A(paramString);
      str2 = am.a(paramString);
      localObject3 = am.w(paramString);
      bool = paramString.startsWith("webdavs://");
      localObject2 = localObject1;
      if (localObject1 != null) {
        break label439;
      }
      localObject2 = "fake";
    }
    catch (Exception paramString)
    {
      for (;;)
      {
        String str1;
        String str2;
        Object localObject3;
        boolean bool;
        Object localObject2;
        label320:
        label412:
        paramTypedMap = null;
        continue;
        paramString = null;
        continue;
        for (;;)
        {
          break;
          label439:
          if (str1 == null) {
            str1 = "fake";
          }
        }
        Object localObject1 = localObject3;
        if (localObject3 == null) {
          if (bool) {
            localObject1 = "443";
          }
        }
      }
    }
    localObject3 = SardineFactory.begin((String)localObject2, str1);
    if (localObject3 == null)
    {
      return null;
      localObject1 = "80";
    }
    else
    {
      for (;;)
      {
        try
        {
          str1 = am.i(paramString);
          if (!bool) {
            break label320;
          }
          localObject4 = new StringBuilder().append("https://").append(str2);
          if (((String)localObject1).equals("443"))
          {
            paramString = "";
            str1 = paramString + URLEncoder.encode(str1).replace("%2F", "/").replace("+", "%20");
            if ((paramTypedMap == null) || (!paramTypedMap.containsKey("end_offset"))) {
              break;
            }
            paramString = paramTypedMap.getString("end_offset");
            if (paramLong <= 0L) {
              break label412;
            }
            localObject4 = new HashMap();
            StringBuilder localStringBuilder = new StringBuilder().append("bytes=").append(paramLong).append("-");
            paramTypedMap = paramString;
            if (paramString == null) {
              paramTypedMap = "";
            }
            ((HashMap)localObject4).put("Range", paramTypedMap);
            paramString = ((Sardine)localObject3).get(str1, (Map)localObject4);
            a = null;
            paramString = new d(paramString, (Sardine)localObject3, (String)localObject2, str2, (String)localObject1);
            return paramString;
          }
        }
        catch (Exception paramString)
        {
          paramTypedMap = (TypedMap)localObject3;
          a = paramString.getMessage();
          if (paramTypedMap != null) {
            paramTypedMap.destroy();
          }
          throw new FileSystemException(paramString);
        }
        paramString = ":" + (String)localObject1;
        continue;
        Object localObject4 = new StringBuilder().append("http://").append(str2);
        if (((String)localObject1).equals("80")) {}
        for (paramString = "";; paramString = ":" + (String)localObject1)
        {
          str1 = paramString + URLEncoder.encode(str1).replace("%2F", "/").replace("+", "%20");
          break;
        }
        paramString = ((Sardine)localObject3).get(str1);
      }
    }
  }
  
  /* Error */
  public static java.io.OutputStream a(String paramString, long paramLong)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokestatic 42	com/estrongs/android/util/am:y	(Ljava/lang/String;)Ljava/lang/String;
    //   4: astore 4
    //   6: aload_0
    //   7: invokestatic 45	com/estrongs/android/util/am:A	(Ljava/lang/String;)Ljava/lang/String;
    //   10: astore 6
    //   12: aload_0
    //   13: invokestatic 47	com/estrongs/android/util/am:a	(Ljava/lang/String;)Ljava/lang/String;
    //   16: astore 8
    //   18: aload_0
    //   19: invokestatic 50	com/estrongs/android/util/am:w	(Ljava/lang/String;)Ljava/lang/String;
    //   22: astore 7
    //   24: aload_0
    //   25: ldc 52
    //   27: invokevirtual 58	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   30: istore_3
    //   31: aload 4
    //   33: astore 5
    //   35: aload 4
    //   37: ifnonnull +352 -> 389
    //   40: ldc 60
    //   42: astore 5
    //   44: goto +345 -> 389
    //   47: aload 5
    //   49: aload 6
    //   51: invokestatic 219	de/aflx/sardine/SardineFactory:begin	(Ljava/lang/String;Ljava/lang/String;)Lde/aflx/sardine/Sardine;
    //   54: astore 6
    //   56: aload 6
    //   58: ifnonnull +12 -> 70
    //   61: aconst_null
    //   62: areturn
    //   63: ldc 36
    //   65: astore 4
    //   67: goto +348 -> 415
    //   70: new 258	com/estrongs/android/pop/netfs/utils/UploadOutputStream
    //   73: dup
    //   74: invokespecial 259	com/estrongs/android/pop/netfs/utils/UploadOutputStream:<init>	()V
    //   77: astore 7
    //   79: new 261	com/estrongs/android/pop/netfs/utils/FastPipedInputStream
    //   82: dup
    //   83: invokespecial 262	com/estrongs/android/pop/netfs/utils/FastPipedInputStream:<init>	()V
    //   86: astore 9
    //   88: aload 9
    //   90: aload 7
    //   92: invokevirtual 266	com/estrongs/android/pop/netfs/utils/FastPipedInputStream:connect	(Lcom/estrongs/android/pop/netfs/utils/FastPipedOutputStream;)V
    //   95: aload_0
    //   96: invokestatic 71	com/estrongs/android/util/am:i	(Ljava/lang/String;)Ljava/lang/String;
    //   99: astore 10
    //   101: iload_3
    //   102: ifeq +183 -> 285
    //   105: new 73	java/lang/StringBuilder
    //   108: dup
    //   109: invokespecial 74	java/lang/StringBuilder:<init>	()V
    //   112: ldc 76
    //   114: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   117: aload 8
    //   119: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   122: astore 11
    //   124: aload 4
    //   126: ldc 62
    //   128: invokevirtual 84	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   131: ifeq +130 -> 261
    //   134: ldc 86
    //   136: astore_0
    //   137: aload 11
    //   139: aload_0
    //   140: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   143: aload 10
    //   145: invokestatic 91	java/net/URLEncoder:encode	(Ljava/lang/String;)Ljava/lang/String;
    //   148: ldc 93
    //   150: ldc 95
    //   152: invokevirtual 99	java/lang/String:replace	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   155: ldc 101
    //   157: ldc 103
    //   159: invokevirtual 99	java/lang/String:replace	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   162: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   165: invokevirtual 107	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   168: astore_0
    //   169: new 268	com/estrongs/fs/impl/r/c
    //   172: dup
    //   173: aload 9
    //   175: lload_1
    //   176: aload 6
    //   178: aload_0
    //   179: aload 7
    //   181: invokespecial 271	com/estrongs/fs/impl/r/c:<init>	(Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream;JLde/aflx/sardine/Sardine;Ljava/lang/String;Lcom/estrongs/android/pop/netfs/utils/UploadOutputStream;)V
    //   184: astore_0
    //   185: aload 7
    //   187: aload_0
    //   188: aload 9
    //   190: invokevirtual 275	com/estrongs/android/pop/netfs/utils/UploadOutputStream:setTask	(Ljava/lang/Thread;Ljava/io/InputStream;)V
    //   193: aload_0
    //   194: invokevirtual 280	java/lang/Thread:start	()V
    //   197: aconst_null
    //   198: putstatic 16	com/estrongs/fs/impl/r/b:a	Ljava/lang/String;
    //   201: new 282	com/estrongs/fs/impl/r/e
    //   204: dup
    //   205: aload 7
    //   207: aload 6
    //   209: aload 5
    //   211: aload 8
    //   213: aload 4
    //   215: invokespecial 285	com/estrongs/fs/impl/r/e:<init>	(Ljava/io/OutputStream;Lde/aflx/sardine/Sardine;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   218: astore_0
    //   219: aload_0
    //   220: areturn
    //   221: astore_0
    //   222: aload 6
    //   224: astore 4
    //   226: aload 4
    //   228: ifnull +17 -> 245
    //   231: aload 4
    //   233: invokeinterface 288 1 0
    //   238: aload 4
    //   240: invokeinterface 197 1 0
    //   245: aload_0
    //   246: invokevirtual 194	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   249: putstatic 16	com/estrongs/fs/impl/r/b:a	Ljava/lang/String;
    //   252: new 249	com/estrongs/fs/FileSystemException
    //   255: dup
    //   256: aload_0
    //   257: invokespecial 252	com/estrongs/fs/FileSystemException:<init>	(Ljava/lang/Throwable;)V
    //   260: athrow
    //   261: new 73	java/lang/StringBuilder
    //   264: dup
    //   265: invokespecial 74	java/lang/StringBuilder:<init>	()V
    //   268: ldc 124
    //   270: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   273: aload 4
    //   275: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   278: invokevirtual 107	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   281: astore_0
    //   282: goto -145 -> 137
    //   285: new 73	java/lang/StringBuilder
    //   288: dup
    //   289: invokespecial 74	java/lang/StringBuilder:<init>	()V
    //   292: ldc 126
    //   294: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   297: aload 8
    //   299: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   302: astore 11
    //   304: aload 4
    //   306: ldc 36
    //   308: invokevirtual 84	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   311: ifeq +41 -> 352
    //   314: ldc 86
    //   316: astore_0
    //   317: aload 11
    //   319: aload_0
    //   320: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   323: aload 10
    //   325: invokestatic 91	java/net/URLEncoder:encode	(Ljava/lang/String;)Ljava/lang/String;
    //   328: ldc 93
    //   330: ldc 95
    //   332: invokevirtual 99	java/lang/String:replace	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   335: ldc 101
    //   337: ldc 103
    //   339: invokevirtual 99	java/lang/String:replace	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   342: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   345: invokevirtual 107	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   348: astore_0
    //   349: goto -180 -> 169
    //   352: new 73	java/lang/StringBuilder
    //   355: dup
    //   356: invokespecial 74	java/lang/StringBuilder:<init>	()V
    //   359: ldc 124
    //   361: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   364: aload 4
    //   366: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   369: invokevirtual 107	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   372: astore_0
    //   373: goto -56 -> 317
    //   376: astore_0
    //   377: aconst_null
    //   378: areturn
    //   379: astore_0
    //   380: aconst_null
    //   381: astore 4
    //   383: goto -157 -> 226
    //   386: goto +12 -> 398
    //   389: aload 6
    //   391: ifnonnull -5 -> 386
    //   394: ldc 60
    //   396: astore 6
    //   398: aload 7
    //   400: astore 4
    //   402: aload 7
    //   404: ifnonnull -357 -> 47
    //   407: iload_3
    //   408: ifeq -345 -> 63
    //   411: ldc 62
    //   413: astore 4
    //   415: goto -368 -> 47
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	418	0	paramString	String
    //   0	418	1	paramLong	long
    //   30	378	3	bool	boolean
    //   4	410	4	localObject1	Object
    //   33	177	5	localObject2	Object
    //   10	387	6	localObject3	Object
    //   22	381	7	localObject4	Object
    //   16	282	8	str1	String
    //   86	103	9	localFastPipedInputStream	com.estrongs.android.pop.netfs.utils.FastPipedInputStream
    //   99	225	10	str2	String
    //   122	196	11	localStringBuilder	StringBuilder
    // Exception table:
    //   from	to	target	type
    //   70	88	221	java/lang/Exception
    //   95	101	221	java/lang/Exception
    //   105	134	221	java/lang/Exception
    //   137	169	221	java/lang/Exception
    //   169	219	221	java/lang/Exception
    //   261	282	221	java/lang/Exception
    //   285	314	221	java/lang/Exception
    //   317	349	221	java/lang/Exception
    //   352	373	221	java/lang/Exception
    //   88	95	376	java/lang/Exception
    //   0	31	379	java/lang/Exception
    //   47	56	379	java/lang/Exception
  }
  
  public static List<h> a(String paramString, i parami, o<String> paramo)
  {
    return a(paramString, parami, paramo, false);
  }
  
  /* Error */
  public static List<h> a(String paramString, i parami, o<String> paramo, boolean paramBoolean)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 12
    //   3: aconst_null
    //   4: astore 11
    //   6: ldc 36
    //   8: astore 10
    //   10: aload_0
    //   11: invokestatic 42	com/estrongs/android/util/am:y	(Ljava/lang/String;)Ljava/lang/String;
    //   14: astore_1
    //   15: aload_0
    //   16: invokestatic 45	com/estrongs/android/util/am:A	(Ljava/lang/String;)Ljava/lang/String;
    //   19: astore 13
    //   21: aload_0
    //   22: invokestatic 47	com/estrongs/android/util/am:a	(Ljava/lang/String;)Ljava/lang/String;
    //   25: astore_2
    //   26: aload 10
    //   28: astore 8
    //   30: aload_0
    //   31: invokestatic 50	com/estrongs/android/util/am:w	(Ljava/lang/String;)Ljava/lang/String;
    //   34: astore 9
    //   36: aload 9
    //   38: astore 8
    //   40: aload 9
    //   42: astore 10
    //   44: aload_0
    //   45: ldc 52
    //   47: invokevirtual 58	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   50: istore 6
    //   52: aload_1
    //   53: ifnonnull +1200 -> 1253
    //   56: ldc 60
    //   58: astore 8
    //   60: aload 13
    //   62: astore 11
    //   64: aload 13
    //   66: ifnonnull +7 -> 73
    //   69: ldc 60
    //   71: astore 11
    //   73: aload 9
    //   75: ifnonnull +1172 -> 1247
    //   78: iload 6
    //   80: ifeq +147 -> 227
    //   83: ldc 62
    //   85: astore_1
    //   86: aload 12
    //   88: astore 10
    //   90: aload 8
    //   92: aload 11
    //   94: aload_2
    //   95: aload_1
    //   96: invokestatic 65	com/estrongs/fs/impl/r/b:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lde/aflx/sardine/Sardine;
    //   99: astore 9
    //   101: aload 9
    //   103: ifnonnull +130 -> 233
    //   106: aload 9
    //   108: astore 10
    //   110: new 296	java/net/ConnectException
    //   113: dup
    //   114: invokespecial 297	java/net/ConnectException:<init>	()V
    //   117: athrow
    //   118: astore 10
    //   120: aload_1
    //   121: astore_0
    //   122: aload 9
    //   124: astore_1
    //   125: aload 10
    //   127: astore 9
    //   129: aload 9
    //   131: invokevirtual 191	java/lang/Exception:printStackTrace	()V
    //   134: aload_1
    //   135: ifnull +1109 -> 1244
    //   138: aload_1
    //   139: invokeinterface 197 1 0
    //   144: aconst_null
    //   145: astore_1
    //   146: aload 9
    //   148: invokevirtual 194	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   151: putstatic 16	com/estrongs/fs/impl/r/b:a	Ljava/lang/String;
    //   154: aload 9
    //   156: instanceof 299
    //   159: ifeq +924 -> 1083
    //   162: aload 9
    //   164: checkcast 299	de/aflx/sardine/impl/SardineException
    //   167: invokevirtual 302	de/aflx/sardine/impl/SardineException:getStatusCode	()I
    //   170: sipush 401
    //   173: if_icmpne +910 -> 1083
    //   176: new 304	com/estrongs/android/exception/GeneralException
    //   179: dup
    //   180: getstatic 310	com/estrongs/android/exception/GeneralException$ERROR_CODE:ERROR_AUTHORIZATION	Lcom/estrongs/android/exception/GeneralException$ERROR_CODE;
    //   183: invokespecial 313	com/estrongs/android/exception/GeneralException:<init>	(Lcom/estrongs/android/exception/GeneralException$ERROR_CODE;)V
    //   186: athrow
    //   187: astore 11
    //   189: aload 8
    //   191: astore 9
    //   193: aload_2
    //   194: astore 10
    //   196: aload_1
    //   197: astore 8
    //   199: aload 9
    //   201: astore_2
    //   202: aload 10
    //   204: astore 9
    //   206: aload_0
    //   207: astore_1
    //   208: aload 11
    //   210: astore_0
    //   211: aload 8
    //   213: ifnull +12 -> 225
    //   216: aload_2
    //   217: aload 9
    //   219: aload_1
    //   220: aload 8
    //   222: invokestatic 68	com/estrongs/fs/impl/r/b:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lde/aflx/sardine/Sardine;)V
    //   225: aload_0
    //   226: athrow
    //   227: ldc 36
    //   229: astore_1
    //   230: goto -144 -> 86
    //   233: aload 9
    //   235: astore 10
    //   237: aload_0
    //   238: invokestatic 71	com/estrongs/android/util/am:i	(Ljava/lang/String;)Ljava/lang/String;
    //   241: astore 16
    //   243: iload 6
    //   245: ifeq +266 -> 511
    //   248: aload 9
    //   250: astore 10
    //   252: new 73	java/lang/StringBuilder
    //   255: dup
    //   256: invokespecial 74	java/lang/StringBuilder:<init>	()V
    //   259: ldc 76
    //   261: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   264: aload_2
    //   265: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   268: astore 13
    //   270: aload 9
    //   272: astore 10
    //   274: aload_1
    //   275: ldc 62
    //   277: invokevirtual 84	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   280: ifeq +203 -> 483
    //   283: ldc 86
    //   285: astore 12
    //   287: aload 9
    //   289: astore 10
    //   291: aload 13
    //   293: aload 12
    //   295: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   298: aload 16
    //   300: invokestatic 91	java/net/URLEncoder:encode	(Ljava/lang/String;)Ljava/lang/String;
    //   303: ldc 93
    //   305: ldc 95
    //   307: invokevirtual 99	java/lang/String:replace	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   310: ldc 101
    //   312: ldc 103
    //   314: invokevirtual 99	java/lang/String:replace	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   317: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   320: invokevirtual 107	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   323: astore 12
    //   325: iload_3
    //   326: ifeq +933 -> 1259
    //   329: aload 9
    //   331: astore 10
    //   333: aload 8
    //   335: aload 11
    //   337: aload 16
    //   339: invokestatic 110	com/estrongs/android/util/am:c	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   342: astore 11
    //   344: aload 9
    //   346: astore 10
    //   348: aload_0
    //   349: ldc_w 315
    //   352: invokevirtual 319	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   355: istore 7
    //   357: aload 9
    //   359: astore 10
    //   361: invokestatic 325	com/estrongs/a/a:getCurrentTask	()Lcom/estrongs/a/a;
    //   364: astore 18
    //   366: aload 9
    //   368: astore 10
    //   370: aload 9
    //   372: aload 12
    //   374: iconst_1
    //   375: invokeinterface 116 3 0
    //   380: astore 12
    //   382: aload 9
    //   384: astore 10
    //   386: new 204	java/util/ArrayList
    //   389: dup
    //   390: invokespecial 205	java/util/ArrayList:<init>	()V
    //   393: astore 19
    //   395: iconst_0
    //   396: istore 4
    //   398: aload 12
    //   400: ifnull +658 -> 1058
    //   403: aload 9
    //   405: astore 10
    //   407: aload 12
    //   409: invokeinterface 329 1 0
    //   414: astore 20
    //   416: aload 9
    //   418: astore 10
    //   420: aload 20
    //   422: invokeinterface 334 1 0
    //   427: ifeq +631 -> 1058
    //   430: aload 9
    //   432: astore 10
    //   434: aload 20
    //   436: invokeinterface 338 1 0
    //   441: checkcast 137	de/aflx/sardine/DavResource
    //   444: astore 12
    //   446: aload 18
    //   448: ifnull +171 -> 619
    //   451: aload 9
    //   453: astore 10
    //   455: aload 18
    //   457: invokevirtual 341	com/estrongs/a/a:taskStopped	()Z
    //   460: istore 6
    //   462: iload 6
    //   464: ifeq +155 -> 619
    //   467: aload 9
    //   469: ifnull +12 -> 481
    //   472: aload 8
    //   474: aload_2
    //   475: aload_1
    //   476: aload 9
    //   478: invokestatic 68	com/estrongs/fs/impl/r/b:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lde/aflx/sardine/Sardine;)V
    //   481: aconst_null
    //   482: areturn
    //   483: aload 9
    //   485: astore 10
    //   487: new 73	java/lang/StringBuilder
    //   490: dup
    //   491: invokespecial 74	java/lang/StringBuilder:<init>	()V
    //   494: ldc 124
    //   496: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   499: aload_1
    //   500: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   503: invokevirtual 107	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   506: astore 12
    //   508: goto -221 -> 287
    //   511: aload 9
    //   513: astore 10
    //   515: new 73	java/lang/StringBuilder
    //   518: dup
    //   519: invokespecial 74	java/lang/StringBuilder:<init>	()V
    //   522: ldc 126
    //   524: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   527: aload_2
    //   528: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   531: astore 13
    //   533: aload 9
    //   535: astore 10
    //   537: aload_1
    //   538: ldc 36
    //   540: invokevirtual 84	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   543: ifeq +48 -> 591
    //   546: ldc 86
    //   548: astore 12
    //   550: aload 9
    //   552: astore 10
    //   554: aload 13
    //   556: aload 12
    //   558: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   561: aload 16
    //   563: invokestatic 91	java/net/URLEncoder:encode	(Ljava/lang/String;)Ljava/lang/String;
    //   566: ldc 93
    //   568: ldc 95
    //   570: invokevirtual 99	java/lang/String:replace	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   573: ldc 101
    //   575: ldc 103
    //   577: invokevirtual 99	java/lang/String:replace	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   580: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   583: invokevirtual 107	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   586: astore 12
    //   588: goto -263 -> 325
    //   591: aload 9
    //   593: astore 10
    //   595: new 73	java/lang/StringBuilder
    //   598: dup
    //   599: invokespecial 74	java/lang/StringBuilder:<init>	()V
    //   602: ldc 124
    //   604: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   607: aload_1
    //   608: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   611: invokevirtual 107	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   614: astore 12
    //   616: goto -66 -> 550
    //   619: aload 12
    //   621: ifnull -205 -> 416
    //   624: aload 9
    //   626: astore 10
    //   628: aload 12
    //   630: checkcast 137	de/aflx/sardine/DavResource
    //   633: astore 21
    //   635: aload 9
    //   637: astore 10
    //   639: aload 21
    //   641: invokevirtual 344	de/aflx/sardine/DavResource:getName	()Ljava/lang/String;
    //   644: astore 13
    //   646: iload 7
    //   648: ifeq +631 -> 1279
    //   651: aload 9
    //   653: astore 10
    //   655: aload 21
    //   657: invokevirtual 344	de/aflx/sardine/DavResource:getName	()Ljava/lang/String;
    //   660: ldc_w 346
    //   663: invokestatic 352	java/net/URLDecoder:decode	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   666: astore 12
    //   668: aload 12
    //   670: astore 13
    //   672: aload 9
    //   674: astore 10
    //   676: aload 13
    //   678: ldc -87
    //   680: invokevirtual 84	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   683: ifne -267 -> 416
    //   686: aload 9
    //   688: astore 10
    //   690: aload 13
    //   692: ldc_w 354
    //   695: invokevirtual 84	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   698: ifne -282 -> 416
    //   701: aload 9
    //   703: astore 10
    //   705: aload 21
    //   707: invokevirtual 357	de/aflx/sardine/DavResource:getPath	()Ljava/lang/String;
    //   710: astore 17
    //   712: iload 4
    //   714: istore 5
    //   716: iload 4
    //   718: ifne +117 -> 835
    //   721: iconst_1
    //   722: istore 5
    //   724: iconst_1
    //   725: istore 4
    //   727: aload 9
    //   729: astore 10
    //   731: aload 16
    //   733: ldc 95
    //   735: invokevirtual 360	java/lang/String:endsWith	(Ljava/lang/String;)Z
    //   738: ifeq +544 -> 1282
    //   741: aload 9
    //   743: astore 10
    //   745: aload 16
    //   747: iconst_0
    //   748: aload 16
    //   750: invokevirtual 363	java/lang/String:length	()I
    //   753: iconst_1
    //   754: isub
    //   755: invokevirtual 367	java/lang/String:substring	(II)Ljava/lang/String;
    //   758: astore 14
    //   760: aload 17
    //   762: ifnull +242 -> 1004
    //   765: iload 7
    //   767: ifeq +522 -> 1289
    //   770: aload 9
    //   772: astore 10
    //   774: aload 17
    //   776: ldc_w 346
    //   779: invokestatic 352	java/net/URLDecoder:decode	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   782: astore 12
    //   784: aload 12
    //   786: astore 15
    //   788: aload 9
    //   790: astore 10
    //   792: aload 12
    //   794: ldc 95
    //   796: invokevirtual 360	java/lang/String:endsWith	(Ljava/lang/String;)Z
    //   799: ifeq +22 -> 821
    //   802: aload 9
    //   804: astore 10
    //   806: aload 12
    //   808: iconst_0
    //   809: aload 12
    //   811: invokevirtual 363	java/lang/String:length	()I
    //   814: iconst_1
    //   815: isub
    //   816: invokevirtual 367	java/lang/String:substring	(II)Ljava/lang/String;
    //   819: astore 15
    //   821: aload 9
    //   823: astore 10
    //   825: aload 14
    //   827: aload 15
    //   829: invokevirtual 84	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   832: ifne -416 -> 416
    //   835: aload 9
    //   837: astore 10
    //   839: aload 21
    //   841: invokevirtual 141	de/aflx/sardine/DavResource:isDirectory	()Z
    //   844: ifne +421 -> 1265
    //   847: aload 17
    //   849: ifnull +447 -> 1296
    //   852: aload 9
    //   854: astore 10
    //   856: aload 17
    //   858: ldc 95
    //   860: invokevirtual 360	java/lang/String:endsWith	(Ljava/lang/String;)Z
    //   863: ifeq +433 -> 1296
    //   866: goto +399 -> 1265
    //   869: aload 9
    //   871: astore 10
    //   873: aload 12
    //   875: ldc 95
    //   877: invokevirtual 360	java/lang/String:endsWith	(Ljava/lang/String;)Z
    //   880: ifeq +144 -> 1024
    //   883: aload 9
    //   885: astore 10
    //   887: new 73	java/lang/StringBuilder
    //   890: dup
    //   891: invokespecial 74	java/lang/StringBuilder:<init>	()V
    //   894: aload 12
    //   896: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   899: aload 13
    //   901: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   904: invokevirtual 107	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   907: astore 12
    //   909: aload 12
    //   911: astore 13
    //   913: iload 6
    //   915: ifeq +29 -> 944
    //   918: aload 9
    //   920: astore 10
    //   922: new 73	java/lang/StringBuilder
    //   925: dup
    //   926: invokespecial 74	java/lang/StringBuilder:<init>	()V
    //   929: aload 12
    //   931: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   934: ldc 95
    //   936: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   939: invokevirtual 107	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   942: astore 13
    //   944: aload 9
    //   946: astore 10
    //   948: aload 19
    //   950: new 369	com/estrongs/fs/impl/r/a
    //   953: dup
    //   954: aload 13
    //   956: aload 21
    //   958: iload 6
    //   960: iload 7
    //   962: invokespecial 372	com/estrongs/fs/impl/r/a:<init>	(Ljava/lang/String;Lde/aflx/sardine/DavResource;ZZ)V
    //   965: invokevirtual 375	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   968: pop
    //   969: iload 5
    //   971: istore 4
    //   973: goto -557 -> 416
    //   976: astore 12
    //   978: aload 9
    //   980: astore 10
    //   982: aload 12
    //   984: invokevirtual 191	java/lang/Exception:printStackTrace	()V
    //   987: goto +292 -> 1279
    //   990: astore 12
    //   992: aload 9
    //   994: astore 10
    //   996: aload 12
    //   998: invokevirtual 191	java/lang/Exception:printStackTrace	()V
    //   1001: goto +288 -> 1289
    //   1004: aload 9
    //   1006: astore 10
    //   1008: aload 13
    //   1010: aload 14
    //   1012: invokestatic 167	com/estrongs/android/util/am:d	(Ljava/lang/String;)Ljava/lang/String;
    //   1015: invokevirtual 84	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   1018: ifeq -183 -> 835
    //   1021: goto -605 -> 416
    //   1024: aload 9
    //   1026: astore 10
    //   1028: new 73	java/lang/StringBuilder
    //   1031: dup
    //   1032: invokespecial 74	java/lang/StringBuilder:<init>	()V
    //   1035: aload 12
    //   1037: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1040: ldc 95
    //   1042: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1045: aload 13
    //   1047: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1050: invokevirtual 107	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1053: astore 12
    //   1055: goto -146 -> 909
    //   1058: aload 9
    //   1060: astore 10
    //   1062: aconst_null
    //   1063: putstatic 16	com/estrongs/fs/impl/r/b:a	Ljava/lang/String;
    //   1066: aload 9
    //   1068: ifnull +12 -> 1080
    //   1071: aload 8
    //   1073: aload_2
    //   1074: aload_1
    //   1075: aload 9
    //   1077: invokestatic 68	com/estrongs/fs/impl/r/b:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lde/aflx/sardine/Sardine;)V
    //   1080: aload 19
    //   1082: areturn
    //   1083: new 249	com/estrongs/fs/FileSystemException
    //   1086: dup
    //   1087: aload 9
    //   1089: invokespecial 252	com/estrongs/fs/FileSystemException:<init>	(Ljava/lang/Throwable;)V
    //   1092: athrow
    //   1093: astore_0
    //   1094: aconst_null
    //   1095: astore 9
    //   1097: aconst_null
    //   1098: astore_2
    //   1099: ldc 36
    //   1101: astore_1
    //   1102: aload 11
    //   1104: astore 8
    //   1106: goto -895 -> 211
    //   1109: astore_0
    //   1110: aconst_null
    //   1111: astore 9
    //   1113: aload_1
    //   1114: astore_2
    //   1115: ldc 36
    //   1117: astore_1
    //   1118: aload 11
    //   1120: astore 8
    //   1122: goto -911 -> 211
    //   1125: astore_0
    //   1126: aload_1
    //   1127: astore 10
    //   1129: aload 8
    //   1131: astore_1
    //   1132: aload_2
    //   1133: astore 9
    //   1135: aload 10
    //   1137: astore_2
    //   1138: aload 11
    //   1140: astore 8
    //   1142: goto -931 -> 211
    //   1145: astore_0
    //   1146: aload_2
    //   1147: astore 9
    //   1149: aload 8
    //   1151: astore_2
    //   1152: aload 10
    //   1154: astore 8
    //   1156: goto -945 -> 211
    //   1159: astore 9
    //   1161: aload_1
    //   1162: astore 10
    //   1164: aload 9
    //   1166: astore_1
    //   1167: aload_0
    //   1168: astore 9
    //   1170: aload_1
    //   1171: astore_0
    //   1172: aload 9
    //   1174: astore_1
    //   1175: aload_2
    //   1176: astore 9
    //   1178: aload 8
    //   1180: astore_2
    //   1181: aload 10
    //   1183: astore 8
    //   1185: goto -974 -> 211
    //   1188: astore 9
    //   1190: aconst_null
    //   1191: astore 8
    //   1193: aconst_null
    //   1194: astore_2
    //   1195: ldc 36
    //   1197: astore_0
    //   1198: aconst_null
    //   1199: astore_1
    //   1200: goto -1071 -> 129
    //   1203: astore 9
    //   1205: aload_1
    //   1206: astore 8
    //   1208: aconst_null
    //   1209: astore_2
    //   1210: ldc 36
    //   1212: astore_0
    //   1213: aconst_null
    //   1214: astore_1
    //   1215: goto -1086 -> 129
    //   1218: astore 9
    //   1220: aload 10
    //   1222: astore_0
    //   1223: aconst_null
    //   1224: astore 10
    //   1226: aload_1
    //   1227: astore 8
    //   1229: aload 10
    //   1231: astore_1
    //   1232: goto -1103 -> 129
    //   1235: astore 9
    //   1237: aload_1
    //   1238: astore_0
    //   1239: aconst_null
    //   1240: astore_1
    //   1241: goto -1112 -> 129
    //   1244: goto -1098 -> 146
    //   1247: aload 9
    //   1249: astore_1
    //   1250: goto -1164 -> 86
    //   1253: aload_1
    //   1254: astore 8
    //   1256: goto -1196 -> 60
    //   1259: aconst_null
    //   1260: astore 11
    //   1262: goto -918 -> 344
    //   1265: iconst_1
    //   1266: istore 6
    //   1268: iload_3
    //   1269: ifeq +33 -> 1302
    //   1272: aload 11
    //   1274: astore 12
    //   1276: goto -407 -> 869
    //   1279: goto -607 -> 672
    //   1282: aload 16
    //   1284: astore 14
    //   1286: goto -526 -> 760
    //   1289: aload 17
    //   1291: astore 12
    //   1293: goto -509 -> 784
    //   1296: iconst_0
    //   1297: istore 6
    //   1299: goto -31 -> 1268
    //   1302: aload_0
    //   1303: astore 12
    //   1305: goto -436 -> 869
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	1308	0	paramString	String
    //   0	1308	1	parami	i
    //   0	1308	2	paramo	o<String>
    //   0	1308	3	paramBoolean	boolean
    //   396	576	4	i	int
    //   714	256	5	j	int
    //   50	1248	6	bool1	boolean
    //   355	606	7	bool2	boolean
    //   28	1227	8	localObject1	Object
    //   34	1114	9	localObject2	Object
    //   1159	6	9	localObject3	Object
    //   1168	9	9	localObject4	Object
    //   1188	1	9	localException1	Exception
    //   1203	1	9	localException2	Exception
    //   1218	1	9	localException3	Exception
    //   1235	13	9	localException4	Exception
    //   8	101	10	localObject5	Object
    //   118	8	10	localException5	Exception
    //   194	1036	10	localObject6	Object
    //   4	89	11	localObject7	Object
    //   187	149	11	str1	String
    //   342	931	11	str2	String
    //   1	929	12	localObject8	Object
    //   976	7	12	localException6	Exception
    //   990	46	12	localException7	Exception
    //   1053	251	12	localObject9	Object
    //   19	1027	13	localObject10	Object
    //   758	527	14	str3	String
    //   786	42	15	localObject11	Object
    //   241	1042	16	str4	String
    //   710	580	17	str5	String
    //   364	92	18	locala	com.estrongs.a.a
    //   393	688	19	localArrayList	ArrayList
    //   414	21	20	localIterator	Iterator
    //   633	324	21	localDavResource	de.aflx.sardine.DavResource
    // Exception table:
    //   from	to	target	type
    //   110	118	118	java/lang/Exception
    //   237	243	118	java/lang/Exception
    //   252	270	118	java/lang/Exception
    //   274	283	118	java/lang/Exception
    //   291	325	118	java/lang/Exception
    //   333	344	118	java/lang/Exception
    //   348	357	118	java/lang/Exception
    //   361	366	118	java/lang/Exception
    //   370	382	118	java/lang/Exception
    //   386	395	118	java/lang/Exception
    //   407	416	118	java/lang/Exception
    //   420	430	118	java/lang/Exception
    //   434	446	118	java/lang/Exception
    //   455	462	118	java/lang/Exception
    //   487	508	118	java/lang/Exception
    //   515	533	118	java/lang/Exception
    //   537	546	118	java/lang/Exception
    //   554	588	118	java/lang/Exception
    //   595	616	118	java/lang/Exception
    //   628	635	118	java/lang/Exception
    //   639	646	118	java/lang/Exception
    //   676	686	118	java/lang/Exception
    //   690	701	118	java/lang/Exception
    //   705	712	118	java/lang/Exception
    //   731	741	118	java/lang/Exception
    //   745	760	118	java/lang/Exception
    //   792	802	118	java/lang/Exception
    //   806	821	118	java/lang/Exception
    //   825	835	118	java/lang/Exception
    //   839	847	118	java/lang/Exception
    //   856	866	118	java/lang/Exception
    //   873	883	118	java/lang/Exception
    //   887	909	118	java/lang/Exception
    //   922	944	118	java/lang/Exception
    //   948	969	118	java/lang/Exception
    //   982	987	118	java/lang/Exception
    //   996	1001	118	java/lang/Exception
    //   1008	1021	118	java/lang/Exception
    //   1028	1055	118	java/lang/Exception
    //   1062	1066	118	java/lang/Exception
    //   146	187	187	finally
    //   1083	1093	187	finally
    //   655	668	976	java/lang/Exception
    //   774	784	990	java/lang/Exception
    //   10	15	1093	finally
    //   15	26	1109	finally
    //   30	36	1125	finally
    //   44	52	1125	finally
    //   90	101	1145	finally
    //   110	118	1145	finally
    //   237	243	1145	finally
    //   252	270	1145	finally
    //   274	283	1145	finally
    //   291	325	1145	finally
    //   333	344	1145	finally
    //   348	357	1145	finally
    //   361	366	1145	finally
    //   370	382	1145	finally
    //   386	395	1145	finally
    //   407	416	1145	finally
    //   420	430	1145	finally
    //   434	446	1145	finally
    //   455	462	1145	finally
    //   487	508	1145	finally
    //   515	533	1145	finally
    //   537	546	1145	finally
    //   554	588	1145	finally
    //   595	616	1145	finally
    //   628	635	1145	finally
    //   639	646	1145	finally
    //   655	668	1145	finally
    //   676	686	1145	finally
    //   690	701	1145	finally
    //   705	712	1145	finally
    //   731	741	1145	finally
    //   745	760	1145	finally
    //   774	784	1145	finally
    //   792	802	1145	finally
    //   806	821	1145	finally
    //   825	835	1145	finally
    //   839	847	1145	finally
    //   856	866	1145	finally
    //   873	883	1145	finally
    //   887	909	1145	finally
    //   922	944	1145	finally
    //   948	969	1145	finally
    //   982	987	1145	finally
    //   996	1001	1145	finally
    //   1008	1021	1145	finally
    //   1028	1055	1145	finally
    //   1062	1066	1145	finally
    //   129	134	1159	finally
    //   138	144	1159	finally
    //   10	15	1188	java/lang/Exception
    //   15	26	1203	java/lang/Exception
    //   30	36	1218	java/lang/Exception
    //   44	52	1218	java/lang/Exception
    //   90	101	1235	java/lang/Exception
  }
  
  public static void a()
  {
    d = false;
  }
  
  /* Error */
  public static void a(String paramString1, String paramString2, String paramString3)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 25	com/estrongs/fs/impl/r/b:c	Ljava/util/HashMap;
    //   6: astore 4
    //   8: aload 4
    //   10: monitorenter
    //   11: getstatic 25	com/estrongs/fs/impl/r/b:c	Ljava/util/HashMap;
    //   14: new 73	java/lang/StringBuilder
    //   17: dup
    //   18: invokespecial 74	java/lang/StringBuilder:<init>	()V
    //   21: aload_0
    //   22: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   25: ldc -57
    //   27: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   30: aload_1
    //   31: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   34: ldc -57
    //   36: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   39: aload_2
    //   40: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   43: invokevirtual 107	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   46: invokevirtual 202	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   49: checkcast 204	java/util/ArrayList
    //   52: astore 5
    //   54: getstatic 25	com/estrongs/fs/impl/r/b:c	Ljava/util/HashMap;
    //   57: new 73	java/lang/StringBuilder
    //   60: dup
    //   61: invokespecial 74	java/lang/StringBuilder:<init>	()V
    //   64: aload_0
    //   65: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   68: ldc -57
    //   70: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   73: aload_1
    //   74: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   77: ldc -57
    //   79: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   82: aload_2
    //   83: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   86: invokevirtual 107	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   89: invokevirtual 379	java/util/HashMap:remove	(Ljava/lang/Object;)Ljava/lang/Object;
    //   92: pop
    //   93: aload 5
    //   95: ifnull +41 -> 136
    //   98: iconst_0
    //   99: istore_3
    //   100: iload_3
    //   101: aload 5
    //   103: invokevirtual 210	java/util/ArrayList:size	()I
    //   106: if_icmpge +30 -> 136
    //   109: aload 5
    //   111: iload_3
    //   112: invokevirtual 380	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   115: checkcast 112	de/aflx/sardine/Sardine
    //   118: astore_0
    //   119: aload_0
    //   120: ifnull +9 -> 129
    //   123: aload_0
    //   124: invokeinterface 197 1 0
    //   129: iload_3
    //   130: iconst_1
    //   131: iadd
    //   132: istore_3
    //   133: goto -33 -> 100
    //   136: aload 4
    //   138: monitorexit
    //   139: ldc 2
    //   141: monitorexit
    //   142: return
    //   143: astore_0
    //   144: aload 4
    //   146: monitorexit
    //   147: aload_0
    //   148: athrow
    //   149: astore_0
    //   150: ldc 2
    //   152: monitorexit
    //   153: aload_0
    //   154: athrow
    //   155: astore_0
    //   156: goto -27 -> 129
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	159	0	paramString1	String
    //   0	159	1	paramString2	String
    //   0	159	2	paramString3	String
    //   99	34	3	i	int
    //   52	58	5	localArrayList	ArrayList
    // Exception table:
    //   from	to	target	type
    //   11	93	143	finally
    //   100	119	143	finally
    //   123	129	143	finally
    //   136	139	143	finally
    //   144	147	143	finally
    //   3	11	149	finally
    //   147	149	149	finally
    //   123	129	155	java/lang/Exception
  }
  
  private static void a(String paramString1, String paramString2, String paramString3, Sardine paramSardine)
  {
    for (;;)
    {
      synchronized (c)
      {
        if (d) {
          return;
        }
        localArrayList = (ArrayList)c.get(paramString1 + "@" + paramString2 + "@" + paramString3);
        if (localArrayList != null)
        {
          localArrayList.add(paramSardine);
          return;
        }
      }
      ArrayList localArrayList = new ArrayList();
      localArrayList.add(paramSardine);
      c.put(paramString1 + "@" + paramString2 + "@" + paramString3, localArrayList);
    }
  }
  
  /* Error */
  public static boolean a(Context paramContext, String paramString, com.estrongs.a.b.s params)
  {
    // Byte code:
    //   0: ldc 36
    //   2: astore 5
    //   4: aload_1
    //   5: invokestatic 42	com/estrongs/android/util/am:y	(Ljava/lang/String;)Ljava/lang/String;
    //   8: astore_2
    //   9: aload_1
    //   10: invokestatic 45	com/estrongs/android/util/am:A	(Ljava/lang/String;)Ljava/lang/String;
    //   13: astore 10
    //   15: aload_1
    //   16: invokestatic 47	com/estrongs/android/util/am:a	(Ljava/lang/String;)Ljava/lang/String;
    //   19: astore 4
    //   21: aload 5
    //   23: astore 6
    //   25: aload_2
    //   26: astore 7
    //   28: aload_2
    //   29: astore 8
    //   31: aload_1
    //   32: invokestatic 50	com/estrongs/android/util/am:w	(Ljava/lang/String;)Ljava/lang/String;
    //   35: astore 9
    //   37: aload 9
    //   39: astore 6
    //   41: aload_2
    //   42: astore 7
    //   44: aload 9
    //   46: astore 5
    //   48: aload_2
    //   49: astore 8
    //   51: aload_1
    //   52: ldc 52
    //   54: invokevirtual 58	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   57: istore_3
    //   58: aload_2
    //   59: astore_0
    //   60: aload_2
    //   61: ifnonnull +614 -> 675
    //   64: ldc 60
    //   66: astore_0
    //   67: goto +608 -> 675
    //   70: aload_2
    //   71: astore 6
    //   73: aload_0
    //   74: astore 7
    //   76: aload_2
    //   77: astore 5
    //   79: aload_0
    //   80: astore 8
    //   82: aload_0
    //   83: aload 10
    //   85: aload 4
    //   87: aload_2
    //   88: invokestatic 65	com/estrongs/fs/impl/r/b:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lde/aflx/sardine/Sardine;
    //   91: astore 9
    //   93: aload 9
    //   95: ifnonnull +27 -> 122
    //   98: iconst_0
    //   99: istore_3
    //   100: aload 9
    //   102: ifnull +12 -> 114
    //   105: aload_0
    //   106: aload 4
    //   108: aload_2
    //   109: aload 9
    //   111: invokestatic 68	com/estrongs/fs/impl/r/b:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lde/aflx/sardine/Sardine;)V
    //   114: iload_3
    //   115: ireturn
    //   116: ldc 36
    //   118: astore_2
    //   119: goto +580 -> 699
    //   122: aload_2
    //   123: astore 7
    //   125: aload 4
    //   127: astore 8
    //   129: aload_0
    //   130: astore 10
    //   132: aload 9
    //   134: astore 5
    //   136: aload_1
    //   137: invokestatic 71	com/estrongs/android/util/am:i	(Ljava/lang/String;)Ljava/lang/String;
    //   140: astore 6
    //   142: iload_3
    //   143: ifeq +190 -> 333
    //   146: aload_2
    //   147: astore 7
    //   149: aload 4
    //   151: astore 8
    //   153: aload_0
    //   154: astore 10
    //   156: aload 9
    //   158: astore 5
    //   160: new 73	java/lang/StringBuilder
    //   163: dup
    //   164: invokespecial 74	java/lang/StringBuilder:<init>	()V
    //   167: ldc 76
    //   169: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   172: aload 4
    //   174: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   177: astore 11
    //   179: aload_2
    //   180: astore 7
    //   182: aload 4
    //   184: astore 8
    //   186: aload_0
    //   187: astore 10
    //   189: aload 9
    //   191: astore 5
    //   193: aload_2
    //   194: ldc 62
    //   196: invokevirtual 84	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   199: ifeq +97 -> 296
    //   202: ldc 86
    //   204: astore_1
    //   205: aload_2
    //   206: astore 7
    //   208: aload 4
    //   210: astore 8
    //   212: aload_0
    //   213: astore 10
    //   215: aload 9
    //   217: astore 5
    //   219: aload 11
    //   221: aload_1
    //   222: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   225: aload 6
    //   227: invokestatic 91	java/net/URLEncoder:encode	(Ljava/lang/String;)Ljava/lang/String;
    //   230: ldc 93
    //   232: ldc 95
    //   234: invokevirtual 99	java/lang/String:replace	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   237: ldc 101
    //   239: ldc 103
    //   241: invokevirtual 99	java/lang/String:replace	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   244: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   247: invokevirtual 107	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   250: astore_1
    //   251: aload_2
    //   252: astore 7
    //   254: aload 4
    //   256: astore 8
    //   258: aload_0
    //   259: astore 10
    //   261: aload 9
    //   263: astore 5
    //   265: aload 9
    //   267: aload_1
    //   268: invokeinterface 384 2 0
    //   273: aload_2
    //   274: astore 7
    //   276: aload 4
    //   278: astore 8
    //   280: aload_0
    //   281: astore 10
    //   283: aload 9
    //   285: astore 5
    //   287: aconst_null
    //   288: putstatic 16	com/estrongs/fs/impl/r/b:a	Ljava/lang/String;
    //   291: iconst_1
    //   292: istore_3
    //   293: goto -193 -> 100
    //   296: aload_2
    //   297: astore 7
    //   299: aload 4
    //   301: astore 8
    //   303: aload_0
    //   304: astore 10
    //   306: aload 9
    //   308: astore 5
    //   310: new 73	java/lang/StringBuilder
    //   313: dup
    //   314: invokespecial 74	java/lang/StringBuilder:<init>	()V
    //   317: ldc 124
    //   319: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   322: aload_2
    //   323: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   326: invokevirtual 107	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   329: astore_1
    //   330: goto -125 -> 205
    //   333: aload_2
    //   334: astore 7
    //   336: aload 4
    //   338: astore 8
    //   340: aload_0
    //   341: astore 10
    //   343: aload 9
    //   345: astore 5
    //   347: new 73	java/lang/StringBuilder
    //   350: dup
    //   351: invokespecial 74	java/lang/StringBuilder:<init>	()V
    //   354: ldc 126
    //   356: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   359: aload 4
    //   361: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   364: astore 11
    //   366: aload_2
    //   367: astore 7
    //   369: aload 4
    //   371: astore 8
    //   373: aload_0
    //   374: astore 10
    //   376: aload 9
    //   378: astore 5
    //   380: aload_2
    //   381: ldc 36
    //   383: invokevirtual 84	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   386: ifeq +55 -> 441
    //   389: ldc 86
    //   391: astore_1
    //   392: aload_2
    //   393: astore 7
    //   395: aload 4
    //   397: astore 8
    //   399: aload_0
    //   400: astore 10
    //   402: aload 9
    //   404: astore 5
    //   406: aload 11
    //   408: aload_1
    //   409: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   412: aload 6
    //   414: invokestatic 91	java/net/URLEncoder:encode	(Ljava/lang/String;)Ljava/lang/String;
    //   417: ldc 93
    //   419: ldc 95
    //   421: invokevirtual 99	java/lang/String:replace	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   424: ldc 101
    //   426: ldc 103
    //   428: invokevirtual 99	java/lang/String:replace	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   431: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   434: invokevirtual 107	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   437: astore_1
    //   438: goto -187 -> 251
    //   441: aload_2
    //   442: astore 7
    //   444: aload 4
    //   446: astore 8
    //   448: aload_0
    //   449: astore 10
    //   451: aload 9
    //   453: astore 5
    //   455: new 73	java/lang/StringBuilder
    //   458: dup
    //   459: invokespecial 74	java/lang/StringBuilder:<init>	()V
    //   462: ldc 124
    //   464: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   467: aload_2
    //   468: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   471: invokevirtual 107	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   474: astore_1
    //   475: goto -83 -> 392
    //   478: astore_1
    //   479: aconst_null
    //   480: astore 4
    //   482: aconst_null
    //   483: astore_2
    //   484: aconst_null
    //   485: astore_0
    //   486: aload 5
    //   488: astore 6
    //   490: aload 6
    //   492: astore 7
    //   494: aload 4
    //   496: astore 8
    //   498: aload_2
    //   499: astore 10
    //   501: aload_0
    //   502: astore 5
    //   504: aload_1
    //   505: invokevirtual 194	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   508: putstatic 16	com/estrongs/fs/impl/r/b:a	Ljava/lang/String;
    //   511: aload_0
    //   512: astore 5
    //   514: aload_0
    //   515: ifnull +26 -> 541
    //   518: aload 6
    //   520: astore 7
    //   522: aload 4
    //   524: astore 8
    //   526: aload_2
    //   527: astore 10
    //   529: aload_0
    //   530: astore 5
    //   532: aload_0
    //   533: invokeinterface 197 1 0
    //   538: aconst_null
    //   539: astore 5
    //   541: aload 6
    //   543: astore 7
    //   545: aload 4
    //   547: astore 8
    //   549: aload_2
    //   550: astore 10
    //   552: new 249	com/estrongs/fs/FileSystemException
    //   555: dup
    //   556: aload_1
    //   557: invokespecial 252	com/estrongs/fs/FileSystemException:<init>	(Ljava/lang/Throwable;)V
    //   560: athrow
    //   561: astore_0
    //   562: aload 10
    //   564: astore_2
    //   565: aload 8
    //   567: astore 4
    //   569: aload 7
    //   571: astore 6
    //   573: aload 5
    //   575: ifnull +13 -> 588
    //   578: aload_2
    //   579: aload 4
    //   581: aload 6
    //   583: aload 5
    //   585: invokestatic 68	com/estrongs/fs/impl/r/b:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lde/aflx/sardine/Sardine;)V
    //   588: aload_0
    //   589: athrow
    //   590: astore_0
    //   591: aconst_null
    //   592: astore 4
    //   594: aconst_null
    //   595: astore_2
    //   596: aconst_null
    //   597: astore_1
    //   598: aload 5
    //   600: astore 6
    //   602: aload_1
    //   603: astore 5
    //   605: goto -32 -> 573
    //   608: astore_0
    //   609: aconst_null
    //   610: astore 4
    //   612: aconst_null
    //   613: astore_1
    //   614: aload 5
    //   616: astore 6
    //   618: aload_1
    //   619: astore 5
    //   621: goto -48 -> 573
    //   624: astore_0
    //   625: aconst_null
    //   626: astore 5
    //   628: aload 7
    //   630: astore_2
    //   631: goto -58 -> 573
    //   634: astore_1
    //   635: aconst_null
    //   636: astore 4
    //   638: aconst_null
    //   639: astore_0
    //   640: aload 5
    //   642: astore 6
    //   644: goto -154 -> 490
    //   647: astore_1
    //   648: aconst_null
    //   649: astore_0
    //   650: aload 5
    //   652: astore 6
    //   654: aload 8
    //   656: astore_2
    //   657: goto -167 -> 490
    //   660: astore_1
    //   661: aload_2
    //   662: astore 6
    //   664: aload_0
    //   665: astore_2
    //   666: aload 9
    //   668: astore_0
    //   669: goto -179 -> 490
    //   672: goto +12 -> 684
    //   675: aload 10
    //   677: ifnonnull -5 -> 672
    //   680: ldc 60
    //   682: astore 10
    //   684: aload 9
    //   686: astore_2
    //   687: aload 9
    //   689: ifnonnull -619 -> 70
    //   692: iload_3
    //   693: ifeq -577 -> 116
    //   696: ldc 62
    //   698: astore_2
    //   699: goto -629 -> 70
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	702	0	paramContext	Context
    //   0	702	1	paramString	String
    //   0	702	2	params	com.estrongs.a.b.s
    //   57	636	3	bool	boolean
    //   19	618	4	localObject1	Object
    //   2	649	5	localObject2	Object
    //   23	640	6	localObject3	Object
    //   26	603	7	localObject4	Object
    //   29	626	8	localObject5	Object
    //   35	653	9	localObject6	Object
    //   13	670	10	localObject7	Object
    //   177	230	11	localStringBuilder	StringBuilder
    // Exception table:
    //   from	to	target	type
    //   4	9	478	java/lang/Exception
    //   136	142	561	finally
    //   160	179	561	finally
    //   193	202	561	finally
    //   219	251	561	finally
    //   265	273	561	finally
    //   287	291	561	finally
    //   310	330	561	finally
    //   347	366	561	finally
    //   380	389	561	finally
    //   406	438	561	finally
    //   455	475	561	finally
    //   504	511	561	finally
    //   532	538	561	finally
    //   552	561	561	finally
    //   4	9	590	finally
    //   9	21	608	finally
    //   31	37	624	finally
    //   51	58	624	finally
    //   82	93	624	finally
    //   9	21	634	java/lang/Exception
    //   31	37	647	java/lang/Exception
    //   51	58	647	java/lang/Exception
    //   82	93	647	java/lang/Exception
    //   136	142	660	java/lang/Exception
    //   160	179	660	java/lang/Exception
    //   193	202	660	java/lang/Exception
    //   219	251	660	java/lang/Exception
    //   265	273	660	java/lang/Exception
    //   287	291	660	java/lang/Exception
    //   310	330	660	java/lang/Exception
    //   347	366	660	java/lang/Exception
    //   380	389	660	java/lang/Exception
    //   406	438	660	java/lang/Exception
    //   455	475	660	java/lang/Exception
  }
  
  public static boolean a(Context paramContext, String paramString1, String paramString2)
  {
    return a(paramString1, paramString2, true);
  }
  
  public static boolean a(String paramString1, String paramString2)
  {
    return a(paramString1, paramString2, false);
  }
  
  /* Error */
  public static boolean a(String paramString1, String paramString2, boolean paramBoolean)
  {
    // Byte code:
    //   0: ldc_w 391
    //   3: astore 4
    //   5: aload_0
    //   6: invokestatic 42	com/estrongs/android/util/am:y	(Ljava/lang/String;)Ljava/lang/String;
    //   9: astore 5
    //   11: aload_0
    //   12: invokestatic 45	com/estrongs/android/util/am:A	(Ljava/lang/String;)Ljava/lang/String;
    //   15: astore 12
    //   17: aload_0
    //   18: invokestatic 47	com/estrongs/android/util/am:a	(Ljava/lang/String;)Ljava/lang/String;
    //   21: astore 6
    //   23: aload 4
    //   25: astore 7
    //   27: aload 5
    //   29: astore 9
    //   31: aload 4
    //   33: astore 8
    //   35: aload 5
    //   37: astore 10
    //   39: aload_0
    //   40: invokestatic 50	com/estrongs/android/util/am:w	(Ljava/lang/String;)Ljava/lang/String;
    //   43: astore 11
    //   45: aload 11
    //   47: astore 7
    //   49: aload 5
    //   51: astore 9
    //   53: aload 11
    //   55: astore 8
    //   57: aload 5
    //   59: astore 10
    //   61: aload_0
    //   62: ldc 52
    //   64: invokevirtual 58	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   67: istore_3
    //   68: aload 5
    //   70: astore 4
    //   72: aload 5
    //   74: ifnonnull +1039 -> 1113
    //   77: ldc 60
    //   79: astore 4
    //   81: goto +1032 -> 1113
    //   84: aload 5
    //   86: astore 7
    //   88: aload 4
    //   90: astore 9
    //   92: aload 5
    //   94: astore 8
    //   96: aload 4
    //   98: astore 10
    //   100: aload 4
    //   102: aload 12
    //   104: aload 6
    //   106: aload 5
    //   108: invokestatic 65	com/estrongs/fs/impl/r/b:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lde/aflx/sardine/Sardine;
    //   111: astore 11
    //   113: aload 11
    //   115: astore 8
    //   117: aload 8
    //   119: ifnonnull +34 -> 153
    //   122: iconst_0
    //   123: istore_3
    //   124: iload_3
    //   125: istore_2
    //   126: aload 8
    //   128: ifnull +16 -> 144
    //   131: aload 4
    //   133: aload 6
    //   135: aload 5
    //   137: aload 8
    //   139: invokestatic 68	com/estrongs/fs/impl/r/b:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lde/aflx/sardine/Sardine;)V
    //   142: iload_3
    //   143: istore_2
    //   144: iload_2
    //   145: ireturn
    //   146: ldc 36
    //   148: astore 5
    //   150: goto +989 -> 1139
    //   153: aload 5
    //   155: astore 9
    //   157: aload 6
    //   159: astore 10
    //   161: aload 4
    //   163: astore 11
    //   165: aload 8
    //   167: astore 7
    //   169: aload_0
    //   170: invokestatic 71	com/estrongs/android/util/am:i	(Ljava/lang/String;)Ljava/lang/String;
    //   173: astore 13
    //   175: aload 5
    //   177: astore 9
    //   179: aload 6
    //   181: astore 10
    //   183: aload 4
    //   185: astore 11
    //   187: aload 8
    //   189: astore 7
    //   191: aload_1
    //   192: invokestatic 71	com/estrongs/android/util/am:i	(Ljava/lang/String;)Ljava/lang/String;
    //   195: astore 12
    //   197: iload_3
    //   198: ifeq +374 -> 572
    //   201: aload 5
    //   203: astore 9
    //   205: aload 6
    //   207: astore 10
    //   209: aload 4
    //   211: astore 11
    //   213: aload 8
    //   215: astore 7
    //   217: new 73	java/lang/StringBuilder
    //   220: dup
    //   221: invokespecial 74	java/lang/StringBuilder:<init>	()V
    //   224: ldc 76
    //   226: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   229: aload 6
    //   231: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   234: astore_1
    //   235: aload 5
    //   237: astore 9
    //   239: aload 6
    //   241: astore 10
    //   243: aload 4
    //   245: astore 11
    //   247: aload 8
    //   249: astore 7
    //   251: aload 5
    //   253: ldc 62
    //   255: invokevirtual 84	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   258: ifeq +234 -> 492
    //   261: ldc 86
    //   263: astore_0
    //   264: aload 5
    //   266: astore 9
    //   268: aload 6
    //   270: astore 10
    //   272: aload 4
    //   274: astore 11
    //   276: aload 8
    //   278: astore 7
    //   280: aload_1
    //   281: aload_0
    //   282: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   285: aload 13
    //   287: invokestatic 91	java/net/URLEncoder:encode	(Ljava/lang/String;)Ljava/lang/String;
    //   290: ldc 93
    //   292: ldc 95
    //   294: invokevirtual 99	java/lang/String:replace	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   297: ldc 101
    //   299: ldc 103
    //   301: invokevirtual 99	java/lang/String:replace	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   304: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   307: invokevirtual 107	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   310: astore_1
    //   311: aload 5
    //   313: astore 9
    //   315: aload 6
    //   317: astore 10
    //   319: aload 4
    //   321: astore 11
    //   323: aload 8
    //   325: astore 7
    //   327: new 73	java/lang/StringBuilder
    //   330: dup
    //   331: invokespecial 74	java/lang/StringBuilder:<init>	()V
    //   334: ldc 76
    //   336: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   339: aload 6
    //   341: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   344: astore 13
    //   346: aload 5
    //   348: astore 9
    //   350: aload 6
    //   352: astore 10
    //   354: aload 4
    //   356: astore 11
    //   358: aload 8
    //   360: astore 7
    //   362: aload 5
    //   364: ldc 62
    //   366: invokevirtual 84	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   369: ifeq +163 -> 532
    //   372: ldc 86
    //   374: astore_0
    //   375: aload 5
    //   377: astore 9
    //   379: aload 6
    //   381: astore 10
    //   383: aload 4
    //   385: astore 11
    //   387: aload 8
    //   389: astore 7
    //   391: aload 13
    //   393: aload_0
    //   394: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   397: aload 12
    //   399: invokestatic 91	java/net/URLEncoder:encode	(Ljava/lang/String;)Ljava/lang/String;
    //   402: ldc 93
    //   404: ldc 95
    //   406: invokevirtual 99	java/lang/String:replace	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   409: ldc 101
    //   411: ldc 103
    //   413: invokevirtual 99	java/lang/String:replace	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   416: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   419: invokevirtual 107	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   422: astore_0
    //   423: iload_2
    //   424: ifeq +453 -> 877
    //   427: aload 5
    //   429: astore 9
    //   431: aload 6
    //   433: astore 10
    //   435: aload 4
    //   437: astore 11
    //   439: aload 8
    //   441: astore 7
    //   443: aload 8
    //   445: aload_1
    //   446: aload_0
    //   447: invokeinterface 395 3 0
    //   452: aload 5
    //   454: astore 9
    //   456: aload 6
    //   458: astore 10
    //   460: aload 4
    //   462: astore 11
    //   464: aload 8
    //   466: astore 7
    //   468: aconst_null
    //   469: putstatic 16	com/estrongs/fs/impl/r/b:a	Ljava/lang/String;
    //   472: iconst_1
    //   473: istore_2
    //   474: aload 8
    //   476: ifnull -332 -> 144
    //   479: aload 4
    //   481: aload 6
    //   483: aload 5
    //   485: aload 8
    //   487: invokestatic 68	com/estrongs/fs/impl/r/b:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lde/aflx/sardine/Sardine;)V
    //   490: iconst_1
    //   491: ireturn
    //   492: aload 5
    //   494: astore 9
    //   496: aload 6
    //   498: astore 10
    //   500: aload 4
    //   502: astore 11
    //   504: aload 8
    //   506: astore 7
    //   508: new 73	java/lang/StringBuilder
    //   511: dup
    //   512: invokespecial 74	java/lang/StringBuilder:<init>	()V
    //   515: ldc 124
    //   517: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   520: aload 5
    //   522: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   525: invokevirtual 107	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   528: astore_0
    //   529: goto -265 -> 264
    //   532: aload 5
    //   534: astore 9
    //   536: aload 6
    //   538: astore 10
    //   540: aload 4
    //   542: astore 11
    //   544: aload 8
    //   546: astore 7
    //   548: new 73	java/lang/StringBuilder
    //   551: dup
    //   552: invokespecial 74	java/lang/StringBuilder:<init>	()V
    //   555: ldc 124
    //   557: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   560: aload 5
    //   562: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   565: invokevirtual 107	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   568: astore_0
    //   569: goto -194 -> 375
    //   572: aload 5
    //   574: astore 9
    //   576: aload 6
    //   578: astore 10
    //   580: aload 4
    //   582: astore 11
    //   584: aload 8
    //   586: astore 7
    //   588: new 73	java/lang/StringBuilder
    //   591: dup
    //   592: invokespecial 74	java/lang/StringBuilder:<init>	()V
    //   595: ldc 126
    //   597: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   600: aload 6
    //   602: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   605: astore_1
    //   606: aload 5
    //   608: astore 9
    //   610: aload 6
    //   612: astore 10
    //   614: aload 4
    //   616: astore 11
    //   618: aload 8
    //   620: astore 7
    //   622: aload 5
    //   624: ldc 36
    //   626: invokevirtual 84	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   629: ifeq +168 -> 797
    //   632: ldc 86
    //   634: astore_0
    //   635: aload 5
    //   637: astore 9
    //   639: aload 6
    //   641: astore 10
    //   643: aload 4
    //   645: astore 11
    //   647: aload 8
    //   649: astore 7
    //   651: aload_1
    //   652: aload_0
    //   653: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   656: aload 13
    //   658: invokestatic 91	java/net/URLEncoder:encode	(Ljava/lang/String;)Ljava/lang/String;
    //   661: ldc 93
    //   663: ldc 95
    //   665: invokevirtual 99	java/lang/String:replace	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   668: ldc 101
    //   670: ldc 103
    //   672: invokevirtual 99	java/lang/String:replace	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   675: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   678: invokevirtual 107	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   681: astore_1
    //   682: aload 5
    //   684: astore 9
    //   686: aload 6
    //   688: astore 10
    //   690: aload 4
    //   692: astore 11
    //   694: aload 8
    //   696: astore 7
    //   698: new 73	java/lang/StringBuilder
    //   701: dup
    //   702: invokespecial 74	java/lang/StringBuilder:<init>	()V
    //   705: ldc 126
    //   707: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   710: aload 6
    //   712: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   715: astore 13
    //   717: aload 5
    //   719: astore 9
    //   721: aload 6
    //   723: astore 10
    //   725: aload 4
    //   727: astore 11
    //   729: aload 8
    //   731: astore 7
    //   733: aload 5
    //   735: ldc 36
    //   737: invokevirtual 84	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   740: ifeq +97 -> 837
    //   743: ldc 86
    //   745: astore_0
    //   746: aload 5
    //   748: astore 9
    //   750: aload 6
    //   752: astore 10
    //   754: aload 4
    //   756: astore 11
    //   758: aload 8
    //   760: astore 7
    //   762: aload 13
    //   764: aload_0
    //   765: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   768: aload 12
    //   770: invokestatic 91	java/net/URLEncoder:encode	(Ljava/lang/String;)Ljava/lang/String;
    //   773: ldc 93
    //   775: ldc 95
    //   777: invokevirtual 99	java/lang/String:replace	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   780: ldc 101
    //   782: ldc 103
    //   784: invokevirtual 99	java/lang/String:replace	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   787: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   790: invokevirtual 107	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   793: astore_0
    //   794: goto -371 -> 423
    //   797: aload 5
    //   799: astore 9
    //   801: aload 6
    //   803: astore 10
    //   805: aload 4
    //   807: astore 11
    //   809: aload 8
    //   811: astore 7
    //   813: new 73	java/lang/StringBuilder
    //   816: dup
    //   817: invokespecial 74	java/lang/StringBuilder:<init>	()V
    //   820: ldc 124
    //   822: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   825: aload 5
    //   827: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   830: invokevirtual 107	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   833: astore_0
    //   834: goto -199 -> 635
    //   837: aload 5
    //   839: astore 9
    //   841: aload 6
    //   843: astore 10
    //   845: aload 4
    //   847: astore 11
    //   849: aload 8
    //   851: astore 7
    //   853: new 73	java/lang/StringBuilder
    //   856: dup
    //   857: invokespecial 74	java/lang/StringBuilder:<init>	()V
    //   860: ldc 124
    //   862: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   865: aload 5
    //   867: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   870: invokevirtual 107	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   873: astore_0
    //   874: goto -128 -> 746
    //   877: aload 5
    //   879: astore 9
    //   881: aload 6
    //   883: astore 10
    //   885: aload 4
    //   887: astore 11
    //   889: aload 8
    //   891: astore 7
    //   893: aload 8
    //   895: aload_1
    //   896: aload_0
    //   897: invokeinterface 398 3 0
    //   902: goto -450 -> 452
    //   905: astore_1
    //   906: aload 8
    //   908: astore_0
    //   909: aload 5
    //   911: astore 8
    //   913: aload_0
    //   914: astore 5
    //   916: aload_0
    //   917: ifnull +27 -> 944
    //   920: aload 8
    //   922: astore 9
    //   924: aload 6
    //   926: astore 10
    //   928: aload 4
    //   930: astore 11
    //   932: aload_0
    //   933: astore 7
    //   935: aload_0
    //   936: invokeinterface 197 1 0
    //   941: aconst_null
    //   942: astore 5
    //   944: aload 8
    //   946: astore 9
    //   948: aload 6
    //   950: astore 10
    //   952: aload 4
    //   954: astore 11
    //   956: aload 5
    //   958: astore 7
    //   960: aload_1
    //   961: invokevirtual 194	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   964: putstatic 16	com/estrongs/fs/impl/r/b:a	Ljava/lang/String;
    //   967: aload 8
    //   969: astore 9
    //   971: aload 6
    //   973: astore 10
    //   975: aload 4
    //   977: astore 11
    //   979: aload 5
    //   981: astore 7
    //   983: new 249	com/estrongs/fs/FileSystemException
    //   986: dup
    //   987: aload_1
    //   988: invokespecial 252	com/estrongs/fs/FileSystemException:<init>	(Ljava/lang/Throwable;)V
    //   991: athrow
    //   992: astore_0
    //   993: aload 11
    //   995: astore 5
    //   997: aload 10
    //   999: astore 6
    //   1001: aload 9
    //   1003: astore 4
    //   1005: aload 7
    //   1007: ifnull +14 -> 1021
    //   1010: aload 5
    //   1012: aload 6
    //   1014: aload 4
    //   1016: aload 7
    //   1018: invokestatic 68	com/estrongs/fs/impl/r/b:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lde/aflx/sardine/Sardine;)V
    //   1021: aload_0
    //   1022: athrow
    //   1023: astore_0
    //   1024: aconst_null
    //   1025: astore 6
    //   1027: aconst_null
    //   1028: astore 5
    //   1030: aconst_null
    //   1031: astore 7
    //   1033: goto -28 -> 1005
    //   1036: astore_0
    //   1037: aconst_null
    //   1038: astore 6
    //   1040: aconst_null
    //   1041: astore 7
    //   1043: goto -38 -> 1005
    //   1046: astore_0
    //   1047: aconst_null
    //   1048: astore_1
    //   1049: aload 7
    //   1051: astore 4
    //   1053: aload 9
    //   1055: astore 5
    //   1057: aload_1
    //   1058: astore 7
    //   1060: goto -55 -> 1005
    //   1063: astore_1
    //   1064: aconst_null
    //   1065: astore 6
    //   1067: aconst_null
    //   1068: astore 5
    //   1070: aconst_null
    //   1071: astore_0
    //   1072: aload 4
    //   1074: astore 8
    //   1076: aload 5
    //   1078: astore 4
    //   1080: goto -167 -> 913
    //   1083: astore_1
    //   1084: aconst_null
    //   1085: astore 6
    //   1087: aconst_null
    //   1088: astore_0
    //   1089: aload 4
    //   1091: astore 8
    //   1093: aload 5
    //   1095: astore 4
    //   1097: goto -184 -> 913
    //   1100: astore_1
    //   1101: aconst_null
    //   1102: astore_0
    //   1103: aload 10
    //   1105: astore 4
    //   1107: goto -194 -> 913
    //   1110: goto +12 -> 1122
    //   1113: aload 12
    //   1115: ifnonnull -5 -> 1110
    //   1118: ldc 60
    //   1120: astore 12
    //   1122: aload 11
    //   1124: astore 5
    //   1126: aload 11
    //   1128: ifnonnull -1044 -> 84
    //   1131: iload_3
    //   1132: ifeq -986 -> 146
    //   1135: ldc 62
    //   1137: astore 5
    //   1139: goto -1055 -> 84
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	1142	0	paramString1	String
    //   0	1142	1	paramString2	String
    //   0	1142	2	paramBoolean	boolean
    //   67	1065	3	bool	boolean
    //   3	1103	4	localObject1	Object
    //   9	1129	5	localObject2	Object
    //   21	1065	6	localObject3	Object
    //   25	1034	7	localObject4	Object
    //   33	1059	8	localObject5	Object
    //   29	1025	9	localObject6	Object
    //   37	1067	10	localObject7	Object
    //   43	1084	11	localObject8	Object
    //   15	1106	12	str	String
    //   173	590	13	localObject9	Object
    // Exception table:
    //   from	to	target	type
    //   169	175	905	java/lang/Exception
    //   191	197	905	java/lang/Exception
    //   217	235	905	java/lang/Exception
    //   251	261	905	java/lang/Exception
    //   280	311	905	java/lang/Exception
    //   327	346	905	java/lang/Exception
    //   362	372	905	java/lang/Exception
    //   391	423	905	java/lang/Exception
    //   443	452	905	java/lang/Exception
    //   468	472	905	java/lang/Exception
    //   508	529	905	java/lang/Exception
    //   548	569	905	java/lang/Exception
    //   588	606	905	java/lang/Exception
    //   622	632	905	java/lang/Exception
    //   651	682	905	java/lang/Exception
    //   698	717	905	java/lang/Exception
    //   733	743	905	java/lang/Exception
    //   762	794	905	java/lang/Exception
    //   813	834	905	java/lang/Exception
    //   853	874	905	java/lang/Exception
    //   893	902	905	java/lang/Exception
    //   169	175	992	finally
    //   191	197	992	finally
    //   217	235	992	finally
    //   251	261	992	finally
    //   280	311	992	finally
    //   327	346	992	finally
    //   362	372	992	finally
    //   391	423	992	finally
    //   443	452	992	finally
    //   468	472	992	finally
    //   508	529	992	finally
    //   548	569	992	finally
    //   588	606	992	finally
    //   622	632	992	finally
    //   651	682	992	finally
    //   698	717	992	finally
    //   733	743	992	finally
    //   762	794	992	finally
    //   813	834	992	finally
    //   853	874	992	finally
    //   893	902	992	finally
    //   935	941	992	finally
    //   960	967	992	finally
    //   983	992	992	finally
    //   5	11	1023	finally
    //   11	23	1036	finally
    //   39	45	1046	finally
    //   61	68	1046	finally
    //   100	113	1046	finally
    //   5	11	1063	java/lang/Exception
    //   11	23	1083	java/lang/Exception
    //   39	45	1100	java/lang/Exception
    //   61	68	1100	java/lang/Exception
    //   100	113	1100	java/lang/Exception
  }
  
  public static long b(String paramString)
  {
    paramString = a(paramString);
    if (paramString == null) {
      return -1L;
    }
    return e;
  }
  
  public static void b()
  {
    for (;;)
    {
      int i;
      Sardine localSardine;
      synchronized (c)
      {
        d = true;
        if (c.size() <= 0) {
          return;
        }
        Iterator localIterator = c.entrySet().iterator();
        if (localIterator.hasNext())
        {
          ArrayList localArrayList = (ArrayList)((Map.Entry)localIterator.next()).getValue();
          if (localArrayList == null) {
            continue;
          }
          i = 0;
          if (i >= localArrayList.size()) {
            continue;
          }
          localSardine = (Sardine)localArrayList.get(i);
          if (localSardine == null) {}
        }
      }
      try
      {
        localSardine.destroy();
        i += 1;
        continue;
        c.clear();
        return;
        localObject = finally;
        throw ((Throwable)localObject);
      }
      catch (Exception localException)
      {
        for (;;) {}
      }
    }
  }
  
  public static boolean b(String paramString1, String paramString2)
  {
    return a(paramString1, paramString2, false);
  }
  
  /* Error */
  public static boolean b(String paramString, boolean paramBoolean)
  {
    // Byte code:
    //   0: iload_1
    //   1: ifeq +8 -> 9
    //   4: aload_0
    //   5: invokestatic 422	com/estrongs/fs/impl/r/b:e	(Ljava/lang/String;)Z
    //   8: ireturn
    //   9: ldc_w 391
    //   12: astore 6
    //   14: aload_0
    //   15: invokestatic 42	com/estrongs/android/util/am:y	(Ljava/lang/String;)Ljava/lang/String;
    //   18: astore_3
    //   19: aload_0
    //   20: invokestatic 45	com/estrongs/android/util/am:A	(Ljava/lang/String;)Ljava/lang/String;
    //   23: astore 10
    //   25: aload_0
    //   26: invokestatic 47	com/estrongs/android/util/am:a	(Ljava/lang/String;)Ljava/lang/String;
    //   29: astore 5
    //   31: aload 6
    //   33: astore 4
    //   35: aload_3
    //   36: astore 7
    //   38: aload_3
    //   39: astore 8
    //   41: aload_0
    //   42: invokestatic 50	com/estrongs/android/util/am:w	(Ljava/lang/String;)Ljava/lang/String;
    //   45: astore 9
    //   47: aload 9
    //   49: astore 4
    //   51: aload_3
    //   52: astore 7
    //   54: aload 9
    //   56: astore 6
    //   58: aload_3
    //   59: astore 8
    //   61: aload_0
    //   62: ldc 52
    //   64: invokevirtual 58	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   67: istore_1
    //   68: aload_3
    //   69: astore_2
    //   70: aload_3
    //   71: ifnonnull +504 -> 575
    //   74: ldc 60
    //   76: astore_2
    //   77: goto +498 -> 575
    //   80: aload_3
    //   81: astore 4
    //   83: aload_2
    //   84: astore 7
    //   86: aload_3
    //   87: astore 6
    //   89: aload_2
    //   90: astore 8
    //   92: aload_2
    //   93: aload 10
    //   95: aload 5
    //   97: aload_3
    //   98: invokestatic 65	com/estrongs/fs/impl/r/b:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lde/aflx/sardine/Sardine;
    //   101: astore 9
    //   103: aload 9
    //   105: astore 6
    //   107: aload 6
    //   109: ifnonnull +25 -> 134
    //   112: aload 6
    //   114: ifnull +12 -> 126
    //   117: aload_2
    //   118: aload 5
    //   120: aload_3
    //   121: aload 6
    //   123: invokestatic 68	com/estrongs/fs/impl/r/b:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lde/aflx/sardine/Sardine;)V
    //   126: iconst_0
    //   127: ireturn
    //   128: ldc 36
    //   130: astore_3
    //   131: goto +468 -> 599
    //   134: aload_0
    //   135: invokestatic 71	com/estrongs/android/util/am:i	(Ljava/lang/String;)Ljava/lang/String;
    //   138: astore 4
    //   140: iload_1
    //   141: ifeq +125 -> 266
    //   144: new 73	java/lang/StringBuilder
    //   147: dup
    //   148: invokespecial 74	java/lang/StringBuilder:<init>	()V
    //   151: ldc 76
    //   153: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   156: aload 5
    //   158: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   161: astore 7
    //   163: aload_3
    //   164: ldc 62
    //   166: invokevirtual 84	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   169: ifeq +74 -> 243
    //   172: ldc 86
    //   174: astore_0
    //   175: aload 7
    //   177: aload_0
    //   178: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   181: aload 4
    //   183: invokestatic 91	java/net/URLEncoder:encode	(Ljava/lang/String;)Ljava/lang/String;
    //   186: ldc 93
    //   188: ldc 95
    //   190: invokevirtual 99	java/lang/String:replace	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   193: ldc 101
    //   195: ldc 103
    //   197: invokevirtual 99	java/lang/String:replace	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   200: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   203: invokevirtual 107	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   206: astore_0
    //   207: aload 6
    //   209: aload_0
    //   210: iconst_1
    //   211: newarray <illegal type>
    //   213: dup
    //   214: iconst_0
    //   215: bipush 32
    //   217: bastore
    //   218: invokeinterface 425 3 0
    //   223: aconst_null
    //   224: putstatic 16	com/estrongs/fs/impl/r/b:a	Ljava/lang/String;
    //   227: aload 6
    //   229: ifnull +12 -> 241
    //   232: aload_2
    //   233: aload 5
    //   235: aload_3
    //   236: aload 6
    //   238: invokestatic 68	com/estrongs/fs/impl/r/b:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lde/aflx/sardine/Sardine;)V
    //   241: iconst_1
    //   242: ireturn
    //   243: new 73	java/lang/StringBuilder
    //   246: dup
    //   247: invokespecial 74	java/lang/StringBuilder:<init>	()V
    //   250: ldc 124
    //   252: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   255: aload_3
    //   256: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   259: invokevirtual 107	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   262: astore_0
    //   263: goto -88 -> 175
    //   266: new 73	java/lang/StringBuilder
    //   269: dup
    //   270: invokespecial 74	java/lang/StringBuilder:<init>	()V
    //   273: ldc 126
    //   275: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   278: aload 5
    //   280: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   283: astore 7
    //   285: aload_3
    //   286: ldc 36
    //   288: invokevirtual 84	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   291: ifeq +41 -> 332
    //   294: ldc 86
    //   296: astore_0
    //   297: aload 7
    //   299: aload_0
    //   300: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   303: aload 4
    //   305: invokestatic 91	java/net/URLEncoder:encode	(Ljava/lang/String;)Ljava/lang/String;
    //   308: ldc 93
    //   310: ldc 95
    //   312: invokevirtual 99	java/lang/String:replace	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   315: ldc 101
    //   317: ldc 103
    //   319: invokevirtual 99	java/lang/String:replace	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   322: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   325: invokevirtual 107	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   328: astore_0
    //   329: goto -122 -> 207
    //   332: new 73	java/lang/StringBuilder
    //   335: dup
    //   336: invokespecial 74	java/lang/StringBuilder:<init>	()V
    //   339: ldc 124
    //   341: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   344: aload_3
    //   345: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   348: invokevirtual 107	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   351: astore_0
    //   352: goto -55 -> 297
    //   355: astore 5
    //   357: ldc_w 391
    //   360: astore_0
    //   361: aconst_null
    //   362: astore_2
    //   363: aconst_null
    //   364: astore 4
    //   366: aconst_null
    //   367: astore_3
    //   368: aload 4
    //   370: ifnull +199 -> 569
    //   373: aload 4
    //   375: invokeinterface 197 1 0
    //   380: aconst_null
    //   381: astore 4
    //   383: aload 5
    //   385: invokevirtual 194	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   388: putstatic 16	com/estrongs/fs/impl/r/b:a	Ljava/lang/String;
    //   391: new 249	com/estrongs/fs/FileSystemException
    //   394: dup
    //   395: aload 5
    //   397: invokespecial 252	com/estrongs/fs/FileSystemException:<init>	(Ljava/lang/Throwable;)V
    //   400: athrow
    //   401: astore 6
    //   403: aload_2
    //   404: astore 5
    //   406: aload_3
    //   407: astore_2
    //   408: aload 4
    //   410: astore_3
    //   411: aload_0
    //   412: astore 4
    //   414: aload 6
    //   416: astore_0
    //   417: aload_3
    //   418: ifnull +12 -> 430
    //   421: aload_2
    //   422: aload 5
    //   424: aload 4
    //   426: aload_3
    //   427: invokestatic 68	com/estrongs/fs/impl/r/b:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lde/aflx/sardine/Sardine;)V
    //   430: aload_0
    //   431: athrow
    //   432: astore_0
    //   433: aconst_null
    //   434: astore 5
    //   436: aconst_null
    //   437: astore_2
    //   438: aconst_null
    //   439: astore_3
    //   440: aload 6
    //   442: astore 4
    //   444: goto -27 -> 417
    //   447: astore_0
    //   448: aconst_null
    //   449: astore 5
    //   451: aconst_null
    //   452: astore 7
    //   454: aload 6
    //   456: astore 4
    //   458: aload_3
    //   459: astore_2
    //   460: aload 7
    //   462: astore_3
    //   463: goto -46 -> 417
    //   466: astore_0
    //   467: aconst_null
    //   468: astore_3
    //   469: aload 7
    //   471: astore_2
    //   472: goto -55 -> 417
    //   475: astore_0
    //   476: aload_3
    //   477: astore 4
    //   479: aload 6
    //   481: astore_3
    //   482: goto -65 -> 417
    //   485: astore 5
    //   487: aload 4
    //   489: astore 6
    //   491: aload_0
    //   492: astore 4
    //   494: aload 5
    //   496: astore_0
    //   497: aload_2
    //   498: astore 5
    //   500: aload_3
    //   501: astore_2
    //   502: aload 6
    //   504: astore_3
    //   505: goto -88 -> 417
    //   508: astore 5
    //   510: ldc_w 391
    //   513: astore_0
    //   514: aconst_null
    //   515: astore_2
    //   516: aconst_null
    //   517: astore 4
    //   519: goto -151 -> 368
    //   522: astore 7
    //   524: aload 6
    //   526: astore_0
    //   527: aload 5
    //   529: astore_2
    //   530: aload 8
    //   532: astore_3
    //   533: aconst_null
    //   534: astore 4
    //   536: aload 7
    //   538: astore 5
    //   540: goto -172 -> 368
    //   543: astore 7
    //   545: aload_3
    //   546: astore_0
    //   547: aload 5
    //   549: astore_3
    //   550: aload_2
    //   551: astore 4
    //   553: aload 7
    //   555: astore 5
    //   557: aload_3
    //   558: astore_2
    //   559: aload 4
    //   561: astore_3
    //   562: aload 6
    //   564: astore 4
    //   566: goto -198 -> 368
    //   569: goto -186 -> 383
    //   572: goto +12 -> 584
    //   575: aload 10
    //   577: ifnonnull -5 -> 572
    //   580: ldc 60
    //   582: astore 10
    //   584: aload 9
    //   586: astore_3
    //   587: aload 9
    //   589: ifnonnull -509 -> 80
    //   592: iload_1
    //   593: ifeq -465 -> 128
    //   596: ldc 62
    //   598: astore_3
    //   599: goto -519 -> 80
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	602	0	paramString	String
    //   0	602	1	paramBoolean	boolean
    //   69	490	2	localObject1	Object
    //   18	581	3	localObject2	Object
    //   33	532	4	localObject3	Object
    //   29	250	5	str1	String
    //   355	41	5	localException1	Exception
    //   404	46	5	localObject4	Object
    //   485	10	5	localObject5	Object
    //   498	1	5	localObject6	Object
    //   508	20	5	localException2	Exception
    //   538	18	5	localObject7	Object
    //   12	225	6	localObject8	Object
    //   401	79	6	localObject9	Object
    //   489	74	6	localObject10	Object
    //   36	434	7	localObject11	Object
    //   522	15	7	localException3	Exception
    //   543	11	7	localException4	Exception
    //   39	492	8	localObject12	Object
    //   45	543	9	localObject13	Object
    //   23	560	10	str2	String
    // Exception table:
    //   from	to	target	type
    //   14	19	355	java/lang/Exception
    //   383	401	401	finally
    //   14	19	432	finally
    //   19	31	447	finally
    //   41	47	466	finally
    //   61	68	466	finally
    //   92	103	466	finally
    //   134	140	475	finally
    //   144	172	475	finally
    //   175	207	475	finally
    //   207	227	475	finally
    //   243	263	475	finally
    //   266	294	475	finally
    //   297	329	475	finally
    //   332	352	475	finally
    //   373	380	485	finally
    //   19	31	508	java/lang/Exception
    //   41	47	522	java/lang/Exception
    //   61	68	522	java/lang/Exception
    //   92	103	522	java/lang/Exception
    //   134	140	543	java/lang/Exception
    //   144	172	543	java/lang/Exception
    //   175	207	543	java/lang/Exception
    //   207	227	543	java/lang/Exception
    //   243	263	543	java/lang/Exception
    //   266	294	543	java/lang/Exception
    //   297	329	543	java/lang/Exception
    //   332	352	543	java/lang/Exception
  }
  
  public static boolean c(String paramString)
  {
    paramString = a(paramString);
    if (paramString == null) {
      return false;
    }
    return d;
  }
  
  /* Error */
  public static boolean d(String paramString)
  {
    // Byte code:
    //   0: ldc 36
    //   2: astore 6
    //   4: aload_0
    //   5: invokestatic 42	com/estrongs/android/util/am:y	(Ljava/lang/String;)Ljava/lang/String;
    //   8: astore 4
    //   10: aload_0
    //   11: invokestatic 45	com/estrongs/android/util/am:A	(Ljava/lang/String;)Ljava/lang/String;
    //   14: astore 11
    //   16: aload_0
    //   17: invokestatic 47	com/estrongs/android/util/am:a	(Ljava/lang/String;)Ljava/lang/String;
    //   20: astore 5
    //   22: aload 6
    //   24: astore 7
    //   26: aload 4
    //   28: astore 8
    //   30: aload 4
    //   32: astore 9
    //   34: aload_0
    //   35: invokestatic 50	com/estrongs/android/util/am:w	(Ljava/lang/String;)Ljava/lang/String;
    //   38: astore 10
    //   40: aload 10
    //   42: astore 7
    //   44: aload 4
    //   46: astore 8
    //   48: aload 10
    //   50: astore 6
    //   52: aload 4
    //   54: astore 9
    //   56: aload_0
    //   57: ldc 52
    //   59: invokevirtual 58	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   62: istore_1
    //   63: aload 4
    //   65: astore_3
    //   66: aload 4
    //   68: ifnonnull +651 -> 719
    //   71: ldc 60
    //   73: astore_3
    //   74: goto +645 -> 719
    //   77: aload 4
    //   79: astore 7
    //   81: aload_3
    //   82: astore 8
    //   84: aload 4
    //   86: astore 6
    //   88: aload_3
    //   89: astore 9
    //   91: aload_3
    //   92: aload 11
    //   94: aload 5
    //   96: aload 4
    //   98: invokestatic 65	com/estrongs/fs/impl/r/b:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lde/aflx/sardine/Sardine;
    //   101: astore 11
    //   103: aload 11
    //   105: ifnonnull +33 -> 138
    //   108: iconst_0
    //   109: istore_2
    //   110: iload_2
    //   111: istore_1
    //   112: aload 11
    //   114: ifnull +15 -> 129
    //   117: aload_3
    //   118: aload 5
    //   120: aload 4
    //   122: aload 11
    //   124: invokestatic 68	com/estrongs/fs/impl/r/b:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lde/aflx/sardine/Sardine;)V
    //   127: iload_2
    //   128: istore_1
    //   129: iload_1
    //   130: ireturn
    //   131: ldc 36
    //   133: astore 4
    //   135: goto +610 -> 745
    //   138: aload 4
    //   140: astore 9
    //   142: aload 5
    //   144: astore 10
    //   146: aload_3
    //   147: astore 12
    //   149: aload 11
    //   151: astore 6
    //   153: aload_0
    //   154: invokestatic 71	com/estrongs/android/util/am:i	(Ljava/lang/String;)Ljava/lang/String;
    //   157: astore 7
    //   159: iload_1
    //   160: ifeq +194 -> 354
    //   163: aload 4
    //   165: astore 9
    //   167: aload 5
    //   169: astore 10
    //   171: aload_3
    //   172: astore 12
    //   174: aload 11
    //   176: astore 6
    //   178: new 73	java/lang/StringBuilder
    //   181: dup
    //   182: invokespecial 74	java/lang/StringBuilder:<init>	()V
    //   185: ldc 76
    //   187: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   190: aload 5
    //   192: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   195: astore 8
    //   197: aload 4
    //   199: astore 9
    //   201: aload 5
    //   203: astore 10
    //   205: aload_3
    //   206: astore 12
    //   208: aload 11
    //   210: astore 6
    //   212: aload 4
    //   214: ldc 62
    //   216: invokevirtual 84	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   219: ifeq +96 -> 315
    //   222: ldc 86
    //   224: astore_0
    //   225: aload 4
    //   227: astore 9
    //   229: aload 5
    //   231: astore 10
    //   233: aload_3
    //   234: astore 12
    //   236: aload 11
    //   238: astore 6
    //   240: aload 8
    //   242: aload_0
    //   243: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   246: aload 7
    //   248: invokestatic 91	java/net/URLEncoder:encode	(Ljava/lang/String;)Ljava/lang/String;
    //   251: ldc 93
    //   253: ldc 95
    //   255: invokevirtual 99	java/lang/String:replace	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   258: ldc 101
    //   260: ldc 103
    //   262: invokevirtual 99	java/lang/String:replace	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   265: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   268: invokevirtual 107	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   271: astore_0
    //   272: aload 4
    //   274: astore 9
    //   276: aload 5
    //   278: astore 10
    //   280: aload_3
    //   281: astore 12
    //   283: aload 11
    //   285: astore 6
    //   287: aload 11
    //   289: aload_0
    //   290: invokeinterface 428 2 0
    //   295: istore_2
    //   296: iload_2
    //   297: istore_1
    //   298: aload 11
    //   300: ifnull -171 -> 129
    //   303: aload_3
    //   304: aload 5
    //   306: aload 4
    //   308: aload 11
    //   310: invokestatic 68	com/estrongs/fs/impl/r/b:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lde/aflx/sardine/Sardine;)V
    //   313: iload_2
    //   314: ireturn
    //   315: aload 4
    //   317: astore 9
    //   319: aload 5
    //   321: astore 10
    //   323: aload_3
    //   324: astore 12
    //   326: aload 11
    //   328: astore 6
    //   330: new 73	java/lang/StringBuilder
    //   333: dup
    //   334: invokespecial 74	java/lang/StringBuilder:<init>	()V
    //   337: ldc 124
    //   339: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   342: aload 4
    //   344: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   347: invokevirtual 107	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   350: astore_0
    //   351: goto -126 -> 225
    //   354: aload 4
    //   356: astore 9
    //   358: aload 5
    //   360: astore 10
    //   362: aload_3
    //   363: astore 12
    //   365: aload 11
    //   367: astore 6
    //   369: new 73	java/lang/StringBuilder
    //   372: dup
    //   373: invokespecial 74	java/lang/StringBuilder:<init>	()V
    //   376: ldc 126
    //   378: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   381: aload 5
    //   383: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   386: astore 8
    //   388: aload 4
    //   390: astore 9
    //   392: aload 5
    //   394: astore 10
    //   396: aload_3
    //   397: astore 12
    //   399: aload 11
    //   401: astore 6
    //   403: aload 4
    //   405: ldc 36
    //   407: invokevirtual 84	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   410: ifeq +56 -> 466
    //   413: ldc 86
    //   415: astore_0
    //   416: aload 4
    //   418: astore 9
    //   420: aload 5
    //   422: astore 10
    //   424: aload_3
    //   425: astore 12
    //   427: aload 11
    //   429: astore 6
    //   431: aload 8
    //   433: aload_0
    //   434: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   437: aload 7
    //   439: invokestatic 91	java/net/URLEncoder:encode	(Ljava/lang/String;)Ljava/lang/String;
    //   442: ldc 93
    //   444: ldc 95
    //   446: invokevirtual 99	java/lang/String:replace	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   449: ldc 101
    //   451: ldc 103
    //   453: invokevirtual 99	java/lang/String:replace	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   456: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   459: invokevirtual 107	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   462: astore_0
    //   463: goto -191 -> 272
    //   466: aload 4
    //   468: astore 9
    //   470: aload 5
    //   472: astore 10
    //   474: aload_3
    //   475: astore 12
    //   477: aload 11
    //   479: astore 6
    //   481: new 73	java/lang/StringBuilder
    //   484: dup
    //   485: invokespecial 74	java/lang/StringBuilder:<init>	()V
    //   488: ldc 124
    //   490: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   493: aload 4
    //   495: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   498: invokevirtual 107	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   501: astore_0
    //   502: goto -86 -> 416
    //   505: astore 7
    //   507: aconst_null
    //   508: astore 5
    //   510: aconst_null
    //   511: astore_3
    //   512: aconst_null
    //   513: astore_0
    //   514: aload 6
    //   516: astore 8
    //   518: aload_0
    //   519: astore 4
    //   521: aload_0
    //   522: ifnull +26 -> 548
    //   525: aload 8
    //   527: astore 9
    //   529: aload 5
    //   531: astore 10
    //   533: aload_3
    //   534: astore 12
    //   536: aload_0
    //   537: astore 6
    //   539: aload_0
    //   540: invokeinterface 197 1 0
    //   545: aconst_null
    //   546: astore 4
    //   548: aload 8
    //   550: astore 9
    //   552: aload 5
    //   554: astore 10
    //   556: aload_3
    //   557: astore 12
    //   559: aload 4
    //   561: astore 6
    //   563: aload 7
    //   565: invokevirtual 194	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   568: putstatic 16	com/estrongs/fs/impl/r/b:a	Ljava/lang/String;
    //   571: aload 8
    //   573: astore 9
    //   575: aload 5
    //   577: astore 10
    //   579: aload_3
    //   580: astore 12
    //   582: aload 4
    //   584: astore 6
    //   586: new 249	com/estrongs/fs/FileSystemException
    //   589: dup
    //   590: aload 7
    //   592: invokespecial 252	com/estrongs/fs/FileSystemException:<init>	(Ljava/lang/Throwable;)V
    //   595: athrow
    //   596: astore_0
    //   597: aload 12
    //   599: astore 4
    //   601: aload 10
    //   603: astore 5
    //   605: aload 9
    //   607: astore 7
    //   609: aload 6
    //   611: ifnull +14 -> 625
    //   614: aload 4
    //   616: aload 5
    //   618: aload 7
    //   620: aload 6
    //   622: invokestatic 68	com/estrongs/fs/impl/r/b:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lde/aflx/sardine/Sardine;)V
    //   625: aload_0
    //   626: athrow
    //   627: astore_0
    //   628: aconst_null
    //   629: astore 5
    //   631: aconst_null
    //   632: astore 4
    //   634: aconst_null
    //   635: astore_3
    //   636: aload 6
    //   638: astore 7
    //   640: aload_3
    //   641: astore 6
    //   643: goto -34 -> 609
    //   646: astore_0
    //   647: aconst_null
    //   648: astore 5
    //   650: aconst_null
    //   651: astore_3
    //   652: aload 6
    //   654: astore 7
    //   656: aload_3
    //   657: astore 6
    //   659: goto -50 -> 609
    //   662: astore_0
    //   663: aconst_null
    //   664: astore 6
    //   666: aload 8
    //   668: astore 4
    //   670: goto -61 -> 609
    //   673: astore 7
    //   675: aconst_null
    //   676: astore 5
    //   678: aconst_null
    //   679: astore_0
    //   680: aload 6
    //   682: astore 8
    //   684: aload 4
    //   686: astore_3
    //   687: goto -169 -> 518
    //   690: astore 7
    //   692: aconst_null
    //   693: astore_0
    //   694: aload 6
    //   696: astore 8
    //   698: aload 9
    //   700: astore_3
    //   701: goto -183 -> 518
    //   704: astore 7
    //   706: aload 4
    //   708: astore 8
    //   710: aload 11
    //   712: astore_0
    //   713: goto -195 -> 518
    //   716: goto +12 -> 728
    //   719: aload 11
    //   721: ifnonnull -5 -> 716
    //   724: ldc 60
    //   726: astore 11
    //   728: aload 10
    //   730: astore 4
    //   732: aload 10
    //   734: ifnonnull -657 -> 77
    //   737: iload_1
    //   738: ifeq -607 -> 131
    //   741: ldc 62
    //   743: astore 4
    //   745: goto -668 -> 77
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	748	0	paramString	String
    //   62	676	1	bool1	boolean
    //   109	205	2	bool2	boolean
    //   65	636	3	localObject1	Object
    //   8	736	4	localObject2	Object
    //   20	657	5	localObject3	Object
    //   2	693	6	localObject4	Object
    //   24	414	7	localObject5	Object
    //   505	86	7	localException1	Exception
    //   607	48	7	localObject6	Object
    //   673	1	7	localException2	Exception
    //   690	1	7	localException3	Exception
    //   704	1	7	localException4	Exception
    //   28	681	8	localObject7	Object
    //   32	667	9	localObject8	Object
    //   38	695	10	localObject9	Object
    //   14	713	11	localObject10	Object
    //   147	451	12	localObject11	Object
    // Exception table:
    //   from	to	target	type
    //   4	10	505	java/lang/Exception
    //   153	159	596	finally
    //   178	197	596	finally
    //   212	222	596	finally
    //   240	272	596	finally
    //   287	296	596	finally
    //   330	351	596	finally
    //   369	388	596	finally
    //   403	413	596	finally
    //   431	463	596	finally
    //   481	502	596	finally
    //   539	545	596	finally
    //   563	571	596	finally
    //   586	596	596	finally
    //   4	10	627	finally
    //   10	22	646	finally
    //   34	40	662	finally
    //   56	63	662	finally
    //   91	103	662	finally
    //   10	22	673	java/lang/Exception
    //   34	40	690	java/lang/Exception
    //   56	63	690	java/lang/Exception
    //   91	103	690	java/lang/Exception
    //   153	159	704	java/lang/Exception
    //   178	197	704	java/lang/Exception
    //   212	222	704	java/lang/Exception
    //   240	272	704	java/lang/Exception
    //   287	296	704	java/lang/Exception
    //   330	351	704	java/lang/Exception
    //   369	388	704	java/lang/Exception
    //   403	413	704	java/lang/Exception
    //   431	463	704	java/lang/Exception
    //   481	502	704	java/lang/Exception
  }
  
  /* Error */
  public static boolean e(String paramString)
  {
    // Byte code:
    //   0: ldc_w 391
    //   3: astore 6
    //   5: aload_0
    //   6: invokestatic 42	com/estrongs/android/util/am:y	(Ljava/lang/String;)Ljava/lang/String;
    //   9: astore 4
    //   11: aload_0
    //   12: invokestatic 45	com/estrongs/android/util/am:A	(Ljava/lang/String;)Ljava/lang/String;
    //   15: astore 11
    //   17: aload_0
    //   18: invokestatic 47	com/estrongs/android/util/am:a	(Ljava/lang/String;)Ljava/lang/String;
    //   21: astore 5
    //   23: aload 6
    //   25: astore 7
    //   27: aload 4
    //   29: astore 8
    //   31: aload 4
    //   33: astore 9
    //   35: aload_0
    //   36: invokestatic 50	com/estrongs/android/util/am:w	(Ljava/lang/String;)Ljava/lang/String;
    //   39: astore 10
    //   41: aload 10
    //   43: astore 7
    //   45: aload 4
    //   47: astore 8
    //   49: aload 10
    //   51: astore 6
    //   53: aload 4
    //   55: astore 9
    //   57: aload_0
    //   58: ldc 52
    //   60: invokevirtual 58	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   63: istore_1
    //   64: aload 4
    //   66: astore_3
    //   67: aload 4
    //   69: ifnonnull +669 -> 738
    //   72: ldc 60
    //   74: astore_3
    //   75: goto +663 -> 738
    //   78: aload 4
    //   80: astore 7
    //   82: aload_3
    //   83: astore 8
    //   85: aload 4
    //   87: astore 6
    //   89: aload_3
    //   90: astore 9
    //   92: aload_3
    //   93: aload 11
    //   95: aload 5
    //   97: aload 4
    //   99: invokestatic 65	com/estrongs/fs/impl/r/b:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lde/aflx/sardine/Sardine;
    //   102: astore 11
    //   104: aload 11
    //   106: ifnonnull +33 -> 139
    //   109: iconst_0
    //   110: istore_2
    //   111: iload_2
    //   112: istore_1
    //   113: aload 11
    //   115: ifnull +15 -> 130
    //   118: aload_3
    //   119: aload 5
    //   121: aload 4
    //   123: aload 11
    //   125: invokestatic 68	com/estrongs/fs/impl/r/b:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lde/aflx/sardine/Sardine;)V
    //   128: iload_2
    //   129: istore_1
    //   130: iload_1
    //   131: ireturn
    //   132: ldc 36
    //   134: astore 4
    //   136: goto +628 -> 764
    //   139: aload 4
    //   141: astore 9
    //   143: aload 5
    //   145: astore 10
    //   147: aload_3
    //   148: astore 12
    //   150: aload 11
    //   152: astore 6
    //   154: aload_0
    //   155: invokestatic 71	com/estrongs/android/util/am:i	(Ljava/lang/String;)Ljava/lang/String;
    //   158: astore 7
    //   160: iload_1
    //   161: ifeq +212 -> 373
    //   164: aload 4
    //   166: astore 9
    //   168: aload 5
    //   170: astore 10
    //   172: aload_3
    //   173: astore 12
    //   175: aload 11
    //   177: astore 6
    //   179: new 73	java/lang/StringBuilder
    //   182: dup
    //   183: invokespecial 74	java/lang/StringBuilder:<init>	()V
    //   186: ldc 76
    //   188: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   191: aload 5
    //   193: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   196: astore 8
    //   198: aload 4
    //   200: astore 9
    //   202: aload 5
    //   204: astore 10
    //   206: aload_3
    //   207: astore 12
    //   209: aload 11
    //   211: astore 6
    //   213: aload 4
    //   215: ldc 62
    //   217: invokevirtual 84	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   220: ifeq +114 -> 334
    //   223: ldc 86
    //   225: astore_0
    //   226: aload 4
    //   228: astore 9
    //   230: aload 5
    //   232: astore 10
    //   234: aload_3
    //   235: astore 12
    //   237: aload 11
    //   239: astore 6
    //   241: aload 8
    //   243: aload_0
    //   244: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   247: aload 7
    //   249: invokestatic 91	java/net/URLEncoder:encode	(Ljava/lang/String;)Ljava/lang/String;
    //   252: ldc 93
    //   254: ldc 95
    //   256: invokevirtual 99	java/lang/String:replace	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   259: ldc 101
    //   261: ldc 103
    //   263: invokevirtual 99	java/lang/String:replace	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   266: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   269: invokevirtual 107	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   272: astore_0
    //   273: aload 4
    //   275: astore 9
    //   277: aload 5
    //   279: astore 10
    //   281: aload_3
    //   282: astore 12
    //   284: aload 11
    //   286: astore 6
    //   288: aload 11
    //   290: aload_0
    //   291: invokeinterface 431 2 0
    //   296: aload 4
    //   298: astore 9
    //   300: aload 5
    //   302: astore 10
    //   304: aload_3
    //   305: astore 12
    //   307: aload 11
    //   309: astore 6
    //   311: aconst_null
    //   312: putstatic 16	com/estrongs/fs/impl/r/b:a	Ljava/lang/String;
    //   315: iconst_1
    //   316: istore_1
    //   317: aload 11
    //   319: ifnull -189 -> 130
    //   322: aload_3
    //   323: aload 5
    //   325: aload 4
    //   327: aload 11
    //   329: invokestatic 68	com/estrongs/fs/impl/r/b:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lde/aflx/sardine/Sardine;)V
    //   332: iconst_1
    //   333: ireturn
    //   334: aload 4
    //   336: astore 9
    //   338: aload 5
    //   340: astore 10
    //   342: aload_3
    //   343: astore 12
    //   345: aload 11
    //   347: astore 6
    //   349: new 73	java/lang/StringBuilder
    //   352: dup
    //   353: invokespecial 74	java/lang/StringBuilder:<init>	()V
    //   356: ldc 124
    //   358: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   361: aload 4
    //   363: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   366: invokevirtual 107	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   369: astore_0
    //   370: goto -144 -> 226
    //   373: aload 4
    //   375: astore 9
    //   377: aload 5
    //   379: astore 10
    //   381: aload_3
    //   382: astore 12
    //   384: aload 11
    //   386: astore 6
    //   388: new 73	java/lang/StringBuilder
    //   391: dup
    //   392: invokespecial 74	java/lang/StringBuilder:<init>	()V
    //   395: ldc 126
    //   397: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   400: aload 5
    //   402: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   405: astore 8
    //   407: aload 4
    //   409: astore 9
    //   411: aload 5
    //   413: astore 10
    //   415: aload_3
    //   416: astore 12
    //   418: aload 11
    //   420: astore 6
    //   422: aload 4
    //   424: ldc 36
    //   426: invokevirtual 84	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   429: ifeq +56 -> 485
    //   432: ldc 86
    //   434: astore_0
    //   435: aload 4
    //   437: astore 9
    //   439: aload 5
    //   441: astore 10
    //   443: aload_3
    //   444: astore 12
    //   446: aload 11
    //   448: astore 6
    //   450: aload 8
    //   452: aload_0
    //   453: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   456: aload 7
    //   458: invokestatic 91	java/net/URLEncoder:encode	(Ljava/lang/String;)Ljava/lang/String;
    //   461: ldc 93
    //   463: ldc 95
    //   465: invokevirtual 99	java/lang/String:replace	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   468: ldc 101
    //   470: ldc 103
    //   472: invokevirtual 99	java/lang/String:replace	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   475: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   478: invokevirtual 107	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   481: astore_0
    //   482: goto -209 -> 273
    //   485: aload 4
    //   487: astore 9
    //   489: aload 5
    //   491: astore 10
    //   493: aload_3
    //   494: astore 12
    //   496: aload 11
    //   498: astore 6
    //   500: new 73	java/lang/StringBuilder
    //   503: dup
    //   504: invokespecial 74	java/lang/StringBuilder:<init>	()V
    //   507: ldc 124
    //   509: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   512: aload 4
    //   514: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   517: invokevirtual 107	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   520: astore_0
    //   521: goto -86 -> 435
    //   524: astore 7
    //   526: aconst_null
    //   527: astore 5
    //   529: aconst_null
    //   530: astore_3
    //   531: aconst_null
    //   532: astore_0
    //   533: aload 6
    //   535: astore 8
    //   537: aload_0
    //   538: astore 4
    //   540: aload_0
    //   541: ifnull +26 -> 567
    //   544: aload 8
    //   546: astore 9
    //   548: aload 5
    //   550: astore 10
    //   552: aload_3
    //   553: astore 12
    //   555: aload_0
    //   556: astore 6
    //   558: aload_0
    //   559: invokeinterface 197 1 0
    //   564: aconst_null
    //   565: astore 4
    //   567: aload 8
    //   569: astore 9
    //   571: aload 5
    //   573: astore 10
    //   575: aload_3
    //   576: astore 12
    //   578: aload 4
    //   580: astore 6
    //   582: aload 7
    //   584: invokevirtual 194	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   587: putstatic 16	com/estrongs/fs/impl/r/b:a	Ljava/lang/String;
    //   590: aload 8
    //   592: astore 9
    //   594: aload 5
    //   596: astore 10
    //   598: aload_3
    //   599: astore 12
    //   601: aload 4
    //   603: astore 6
    //   605: new 249	com/estrongs/fs/FileSystemException
    //   608: dup
    //   609: aload 7
    //   611: invokespecial 252	com/estrongs/fs/FileSystemException:<init>	(Ljava/lang/Throwable;)V
    //   614: athrow
    //   615: astore_0
    //   616: aload 12
    //   618: astore 4
    //   620: aload 10
    //   622: astore 5
    //   624: aload 9
    //   626: astore 7
    //   628: aload 6
    //   630: ifnull +14 -> 644
    //   633: aload 4
    //   635: aload 5
    //   637: aload 7
    //   639: aload 6
    //   641: invokestatic 68	com/estrongs/fs/impl/r/b:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lde/aflx/sardine/Sardine;)V
    //   644: aload_0
    //   645: athrow
    //   646: astore_0
    //   647: aconst_null
    //   648: astore 5
    //   650: aconst_null
    //   651: astore 4
    //   653: aconst_null
    //   654: astore_3
    //   655: aload 6
    //   657: astore 7
    //   659: aload_3
    //   660: astore 6
    //   662: goto -34 -> 628
    //   665: astore_0
    //   666: aconst_null
    //   667: astore 5
    //   669: aconst_null
    //   670: astore_3
    //   671: aload 6
    //   673: astore 7
    //   675: aload_3
    //   676: astore 6
    //   678: goto -50 -> 628
    //   681: astore_0
    //   682: aconst_null
    //   683: astore 6
    //   685: aload 8
    //   687: astore 4
    //   689: goto -61 -> 628
    //   692: astore 7
    //   694: aconst_null
    //   695: astore 5
    //   697: aconst_null
    //   698: astore_0
    //   699: aload 6
    //   701: astore 8
    //   703: aload 4
    //   705: astore_3
    //   706: goto -169 -> 537
    //   709: astore 7
    //   711: aconst_null
    //   712: astore_0
    //   713: aload 6
    //   715: astore 8
    //   717: aload 9
    //   719: astore_3
    //   720: goto -183 -> 537
    //   723: astore 7
    //   725: aload 4
    //   727: astore 8
    //   729: aload 11
    //   731: astore_0
    //   732: goto -195 -> 537
    //   735: goto +12 -> 747
    //   738: aload 11
    //   740: ifnonnull -5 -> 735
    //   743: ldc 60
    //   745: astore 11
    //   747: aload 10
    //   749: astore 4
    //   751: aload 10
    //   753: ifnonnull -675 -> 78
    //   756: iload_1
    //   757: ifeq -625 -> 132
    //   760: ldc 62
    //   762: astore 4
    //   764: goto -686 -> 78
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	767	0	paramString	String
    //   63	694	1	bool1	boolean
    //   110	19	2	bool2	boolean
    //   66	654	3	localObject1	Object
    //   9	754	4	localObject2	Object
    //   21	675	5	localObject3	Object
    //   3	711	6	localObject4	Object
    //   25	432	7	localObject5	Object
    //   524	86	7	localException1	Exception
    //   626	48	7	localObject6	Object
    //   692	1	7	localException2	Exception
    //   709	1	7	localException3	Exception
    //   723	1	7	localException4	Exception
    //   29	699	8	localObject7	Object
    //   33	685	9	localObject8	Object
    //   39	713	10	localObject9	Object
    //   15	731	11	localObject10	Object
    //   148	469	12	localObject11	Object
    // Exception table:
    //   from	to	target	type
    //   5	11	524	java/lang/Exception
    //   154	160	615	finally
    //   179	198	615	finally
    //   213	223	615	finally
    //   241	273	615	finally
    //   288	296	615	finally
    //   311	315	615	finally
    //   349	370	615	finally
    //   388	407	615	finally
    //   422	432	615	finally
    //   450	482	615	finally
    //   500	521	615	finally
    //   558	564	615	finally
    //   582	590	615	finally
    //   605	615	615	finally
    //   5	11	646	finally
    //   11	23	665	finally
    //   35	41	681	finally
    //   57	64	681	finally
    //   92	104	681	finally
    //   11	23	692	java/lang/Exception
    //   35	41	709	java/lang/Exception
    //   57	64	709	java/lang/Exception
    //   92	104	709	java/lang/Exception
    //   154	160	723	java/lang/Exception
    //   179	198	723	java/lang/Exception
    //   213	223	723	java/lang/Exception
    //   241	273	723	java/lang/Exception
    //   288	296	723	java/lang/Exception
    //   311	315	723	java/lang/Exception
    //   349	370	723	java/lang/Exception
    //   388	407	723	java/lang/Exception
    //   422	432	723	java/lang/Exception
    //   450	482	723	java/lang/Exception
    //   500	521	723	java/lang/Exception
  }
  
  public static a f(String paramString)
  {
    try
    {
      c localc = a(paramString);
      paramString = new a(paramString, e, j, d);
      return paramString;
    }
    catch (Exception paramString)
    {
      paramString.printStackTrace();
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.r.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */