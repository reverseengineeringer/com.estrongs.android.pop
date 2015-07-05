package com.estrongs.fs.impl.c;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothClass;
import android.bluetooth.BluetoothDevice;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import com.estrongs.a.b.s;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.util.am;
import com.estrongs.bluetooth.parser.OBEXElement;
import com.estrongs.fs.FileSystemException;
import com.estrongs.fs.m;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.UUID;

public class a
{
  public static final UUID a = UUID.fromString("00001106-0000-1000-8000-00805F9B34FB");
  public static final byte[] b = { -7, -20, 123, -60, -107, 60, 17, -46, -104, 78, 82, 84, 0, -36, -98, 9 };
  private static DateFormat c = null;
  private static BluetoothAdapter d = BluetoothAdapter.getDefaultAdapter();
  private static List<com.estrongs.fs.h> e = new ArrayList();
  private static boolean f = false;
  private static com.estrongs.bluetooth.parser.a g;
  private static HashMap<String, b.b.b> h = new HashMap();
  private static HashMap<b.b.b, Object> i = new HashMap();
  private static HashMap<String, b.b.d> j = new HashMap();
  private static boolean k = false;
  private static final BroadcastReceiver l = new b();
  private static final BroadcastReceiver m = new c();
  private final BroadcastReceiver n = new d(this);
  private String o;
  
  public static long a(String paramString)
  {
    try
    {
      long l1 = com.estrongs.fs.d.a().j(paramString).length();
      return l1;
    }
    catch (NullPointerException paramString) {}
    return 0L;
  }
  
  public static String a(Context paramContext, String paramString)
  {
    try
    {
      paramString = am.f(paramString);
      paramContext = b(paramContext, d.getRemoteDevice(paramString));
      return paramContext;
    }
    catch (Exception paramContext)
    {
      throw new FileSystemException(paramContext);
    }
  }
  
  /* Error */
  public static List<com.estrongs.fs.h> a(String paramString, com.estrongs.fs.i parami, com.estrongs.a.b.o<String> paramo)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_3
    //   2: aconst_null
    //   3: astore 6
    //   5: getstatic 45	com/estrongs/fs/impl/c/a:d	Landroid/bluetooth/BluetoothAdapter;
    //   8: ifnull +12 -> 20
    //   11: getstatic 45	com/estrongs/fs/impl/c/a:d	Landroid/bluetooth/BluetoothAdapter;
    //   14: invokevirtual 162	android/bluetooth/BluetoothAdapter:isEnabled	()Z
    //   17: ifne +5 -> 22
    //   20: aconst_null
    //   21: areturn
    //   22: getstatic 164	com/estrongs/fs/impl/c/a:g	Lcom/estrongs/bluetooth/parser/a;
    //   25: ifnonnull +13 -> 38
    //   28: new 166	com/estrongs/bluetooth/parser/a
    //   31: dup
    //   32: invokespecial 167	com/estrongs/bluetooth/parser/a:<init>	()V
    //   35: putstatic 164	com/estrongs/fs/impl/c/a:g	Lcom/estrongs/bluetooth/parser/a;
    //   38: new 169	java/util/LinkedList
    //   41: dup
    //   42: invokespecial 170	java/util/LinkedList:<init>	()V
    //   45: astore 11
    //   47: invokestatic 176	com/estrongs/a/a:getCurrentTask	()Lcom/estrongs/a/a;
    //   50: astore 12
    //   52: aload_0
    //   53: invokestatic 178	com/estrongs/android/util/am:g	(Ljava/lang/String;)Ljava/lang/String;
    //   56: astore 8
    //   58: getstatic 45	com/estrongs/fs/impl/c/a:d	Landroid/bluetooth/BluetoothAdapter;
    //   61: invokevirtual 181	android/bluetooth/BluetoothAdapter:isDiscovering	()Z
    //   64: ifeq +10 -> 74
    //   67: getstatic 45	com/estrongs/fs/impl/c/a:d	Landroid/bluetooth/BluetoothAdapter;
    //   70: invokevirtual 184	android/bluetooth/BluetoothAdapter:cancelDiscovery	()Z
    //   73: pop
    //   74: aload_0
    //   75: iconst_1
    //   76: invokestatic 187	com/estrongs/fs/impl/c/a:b	(Ljava/lang/String;Z)Lb/b/b;
    //   79: astore 10
    //   81: aload 10
    //   83: ifnonnull +17 -> 100
    //   86: iconst_0
    //   87: ifeq +11 -> 98
    //   90: new 115	java/lang/NullPointerException
    //   93: dup
    //   94: invokespecial 188	java/lang/NullPointerException:<init>	()V
    //   97: athrow
    //   98: aconst_null
    //   99: areturn
    //   100: aload 10
    //   102: invokeinterface 193 1 0
    //   107: astore 7
    //   109: aload 7
    //   111: sipush 203
    //   114: getstatic 61	com/estrongs/fs/impl/c/a:i	Ljava/util/HashMap;
    //   117: aload 10
    //   119: invokevirtual 197	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   122: invokeinterface 202 3 0
    //   127: aload 8
    //   129: invokestatic 205	com/estrongs/fs/impl/c/a:l	(Ljava/lang/String;)[Ljava/lang/String;
    //   132: astore 8
    //   134: iload_3
    //   135: aload 8
    //   137: arraylength
    //   138: if_icmpge +75 -> 213
    //   141: aload 8
    //   143: iload_3
    //   144: aaload
    //   145: ifnull +808 -> 953
    //   148: aload 8
    //   150: iload_3
    //   151: aaload
    //   152: invokevirtual 210	java/lang/String:length	()I
    //   155: ifne +6 -> 161
    //   158: goto +795 -> 953
    //   161: aload 7
    //   163: iconst_1
    //   164: aload 8
    //   166: iload_3
    //   167: aaload
    //   168: invokeinterface 202 3 0
    //   173: aload 10
    //   175: aload 7
    //   177: iconst_0
    //   178: iconst_0
    //   179: invokeinterface 213 4 0
    //   184: invokeinterface 215 1 0
    //   189: istore 4
    //   191: iload 4
    //   193: sipush 160
    //   196: if_icmpeq +757 -> 953
    //   199: iconst_0
    //   200: ifeq +11 -> 211
    //   203: new 115	java/lang/NullPointerException
    //   206: dup
    //   207: invokespecial 188	java/lang/NullPointerException:<init>	()V
    //   210: athrow
    //   211: aconst_null
    //   212: areturn
    //   213: aload 10
    //   215: invokeinterface 193 1 0
    //   220: astore 13
    //   222: aload 13
    //   224: sipush 203
    //   227: getstatic 61	com/estrongs/fs/impl/c/a:i	Ljava/util/HashMap;
    //   230: aload 10
    //   232: invokevirtual 197	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   235: invokeinterface 202 3 0
    //   240: aload 13
    //   242: bipush 66
    //   244: ldc -39
    //   246: invokeinterface 202 3 0
    //   251: aload 10
    //   253: aload 13
    //   255: invokeinterface 220 2 0
    //   260: astore 7
    //   262: aload 7
    //   264: ifnull +26 -> 290
    //   267: aload 7
    //   269: astore 8
    //   271: aload 7
    //   273: astore 9
    //   275: aload 7
    //   277: invokeinterface 224 1 0
    //   282: istore_3
    //   283: iload_3
    //   284: sipush 160
    //   287: if_icmpeq +17 -> 304
    //   290: aload 7
    //   292: ifnull +10 -> 302
    //   295: aload 7
    //   297: invokeinterface 226 1 0
    //   302: aconst_null
    //   303: areturn
    //   304: aload 12
    //   306: ifnull +37 -> 343
    //   309: aload 7
    //   311: astore 8
    //   313: aload 7
    //   315: astore 9
    //   317: aload 12
    //   319: invokevirtual 229	com/estrongs/a/a:taskStopped	()Z
    //   322: istore 5
    //   324: iload 5
    //   326: ifeq +17 -> 343
    //   329: aload 7
    //   331: ifnull +10 -> 341
    //   334: aload 7
    //   336: invokeinterface 226 1 0
    //   341: aconst_null
    //   342: areturn
    //   343: aload 7
    //   345: astore 6
    //   347: aload 7
    //   349: astore 8
    //   351: aload 7
    //   353: astore 9
    //   355: aload 7
    //   357: invokeinterface 231 1 0
    //   362: bipush 73
    //   364: invokeinterface 234 2 0
    //   369: ifnull +22 -> 391
    //   372: aload 7
    //   374: astore 8
    //   376: aload 7
    //   378: astore 9
    //   380: aload 10
    //   382: aload 13
    //   384: invokeinterface 220 2 0
    //   389: astore 6
    //   391: aload 6
    //   393: astore 8
    //   395: aload 6
    //   397: astore 9
    //   399: new 236	java/io/BufferedInputStream
    //   402: dup
    //   403: aload 6
    //   405: invokeinterface 239 1 0
    //   410: sipush 8192
    //   413: invokespecial 242	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;I)V
    //   416: astore 7
    //   418: aload 6
    //   420: astore 8
    //   422: aload 6
    //   424: astore 9
    //   426: getstatic 164	com/estrongs/fs/impl/c/a:g	Lcom/estrongs/bluetooth/parser/a;
    //   429: aload 7
    //   431: invokevirtual 245	com/estrongs/bluetooth/parser/a:a	(Ljava/io/InputStream;)Ljava/util/ArrayList;
    //   434: astore 10
    //   436: aload 6
    //   438: astore 8
    //   440: aload 6
    //   442: astore 9
    //   444: aload 7
    //   446: invokevirtual 248	java/io/BufferedInputStream:close	()V
    //   449: aload 6
    //   451: astore 8
    //   453: aload 6
    //   455: astore 9
    //   457: invokestatic 253	com/estrongs/android/pop/FexApplication:a	()Lcom/estrongs/android/pop/FexApplication;
    //   460: invokestatic 258	com/estrongs/android/pop/ad:a	(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;
    //   463: invokevirtual 262	com/estrongs/android/pop/ad:E	()Ljava/text/DateFormat;
    //   466: putstatic 37	com/estrongs/fs/impl/c/a:c	Ljava/text/DateFormat;
    //   469: aload 10
    //   471: ifnull +382 -> 853
    //   474: aload 6
    //   476: astore 8
    //   478: aload 6
    //   480: astore 9
    //   482: aload 10
    //   484: invokevirtual 266	java/util/ArrayList:iterator	()Ljava/util/Iterator;
    //   487: astore 13
    //   489: aload 6
    //   491: astore 8
    //   493: aload 6
    //   495: astore 9
    //   497: aload 13
    //   499: invokeinterface 271 1 0
    //   504: ifeq +349 -> 853
    //   507: aload 6
    //   509: astore 8
    //   511: aload 6
    //   513: astore 9
    //   515: aload 13
    //   517: invokeinterface 275 1 0
    //   522: checkcast 277	com/estrongs/bluetooth/parser/OBEXElement
    //   525: astore 14
    //   527: aload 12
    //   529: ifnull +37 -> 566
    //   532: aload 6
    //   534: astore 8
    //   536: aload 6
    //   538: astore 9
    //   540: aload 12
    //   542: invokevirtual 229	com/estrongs/a/a:taskStopped	()Z
    //   545: istore 5
    //   547: iload 5
    //   549: ifeq +17 -> 566
    //   552: aload 6
    //   554: ifnull +10 -> 564
    //   557: aload 6
    //   559: invokeinterface 226 1 0
    //   564: aconst_null
    //   565: areturn
    //   566: aload 14
    //   568: ifnull -79 -> 489
    //   571: aload 6
    //   573: astore 8
    //   575: aload 6
    //   577: astore 9
    //   579: aload_0
    //   580: ldc_w 279
    //   583: invokevirtual 283	java/lang/String:endsWith	(Ljava/lang/String;)Z
    //   586: ifne +364 -> 950
    //   589: aload 6
    //   591: astore 8
    //   593: aload 6
    //   595: astore 9
    //   597: new 285	java/lang/StringBuilder
    //   600: dup
    //   601: invokespecial 286	java/lang/StringBuilder:<init>	()V
    //   604: aload_0
    //   605: invokevirtual 290	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   608: ldc_w 279
    //   611: invokevirtual 290	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   614: invokevirtual 294	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   617: astore_0
    //   618: aload 6
    //   620: astore 8
    //   622: aload 6
    //   624: astore 9
    //   626: aload 14
    //   628: invokevirtual 296	com/estrongs/bluetooth/parser/OBEXElement:a	()Ljava/lang/String;
    //   631: astore 10
    //   633: aload 6
    //   635: astore 8
    //   637: aload 6
    //   639: astore 9
    //   641: aload 14
    //   643: invokevirtual 296	com/estrongs/bluetooth/parser/OBEXElement:a	()Ljava/lang/String;
    //   646: invokevirtual 210	java/lang/String:length	()I
    //   649: ifne +6 -> 655
    //   652: goto -163 -> 489
    //   655: aload 10
    //   657: astore 7
    //   659: aload 6
    //   661: astore 8
    //   663: aload 6
    //   665: astore 9
    //   667: aload 14
    //   669: invokevirtual 298	com/estrongs/bluetooth/parser/OBEXElement:e	()Z
    //   672: ifeq +57 -> 729
    //   675: aload 10
    //   677: astore 7
    //   679: aload 6
    //   681: astore 8
    //   683: aload 6
    //   685: astore 9
    //   687: aload 10
    //   689: ldc_w 279
    //   692: invokevirtual 283	java/lang/String:endsWith	(Ljava/lang/String;)Z
    //   695: ifne +34 -> 729
    //   698: aload 6
    //   700: astore 8
    //   702: aload 6
    //   704: astore 9
    //   706: new 285	java/lang/StringBuilder
    //   709: dup
    //   710: invokespecial 286	java/lang/StringBuilder:<init>	()V
    //   713: aload 10
    //   715: invokevirtual 290	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   718: ldc_w 279
    //   721: invokevirtual 290	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   724: invokevirtual 294	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   727: astore 7
    //   729: aload 6
    //   731: astore 8
    //   733: aload 6
    //   735: astore 9
    //   737: new 300	com/estrongs/fs/impl/c/e
    //   740: dup
    //   741: aload 14
    //   743: new 285	java/lang/StringBuilder
    //   746: dup
    //   747: invokespecial 286	java/lang/StringBuilder:<init>	()V
    //   750: aload_0
    //   751: invokevirtual 290	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   754: aload 7
    //   756: invokevirtual 290	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   759: invokevirtual 294	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   762: invokespecial 303	com/estrongs/fs/impl/c/e:<init>	(Lcom/estrongs/bluetooth/parser/OBEXElement;Ljava/lang/String;)V
    //   765: astore 7
    //   767: aload_1
    //   768: ifnull +40 -> 808
    //   771: aload 6
    //   773: astore 8
    //   775: aload 6
    //   777: astore 9
    //   779: aload_1
    //   780: aload 7
    //   782: invokeinterface 308 2 0
    //   787: ifeq +21 -> 808
    //   790: aload 6
    //   792: astore 8
    //   794: aload 6
    //   796: astore 9
    //   798: aload 11
    //   800: aload 7
    //   802: invokeinterface 314 2 0
    //   807: pop
    //   808: aload 6
    //   810: astore 8
    //   812: aload 6
    //   814: astore 9
    //   816: aload_2
    //   817: aload 7
    //   819: invokeinterface 317 1 0
    //   824: iconst_0
    //   825: newarray <illegal type>
    //   827: invokeinterface 322 3 0
    //   832: aload 6
    //   834: astore 8
    //   836: aload 6
    //   838: astore 9
    //   840: aload_2
    //   841: invokeinterface 324 1 0
    //   846: istore 5
    //   848: iload 5
    //   850: ifeq +18 -> 868
    //   853: aload 6
    //   855: ifnull +10 -> 865
    //   858: aload 6
    //   860: invokeinterface 226 1 0
    //   865: aload 11
    //   867: areturn
    //   868: goto -379 -> 489
    //   871: astore_1
    //   872: aload 6
    //   874: astore_0
    //   875: new 149	com/estrongs/fs/FileSystemException
    //   878: dup
    //   879: aload_1
    //   880: invokespecial 152	com/estrongs/fs/FileSystemException:<init>	(Ljava/lang/Throwable;)V
    //   883: athrow
    //   884: astore_1
    //   885: aload_0
    //   886: astore 8
    //   888: aload_1
    //   889: astore_0
    //   890: aload 8
    //   892: ifnull +10 -> 902
    //   895: aload 8
    //   897: invokeinterface 226 1 0
    //   902: aload_0
    //   903: athrow
    //   904: astore_0
    //   905: goto -807 -> 98
    //   908: astore_0
    //   909: goto -698 -> 211
    //   912: astore_0
    //   913: goto -611 -> 302
    //   916: astore_0
    //   917: goto -576 -> 341
    //   920: astore_0
    //   921: goto -357 -> 564
    //   924: astore_0
    //   925: goto -60 -> 865
    //   928: astore_1
    //   929: goto -27 -> 902
    //   932: astore_0
    //   933: aconst_null
    //   934: astore 8
    //   936: goto -46 -> 890
    //   939: astore_0
    //   940: goto -50 -> 890
    //   943: astore_1
    //   944: aload 9
    //   946: astore_0
    //   947: goto -72 -> 875
    //   950: goto -332 -> 618
    //   953: iload_3
    //   954: iconst_1
    //   955: iadd
    //   956: istore_3
    //   957: goto -823 -> 134
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	960	0	paramString	String
    //   0	960	1	parami	com.estrongs.fs.i
    //   0	960	2	paramo	com.estrongs.a.b.o<String>
    //   1	956	3	i1	int
    //   189	8	4	i2	int
    //   322	527	5	bool	boolean
    //   3	870	6	localObject1	Object
    //   107	711	7	localObject2	Object
    //   56	879	8	localObject3	Object
    //   273	672	9	localObject4	Object
    //   79	635	10	localObject5	Object
    //   45	821	11	localLinkedList	java.util.LinkedList
    //   50	491	12	locala	com.estrongs.a.a
    //   220	296	13	localObject6	Object
    //   525	217	14	localOBEXElement	OBEXElement
    // Exception table:
    //   from	to	target	type
    //   58	74	871	java/io/IOException
    //   74	81	871	java/io/IOException
    //   100	134	871	java/io/IOException
    //   134	141	871	java/io/IOException
    //   148	158	871	java/io/IOException
    //   161	191	871	java/io/IOException
    //   213	262	871	java/io/IOException
    //   875	884	884	finally
    //   90	98	904	java/io/IOException
    //   203	211	908	java/io/IOException
    //   295	302	912	java/io/IOException
    //   334	341	916	java/io/IOException
    //   557	564	920	java/io/IOException
    //   858	865	924	java/io/IOException
    //   895	902	928	java/io/IOException
    //   58	74	932	finally
    //   74	81	932	finally
    //   100	134	932	finally
    //   134	141	932	finally
    //   148	158	932	finally
    //   161	191	932	finally
    //   213	262	932	finally
    //   275	283	939	finally
    //   317	324	939	finally
    //   355	372	939	finally
    //   380	391	939	finally
    //   399	418	939	finally
    //   426	436	939	finally
    //   444	449	939	finally
    //   457	469	939	finally
    //   482	489	939	finally
    //   497	507	939	finally
    //   515	527	939	finally
    //   540	547	939	finally
    //   579	589	939	finally
    //   597	618	939	finally
    //   626	633	939	finally
    //   641	652	939	finally
    //   667	675	939	finally
    //   687	698	939	finally
    //   706	729	939	finally
    //   737	767	939	finally
    //   779	790	939	finally
    //   798	808	939	finally
    //   816	832	939	finally
    //   840	848	939	finally
    //   275	283	943	java/io/IOException
    //   317	324	943	java/io/IOException
    //   355	372	943	java/io/IOException
    //   380	391	943	java/io/IOException
    //   399	418	943	java/io/IOException
    //   426	436	943	java/io/IOException
    //   444	449	943	java/io/IOException
    //   457	469	943	java/io/IOException
    //   482	489	943	java/io/IOException
    //   497	507	943	java/io/IOException
    //   515	527	943	java/io/IOException
    //   540	547	943	java/io/IOException
    //   579	589	943	java/io/IOException
    //   597	618	943	java/io/IOException
    //   626	633	943	java/io/IOException
    //   641	652	943	java/io/IOException
    //   667	675	943	java/io/IOException
    //   687	698	943	java/io/IOException
    //   706	729	943	java/io/IOException
    //   737	767	943	java/io/IOException
    //   779	790	943	java/io/IOException
    //   798	808	943	java/io/IOException
    //   816	832	943	java/io/IOException
    //   840	848	943	java/io/IOException
  }
  
  private static void a(long paramLong)
  {
    try
    {
      Thread.sleep(paramLong);
      return;
    }
    catch (Exception localException) {}
  }
  
  public static void a(Context paramContext)
  {
    if ((d == null) || (!d.isEnabled())) {}
    do
    {
      return;
      k = true;
      e.clear();
      i();
      paramContext = com.estrongs.a.a.getCurrentTask();
      while ((f) && (!paramContext.taskStopped())) {
        try
        {
          Thread.sleep(200L);
        }
        catch (InterruptedException localInterruptedException) {}
      }
      k = false;
    } while (!paramContext.taskStopped());
    d();
  }
  
  public static void a(Context paramContext, ArrayList<com.estrongs.fs.h> paramArrayList)
  {
    if ((d == null) || (!d.isEnabled())) {}
    do
    {
      return;
      Object localObject1 = null;
      try
      {
        localObject2 = d.getBondedDevices();
        localObject1 = localObject2;
      }
      catch (Exception localException)
      {
        Object localObject2;
        BluetoothDevice localBluetoothDevice;
        String str;
        Object localObject3;
        for (;;) {}
      }
    } while ((localObject1 == null) || (((Set)localObject1).size() <= 0));
    localObject2 = ((Set)localObject1).iterator();
    label47:
    while (((Iterator)localObject2).hasNext())
    {
      localBluetoothDevice = (BluetoothDevice)((Iterator)localObject2).next();
      if (c(localBluetoothDevice))
      {
        str = localBluetoothDevice.getName();
        localObject3 = new StringBuilder().append("bt://");
        if (str == null) {
          break label191;
        }
      }
    }
    label191:
    for (localObject1 = str + "\n";; localObject1 = "")
    {
      localObject1 = (String)localObject1 + localBluetoothDevice.getAddress() + "/";
      localObject3 = b(paramContext, localBluetoothDevice);
      localObject1 = new f((String)localObject1, b(localBluetoothDevice), str, (String)localObject3);
      if (paramArrayList.contains(localObject1)) {
        break label47;
      }
      paramArrayList.add(localObject1);
      break label47;
      break;
    }
  }
  
  public static void a(List<com.estrongs.fs.h> paramList)
  {
    int i1 = 0;
    while (i1 < paramList.size())
    {
      ((com.estrongs.fs.h)paramList.get(i1)).setFileType(j(((com.estrongs.fs.h)paramList.get(i1)).getAbsolutePath()));
      i1 += 1;
    }
  }
  
  public static boolean a()
  {
    return k;
  }
  
  private static boolean a(Context paramContext, b.b.b paramb, String paramString, s params)
  {
    com.estrongs.a.a locala = com.estrongs.a.a.getCurrentTask();
    for (;;)
    {
      try
      {
        Object localObject1 = paramb.a();
        ((b.b.c)localObject1).a(203, i.get(paramb));
        ((b.b.c)localObject1).a(66, "x-obex/folder-listing");
        ((b.b.c)localObject1).a(1, am.d(paramString));
        Object localObject2 = paramb.c((b.b.c)localObject1);
        if (localObject2 == null) {
          break label558;
        }
        if (((b.b.d)localObject2).i() != 160) {
          return false;
        }
        Object localObject3 = new BufferedInputStream(((b.b.d)localObject2).b());
        Object localObject4 = g.a((InputStream)localObject3);
        ((BufferedInputStream)localObject3).close();
        ((b.b.d)localObject2).e();
        if ((localObject4 != null) && (((ArrayList)localObject4).size() > 0))
        {
          localObject2 = ((ArrayList)localObject4).iterator();
          if (((Iterator)localObject2).hasNext())
          {
            localObject3 = (OBEXElement)((Iterator)localObject2).next();
            if ((locala != null) && (locala.taskStopped())) {
              break label558;
            }
            if (m(((OBEXElement)localObject3).a())) {
              continue;
            }
            ((b.b.c)localObject1).a(1, am.d(paramString));
            if (paramb.a((b.b.c)localObject1, false, false).b() != 160) {
              break label558;
            }
            localObject1 = paramString + ((OBEXElement)localObject3).a();
            if (((OBEXElement)localObject3).e())
            {
              bool = a(paramContext, paramb, (String)localObject1 + "/", params);
              localObject1 = paramb.a();
              ((b.b.c)localObject1).a(203, i.get(paramb));
              paramb.a((b.b.c)localObject1, true, false);
              if (bool) {
                continue;
              }
              return false;
            }
            localObject4 = paramb.a();
            ((b.b.c)localObject4).a(203, i.get(paramb));
            ((b.b.c)localObject4).a(1, ((OBEXElement)localObject3).a());
            if (paramb.e((b.b.c)localObject4).b() != 160) {
              break label552;
            }
            if (locala == null) {
              break label560;
            }
            locala.sendMessage(1, new Object[] { Long.valueOf(1L), "bt://" + (String)localObject1 });
            break label560;
          }
        }
        paramContext = paramb.a();
        paramContext.a(203, i.get(paramb));
        paramContext.a(1, am.d(paramString));
        if (paramb.e(paramContext).b() == 160)
        {
          if (locala != null) {
            locala.sendMessage(1, new Object[] { Long.valueOf(1L), "bt://" + paramString });
          }
          bool = true;
          return bool;
        }
      }
      catch (IOException paramContext)
      {
        paramContext = paramContext;
        throw new FileSystemException(paramContext);
      }
      finally {}
      boolean bool = false;
      continue;
      label552:
      bool = false;
      continue;
      label558:
      return false;
      label560:
      bool = true;
    }
  }
  
  public static boolean a(Context paramContext, String paramString, s params)
  {
    boolean bool2 = true;
    s locals = params;
    if (params == null) {
      locals = s.b;
    }
    params = com.estrongs.a.a.getCurrentTask();
    String str = am.g(paramString);
    boolean bool1;
    for (;;)
    {
      int i1;
      try
      {
        b.b.b localb = b(paramString, true);
        if (localb == null) {
          return false;
        }
        String[] arrayOfString = l(str);
        if ((arrayOfString == null) || (arrayOfString.length == 0)) {
          break label332;
        }
        b.b.c localc = localb.a();
        localc.a(203, i.get(localb));
        i1 = 0;
        if (i1 < arrayOfString.length - 1)
        {
          if ((arrayOfString[i1] == null) || (arrayOfString[i1].length() == 0)) {
            break label334;
          }
          localc.a(1, arrayOfString[i1]);
          if (localb.a(localc, false, false).b() == 160) {
            break label334;
          }
          return false;
        }
        if ((params != null) && (params.taskStopped())) {
          break label332;
        }
        localc.a(1, arrayOfString[(arrayOfString.length - 1)]);
        if (k(paramString))
        {
          bool1 = a(paramContext, localb, str, locals);
          break;
        }
        paramContext = localb.a();
        paramContext.a(203, i.get(localb));
        paramContext.a(1, arrayOfString[(arrayOfString.length - 1)]);
        if (localb.e(paramContext).b() == 160)
        {
          bool1 = bool2;
          if (params == null) {
            break;
          }
          params.sendMessage(1, new Object[] { Long.valueOf(1L), "bt://" + paramString });
          bool1 = bool2;
          break;
        }
      }
      catch (IOException paramContext)
      {
        paramContext = paramContext;
        throw new FileSystemException(paramContext);
      }
      finally {}
      bool1 = false;
      break;
      label332:
      return false;
      label334:
      i1 += 1;
    }
    return bool1;
  }
  
  public static boolean a(String paramString1, String paramString2)
  {
    return false;
  }
  
  /* Error */
  public static boolean a(String paramString, boolean paramBoolean)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokestatic 178	com/estrongs/android/util/am:g	(Ljava/lang/String;)Ljava/lang/String;
    //   4: astore 6
    //   6: aconst_null
    //   7: astore 4
    //   9: aload_0
    //   10: iconst_1
    //   11: invokestatic 187	com/estrongs/fs/impl/c/a:b	(Ljava/lang/String;Z)Lb/b/b;
    //   14: astore 5
    //   16: aload 5
    //   18: ifnonnull +17 -> 35
    //   21: iconst_0
    //   22: ifeq +11 -> 33
    //   25: new 115	java/lang/NullPointerException
    //   28: dup
    //   29: invokespecial 188	java/lang/NullPointerException:<init>	()V
    //   32: athrow
    //   33: iconst_0
    //   34: ireturn
    //   35: aload 5
    //   37: invokeinterface 193 1 0
    //   42: astore_0
    //   43: aload_0
    //   44: sipush 203
    //   47: getstatic 61	com/estrongs/fs/impl/c/a:i	Ljava/util/HashMap;
    //   50: aload 5
    //   52: invokevirtual 197	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   55: invokeinterface 202 3 0
    //   60: aload 6
    //   62: invokestatic 205	com/estrongs/fs/impl/c/a:l	(Ljava/lang/String;)[Ljava/lang/String;
    //   65: astore 6
    //   67: aload 6
    //   69: ifnull +11 -> 80
    //   72: aload 6
    //   74: arraylength
    //   75: istore_2
    //   76: iload_2
    //   77: ifne +17 -> 94
    //   80: iconst_0
    //   81: ifeq +11 -> 92
    //   84: new 115	java/lang/NullPointerException
    //   87: dup
    //   88: invokespecial 188	java/lang/NullPointerException:<init>	()V
    //   91: athrow
    //   92: iconst_0
    //   93: ireturn
    //   94: iconst_0
    //   95: istore_2
    //   96: iload_2
    //   97: aload 6
    //   99: arraylength
    //   100: iconst_1
    //   101: isub
    //   102: if_icmpge +71 -> 173
    //   105: aload 6
    //   107: iload_2
    //   108: aaload
    //   109: ifnull +265 -> 374
    //   112: aload 6
    //   114: iload_2
    //   115: aaload
    //   116: invokevirtual 210	java/lang/String:length	()I
    //   119: ifne +6 -> 125
    //   122: goto +252 -> 374
    //   125: aload_0
    //   126: iconst_1
    //   127: aload 6
    //   129: iload_2
    //   130: aaload
    //   131: invokeinterface 202 3 0
    //   136: aload 5
    //   138: aload_0
    //   139: iconst_0
    //   140: iconst_0
    //   141: invokeinterface 213 4 0
    //   146: invokeinterface 215 1 0
    //   151: istore_3
    //   152: iload_3
    //   153: sipush 160
    //   156: if_icmpeq +218 -> 374
    //   159: iconst_0
    //   160: ifeq +11 -> 171
    //   163: new 115	java/lang/NullPointerException
    //   166: dup
    //   167: invokespecial 188	java/lang/NullPointerException:<init>	()V
    //   170: athrow
    //   171: iconst_0
    //   172: ireturn
    //   173: aload_0
    //   174: iconst_1
    //   175: aload 6
    //   177: aload 6
    //   179: arraylength
    //   180: iconst_1
    //   181: isub
    //   182: aaload
    //   183: invokeinterface 202 3 0
    //   188: iload_1
    //   189: ifeq +43 -> 232
    //   192: aload 5
    //   194: aload_0
    //   195: iconst_0
    //   196: iconst_1
    //   197: invokeinterface 213 4 0
    //   202: invokeinterface 215 1 0
    //   207: istore_2
    //   208: aload 4
    //   210: astore_0
    //   211: iload_2
    //   212: sipush 160
    //   215: if_icmpeq +63 -> 278
    //   218: iconst_0
    //   219: ifeq +11 -> 230
    //   222: new 115	java/lang/NullPointerException
    //   225: dup
    //   226: invokespecial 188	java/lang/NullPointerException:<init>	()V
    //   229: athrow
    //   230: iconst_0
    //   231: ireturn
    //   232: aload_0
    //   233: sipush 195
    //   236: lconst_1
    //   237: invokestatic 414	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   240: invokeinterface 202 3 0
    //   245: aload 5
    //   247: aload_0
    //   248: invokeinterface 430 2 0
    //   253: astore_0
    //   254: aload_0
    //   255: invokeinterface 433 1 0
    //   260: astore 4
    //   262: aload 4
    //   264: ldc_w 435
    //   267: invokevirtual 439	java/lang/String:getBytes	()[B
    //   270: invokevirtual 445	java/io/DataOutputStream:write	([B)V
    //   273: aload 4
    //   275: invokevirtual 446	java/io/DataOutputStream:close	()V
    //   278: aload_0
    //   279: ifnull +9 -> 288
    //   282: aload_0
    //   283: invokeinterface 226 1 0
    //   288: iconst_1
    //   289: ireturn
    //   290: astore 4
    //   292: aconst_null
    //   293: astore_0
    //   294: new 149	com/estrongs/fs/FileSystemException
    //   297: dup
    //   298: aload 4
    //   300: invokespecial 152	com/estrongs/fs/FileSystemException:<init>	(Ljava/lang/Throwable;)V
    //   303: athrow
    //   304: astore 5
    //   306: aload_0
    //   307: astore 4
    //   309: aload 5
    //   311: astore_0
    //   312: aload 4
    //   314: ifnull +10 -> 324
    //   317: aload 4
    //   319: invokeinterface 226 1 0
    //   324: aload_0
    //   325: athrow
    //   326: astore_0
    //   327: goto -294 -> 33
    //   330: astore_0
    //   331: goto -239 -> 92
    //   334: astore_0
    //   335: goto -164 -> 171
    //   338: astore_0
    //   339: goto -109 -> 230
    //   342: astore_0
    //   343: goto -55 -> 288
    //   346: astore 4
    //   348: goto -24 -> 324
    //   351: astore_0
    //   352: aconst_null
    //   353: astore 4
    //   355: goto -43 -> 312
    //   358: astore 5
    //   360: aload_0
    //   361: astore 4
    //   363: aload 5
    //   365: astore_0
    //   366: goto -54 -> 312
    //   369: astore 4
    //   371: goto -77 -> 294
    //   374: iload_2
    //   375: iconst_1
    //   376: iadd
    //   377: istore_2
    //   378: goto -282 -> 96
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	381	0	paramString	String
    //   0	381	1	paramBoolean	boolean
    //   75	303	2	i1	int
    //   151	6	3	i2	int
    //   7	267	4	localDataOutputStream	java.io.DataOutputStream
    //   290	9	4	localIOException1	IOException
    //   307	11	4	str1	String
    //   346	1	4	localIOException2	IOException
    //   353	9	4	str2	String
    //   369	1	4	localIOException3	IOException
    //   14	232	5	localb	b.b.b
    //   304	6	5	localObject1	Object
    //   358	6	5	localObject2	Object
    //   4	174	6	localObject3	Object
    // Exception table:
    //   from	to	target	type
    //   9	16	290	java/io/IOException
    //   35	67	290	java/io/IOException
    //   72	76	290	java/io/IOException
    //   96	105	290	java/io/IOException
    //   112	122	290	java/io/IOException
    //   125	152	290	java/io/IOException
    //   173	188	290	java/io/IOException
    //   192	208	290	java/io/IOException
    //   232	254	290	java/io/IOException
    //   294	304	304	finally
    //   25	33	326	java/io/IOException
    //   84	92	330	java/io/IOException
    //   163	171	334	java/io/IOException
    //   222	230	338	java/io/IOException
    //   282	288	342	java/io/IOException
    //   317	324	346	java/io/IOException
    //   9	16	351	finally
    //   35	67	351	finally
    //   72	76	351	finally
    //   96	105	351	finally
    //   112	122	351	finally
    //   125	152	351	finally
    //   173	188	351	finally
    //   192	208	351	finally
    //   232	254	351	finally
    //   254	278	358	finally
    //   254	278	369	java/io/IOException
  }
  
  public static long b(String paramString)
  {
    try
    {
      long l1 = com.estrongs.fs.d.a().j(paramString).lastModified();
      return l1;
    }
    catch (NullPointerException paramString) {}
    return 0L;
  }
  
  private static b.b.b b(String paramString, boolean paramBoolean)
  {
    String str = am.f(paramString);
    Object localObject1;
    int i1;
    Object localObject2;
    if (paramBoolean)
    {
      localObject1 = (b.b.b)h.get(str);
      paramString = (String)localObject1;
      if (localObject1 != null)
      {
        try
        {
          b.b.c localc = ((b.b.b)localObject1).a();
          localc.a(203, i.get(localObject1));
          paramString = ((b.b.b)localObject1).a(localc, true, false);
          i1 = 0;
          for (;;)
          {
            localObject2 = localObject1;
            if (paramString.b() != 160) {
              break;
            }
            localObject2 = localObject1;
            if (i1 >= 40) {
              break;
            }
            paramString = ((b.b.b)localObject1).a(localc, true, false);
            i1 += 1;
          }
          if (((String)localObject2).contains("not connected")) {
            break label173;
          }
        }
        catch (IOException paramString)
        {
          localObject2 = paramString.getMessage();
          if (localObject2 == null) {
            break label262;
          }
        }
        if ((!((String)localObject2).contains("connection abort")) && (!((String)localObject2).contains("connect")) && (!((String)localObject2).contains("Connect"))) {
          break label262;
        }
        label173:
        ((b.b.b)localObject1).e();
        i.remove(localObject1);
        h.remove(str);
      }
    }
    for (paramString = (String)localObject1;; paramString = null)
    {
      for (;;)
      {
        try
        {
          if (d.isDiscovering()) {
            d.cancelDiscovery();
          }
          i1 = 0;
          long l1;
          if (i1 < 3) {
            l1 = (i1 + 4) * 200;
          }
          try
          {
            a(l1);
            paramString = com.estrongs.bluetooth.c.a(d.getRemoteDevice(str), a);
            if (paramString != null) {
              continue;
            }
            localObject2 = null;
            return (b.b.b)localObject2;
          }
          catch (Exception paramString)
          {
            label262:
            i1 += 1;
            paramString = null;
          }
          throw paramString;
        }
        catch (IOException paramString)
        {
          paramString.printStackTrace();
          return null;
        }
      }
      localObject1 = paramString.a();
      ((b.b.c)localObject1).a(70, b);
      localObject1 = paramString.a((b.b.c)localObject1);
      if (localObject1 != null)
      {
        if (((b.b.c)localObject1).b() != 160) {
          return null;
        }
        localObject1 = ((b.b.c)localObject1).a(203);
        if (localObject1 != null)
        {
          paramString.a(((Long)localObject1).longValue());
          i.put(paramString, localObject1);
        }
      }
      if (paramBoolean) {
        h.put(str, paramString);
      }
      return paramString;
    }
  }
  
  private static m b(BluetoothDevice paramBluetoothDevice)
  {
    BluetoothClass localBluetoothClass = paramBluetoothDevice.getBluetoothClass();
    if (localBluetoothClass == null) {
      return m.n;
    }
    switch (localBluetoothClass.getMajorDeviceClass())
    {
    default: 
      if (paramBluetoothDevice.getBondState() == 12) {
        return m.m;
      }
      break;
    case 256: 
      if (paramBluetoothDevice.getBondState() == 12) {
        return m.i;
      }
      return m.j;
    case 512: 
      if (paramBluetoothDevice.getBondState() == 12) {
        return m.k;
      }
      return m.l;
    }
    return m.n;
  }
  
  private static String b(Context paramContext, BluetoothDevice paramBluetoothDevice)
  {
    paramBluetoothDevice = paramBluetoothDevice.getBluetoothClass();
    if (paramBluetoothDevice == null) {
      return "";
    }
    switch (paramBluetoothDevice.getMajorDeviceClass())
    {
    default: 
      return "";
    case 0: 
      return paramContext.getText(2131427746).toString();
    case 1024: 
      return paramContext.getText(2131427742).toString();
    case 256: 
      return paramContext.getText(2131427743).toString();
    case 2304: 
      return paramContext.getText(2131427744).toString();
    case 1536: 
      return paramContext.getText(2131427745).toString();
    case 768: 
      return paramContext.getText(2131427747).toString();
    case 1280: 
      return paramContext.getText(2131427748).toString();
    case 512: 
      return paramContext.getText(2131427407).toString();
    case 2048: 
      return paramContext.getText(2131427749).toString();
    case 7936: 
      return paramContext.getText(2131427750).toString();
    }
    return paramContext.getText(2131427751).toString();
  }
  
  public static void b()
  {
    if ((d == null) || (!d.isEnabled())) {}
    while (!d.isDiscovering()) {
      return;
    }
    d.cancelDiscovery();
  }
  
  public static void b(Context paramContext)
  {
    IntentFilter localIntentFilter = new IntentFilter("android.bluetooth.device.action.FOUND");
    paramContext.registerReceiver(l, localIntentFilter);
    localIntentFilter = new IntentFilter("android.bluetooth.adapter.action.DISCOVERY_FINISHED");
    paramContext.registerReceiver(l, localIntentFilter);
  }
  
  public static List<com.estrongs.fs.h> c()
  {
    return e;
  }
  
  public static void c(Context paramContext)
  {
    if (d.isDiscovering()) {
      d.cancelDiscovery();
    }
    try
    {
      paramContext.unregisterReceiver(l);
      if ((h == null) || (h.size() == 0)) {
        return;
      }
    }
    catch (Exception paramContext)
    {
      for (;;)
      {
        paramContext.printStackTrace();
      }
      paramContext = h.keySet().iterator();
      while (paramContext.hasNext())
      {
        Object localObject = (String)paramContext.next();
        localObject = (b.b.b)h.get(localObject);
        if (localObject != null) {
          try
          {
            ((b.b.b)localObject).b(null);
            ((b.b.b)localObject).e();
          }
          catch (IOException localIOException) {}
        }
      }
      h.clear();
      i.clear();
    }
  }
  
  private static boolean c(BluetoothDevice paramBluetoothDevice)
  {
    paramBluetoothDevice = paramBluetoothDevice.getBluetoothClass();
    return (paramBluetoothDevice != null) && (paramBluetoothDevice.hasService(1048576));
  }
  
  public static boolean c(String paramString)
  {
    return k(paramString);
  }
  
  public static void d()
  {
    if ((d != null) && (d.isDiscovering())) {
      d.cancelDiscovery();
    }
    f = false;
  }
  
  /* Error */
  public static boolean d(String paramString)
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore_3
    //   2: iconst_0
    //   3: istore 4
    //   5: iconst_0
    //   6: istore 5
    //   8: aload_0
    //   9: invokestatic 178	com/estrongs/android/util/am:g	(Ljava/lang/String;)Ljava/lang/String;
    //   12: astore 10
    //   14: aconst_null
    //   15: astore 8
    //   17: aconst_null
    //   18: astore 7
    //   20: aload 8
    //   22: astore 6
    //   24: aload_0
    //   25: iconst_1
    //   26: invokestatic 187	com/estrongs/fs/impl/c/a:b	(Ljava/lang/String;Z)Lb/b/b;
    //   29: astore 9
    //   31: aload 9
    //   33: ifnonnull +22 -> 55
    //   36: iload 5
    //   38: istore 4
    //   40: iconst_0
    //   41: ifeq +11 -> 52
    //   44: new 115	java/lang/NullPointerException
    //   47: dup
    //   48: invokespecial 188	java/lang/NullPointerException:<init>	()V
    //   51: athrow
    //   52: iload 4
    //   54: ireturn
    //   55: aload 8
    //   57: astore 6
    //   59: aload 10
    //   61: invokestatic 205	com/estrongs/fs/impl/c/a:l	(Ljava/lang/String;)[Ljava/lang/String;
    //   64: astore 10
    //   66: aload 10
    //   68: ifnull +15 -> 83
    //   71: aload 8
    //   73: astore 6
    //   75: aload 10
    //   77: arraylength
    //   78: istore_1
    //   79: iload_1
    //   80: ifne +22 -> 102
    //   83: iload 5
    //   85: istore 4
    //   87: iconst_0
    //   88: ifeq -36 -> 52
    //   91: new 115	java/lang/NullPointerException
    //   94: dup
    //   95: invokespecial 188	java/lang/NullPointerException:<init>	()V
    //   98: athrow
    //   99: astore_0
    //   100: iconst_0
    //   101: ireturn
    //   102: aload 8
    //   104: astore 6
    //   106: aload 9
    //   108: invokeinterface 193 1 0
    //   113: astore 11
    //   115: aload 8
    //   117: astore 6
    //   119: aload 11
    //   121: sipush 203
    //   124: getstatic 61	com/estrongs/fs/impl/c/a:i	Ljava/util/HashMap;
    //   127: aload 9
    //   129: invokevirtual 197	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   132: invokeinterface 202 3 0
    //   137: iconst_0
    //   138: istore_1
    //   139: aload 8
    //   141: astore 6
    //   143: iload_1
    //   144: aload 10
    //   146: arraylength
    //   147: iconst_1
    //   148: isub
    //   149: if_icmpge +90 -> 239
    //   152: aload 10
    //   154: iload_1
    //   155: aaload
    //   156: ifnull +279 -> 435
    //   159: aload 8
    //   161: astore 6
    //   163: aload 10
    //   165: iload_1
    //   166: aaload
    //   167: invokevirtual 210	java/lang/String:length	()I
    //   170: ifne +6 -> 176
    //   173: goto +262 -> 435
    //   176: aload 8
    //   178: astore 6
    //   180: aload 11
    //   182: iconst_1
    //   183: aload 10
    //   185: iload_1
    //   186: aaload
    //   187: invokeinterface 202 3 0
    //   192: aload 8
    //   194: astore 6
    //   196: aload 9
    //   198: aload 11
    //   200: iconst_0
    //   201: iconst_0
    //   202: invokeinterface 213 4 0
    //   207: invokeinterface 215 1 0
    //   212: istore_2
    //   213: iload_2
    //   214: sipush 160
    //   217: if_icmpeq +218 -> 435
    //   220: iload 5
    //   222: istore 4
    //   224: iconst_0
    //   225: ifeq -173 -> 52
    //   228: new 115	java/lang/NullPointerException
    //   231: dup
    //   232: invokespecial 188	java/lang/NullPointerException:<init>	()V
    //   235: athrow
    //   236: astore_0
    //   237: iconst_0
    //   238: ireturn
    //   239: aload 8
    //   241: astore 6
    //   243: aload 11
    //   245: iconst_1
    //   246: aload 10
    //   248: aload 10
    //   250: arraylength
    //   251: iconst_1
    //   252: isub
    //   253: aaload
    //   254: invokeinterface 202 3 0
    //   259: aload 8
    //   261: astore 6
    //   263: aload_0
    //   264: invokestatic 426	com/estrongs/fs/impl/c/a:k	(Ljava/lang/String;)Z
    //   267: ifeq +55 -> 322
    //   270: aload 8
    //   272: astore 6
    //   274: aload 9
    //   276: aload 11
    //   278: iconst_0
    //   279: iconst_0
    //   280: invokeinterface 213 4 0
    //   285: invokeinterface 215 1 0
    //   290: istore_1
    //   291: iload_1
    //   292: sipush 160
    //   295: if_icmpne +135 -> 430
    //   298: aload 7
    //   300: astore 6
    //   302: iload_3
    //   303: istore 4
    //   305: aload 6
    //   307: ifnull -255 -> 52
    //   310: aload 6
    //   312: invokeinterface 226 1 0
    //   317: iload_3
    //   318: ireturn
    //   319: astore_0
    //   320: iload_3
    //   321: ireturn
    //   322: aload 8
    //   324: astore 6
    //   326: aload 9
    //   328: aload 11
    //   330: invokeinterface 220 2 0
    //   335: astore_0
    //   336: iload 4
    //   338: istore_3
    //   339: aload_0
    //   340: astore 6
    //   342: aload_0
    //   343: ifnull -41 -> 302
    //   346: aload_0
    //   347: astore 6
    //   349: aload_0
    //   350: invokeinterface 224 1 0
    //   355: istore_1
    //   356: iload 4
    //   358: istore_3
    //   359: aload_0
    //   360: astore 6
    //   362: iload_1
    //   363: sipush 160
    //   366: if_icmpne -64 -> 302
    //   369: iconst_1
    //   370: istore_3
    //   371: aload_0
    //   372: astore 6
    //   374: goto -72 -> 302
    //   377: astore 6
    //   379: aconst_null
    //   380: astore_0
    //   381: new 149	com/estrongs/fs/FileSystemException
    //   384: dup
    //   385: aload 6
    //   387: invokespecial 152	com/estrongs/fs/FileSystemException:<init>	(Ljava/lang/Throwable;)V
    //   390: athrow
    //   391: astore 7
    //   393: aload_0
    //   394: astore 6
    //   396: aload 7
    //   398: astore_0
    //   399: aload 6
    //   401: ifnull +10 -> 411
    //   404: aload 6
    //   406: invokeinterface 226 1 0
    //   411: aload_0
    //   412: athrow
    //   413: astore_0
    //   414: iconst_0
    //   415: ireturn
    //   416: astore 6
    //   418: goto -7 -> 411
    //   421: astore_0
    //   422: goto -23 -> 399
    //   425: astore 6
    //   427: goto -46 -> 381
    //   430: iconst_0
    //   431: istore_3
    //   432: goto -134 -> 298
    //   435: iload_1
    //   436: iconst_1
    //   437: iadd
    //   438: istore_1
    //   439: goto -300 -> 139
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	442	0	paramString	String
    //   78	361	1	i1	int
    //   212	6	2	i2	int
    //   1	431	3	bool1	boolean
    //   3	354	4	bool2	boolean
    //   6	215	5	bool3	boolean
    //   22	351	6	localObject1	Object
    //   377	9	6	localIOException1	IOException
    //   394	11	6	str	String
    //   416	1	6	localIOException2	IOException
    //   425	1	6	localIOException3	IOException
    //   18	281	7	localObject2	Object
    //   391	6	7	localObject3	Object
    //   15	308	8	localObject4	Object
    //   29	298	9	localb	b.b.b
    //   12	237	10	localObject5	Object
    //   113	216	11	localc	b.b.c
    // Exception table:
    //   from	to	target	type
    //   91	99	99	java/io/IOException
    //   228	236	236	java/io/IOException
    //   310	317	319	java/io/IOException
    //   24	31	377	java/io/IOException
    //   59	66	377	java/io/IOException
    //   75	79	377	java/io/IOException
    //   106	115	377	java/io/IOException
    //   119	137	377	java/io/IOException
    //   143	152	377	java/io/IOException
    //   163	173	377	java/io/IOException
    //   180	192	377	java/io/IOException
    //   196	213	377	java/io/IOException
    //   243	259	377	java/io/IOException
    //   263	270	377	java/io/IOException
    //   274	291	377	java/io/IOException
    //   326	336	377	java/io/IOException
    //   381	391	391	finally
    //   44	52	413	java/io/IOException
    //   404	411	416	java/io/IOException
    //   24	31	421	finally
    //   59	66	421	finally
    //   75	79	421	finally
    //   106	115	421	finally
    //   119	137	421	finally
    //   143	152	421	finally
    //   163	173	421	finally
    //   180	192	421	finally
    //   196	213	421	finally
    //   243	259	421	finally
    //   263	270	421	finally
    //   274	291	421	finally
    //   326	336	421	finally
    //   349	356	421	finally
    //   349	356	425	java/io/IOException
  }
  
  public static void e()
  {
    if (com.estrongs.android.pop.app.b.a.b) {}
    IntentFilter localIntentFilter;
    do
    {
      return;
      localIntentFilter = new IntentFilter();
      localIntentFilter.addAction("android.bluetooth.adapter.action.STATE_CHANGED");
    } while (FileExplorerActivity.J() == null);
    FileExplorerActivity.J().registerReceiver(m, localIntentFilter);
    com.estrongs.android.pop.app.b.a.b = true;
  }
  
  public static boolean e(String paramString)
  {
    return a(paramString, true);
  }
  
  /* Error */
  public static com.estrongs.fs.c f(String paramString)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_1
    //   2: aconst_null
    //   3: astore 4
    //   5: aload_0
    //   6: invokestatic 178	com/estrongs/android/util/am:g	(Ljava/lang/String;)Ljava/lang/String;
    //   9: astore 5
    //   11: aload_0
    //   12: iconst_1
    //   13: invokestatic 187	com/estrongs/fs/impl/c/a:b	(Ljava/lang/String;Z)Lb/b/b;
    //   16: astore_3
    //   17: aload_3
    //   18: ifnonnull +17 -> 35
    //   21: iconst_0
    //   22: ifeq +11 -> 33
    //   25: new 115	java/lang/NullPointerException
    //   28: dup
    //   29: invokespecial 188	java/lang/NullPointerException:<init>	()V
    //   32: athrow
    //   33: aconst_null
    //   34: areturn
    //   35: aload_0
    //   36: invokestatic 426	com/estrongs/fs/impl/c/a:k	(Ljava/lang/String;)Z
    //   39: ifeq +433 -> 472
    //   42: aload 5
    //   44: invokestatic 205	com/estrongs/fs/impl/c/a:l	(Ljava/lang/String;)[Ljava/lang/String;
    //   47: astore 5
    //   49: aload_3
    //   50: invokeinterface 193 1 0
    //   55: astore 4
    //   57: aload 4
    //   59: sipush 203
    //   62: getstatic 61	com/estrongs/fs/impl/c/a:i	Ljava/util/HashMap;
    //   65: aload_3
    //   66: invokevirtual 197	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   69: invokeinterface 202 3 0
    //   74: iload_1
    //   75: aload 5
    //   77: arraylength
    //   78: if_icmpge +73 -> 151
    //   81: aload 5
    //   83: iload_1
    //   84: aaload
    //   85: ifnull +392 -> 477
    //   88: aload 5
    //   90: iload_1
    //   91: aaload
    //   92: invokevirtual 210	java/lang/String:length	()I
    //   95: ifne +6 -> 101
    //   98: goto +379 -> 477
    //   101: aload 4
    //   103: iconst_1
    //   104: aload 5
    //   106: iload_1
    //   107: aaload
    //   108: invokeinterface 202 3 0
    //   113: aload_3
    //   114: aload 4
    //   116: iconst_0
    //   117: iconst_0
    //   118: invokeinterface 213 4 0
    //   123: invokeinterface 215 1 0
    //   128: istore_2
    //   129: iload_2
    //   130: sipush 160
    //   133: if_icmpeq +344 -> 477
    //   136: iconst_0
    //   137: ifeq -104 -> 33
    //   140: new 115	java/lang/NullPointerException
    //   143: dup
    //   144: invokespecial 188	java/lang/NullPointerException:<init>	()V
    //   147: athrow
    //   148: astore_0
    //   149: aconst_null
    //   150: areturn
    //   151: aload_3
    //   152: invokeinterface 193 1 0
    //   157: astore 4
    //   159: aload 4
    //   161: sipush 203
    //   164: getstatic 61	com/estrongs/fs/impl/c/a:i	Ljava/util/HashMap;
    //   167: aload_3
    //   168: invokevirtual 197	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   171: invokeinterface 202 3 0
    //   176: aload 4
    //   178: bipush 66
    //   180: ldc -39
    //   182: invokeinterface 202 3 0
    //   187: aload_3
    //   188: aload 4
    //   190: invokeinterface 220 2 0
    //   195: astore_3
    //   196: aload_3
    //   197: ifnull +20 -> 217
    //   200: aload_3
    //   201: astore 4
    //   203: aload_3
    //   204: invokeinterface 224 1 0
    //   209: istore_1
    //   210: iload_1
    //   211: sipush 160
    //   214: if_icmpeq +18 -> 232
    //   217: aload_3
    //   218: ifnull -185 -> 33
    //   221: aload_3
    //   222: invokeinterface 226 1 0
    //   227: aconst_null
    //   228: areturn
    //   229: astore_0
    //   230: aconst_null
    //   231: areturn
    //   232: aload_3
    //   233: astore 4
    //   235: new 236	java/io/BufferedInputStream
    //   238: dup
    //   239: aload_3
    //   240: invokeinterface 239 1 0
    //   245: invokespecial 400	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   248: astore 6
    //   250: aload_3
    //   251: astore 4
    //   253: getstatic 164	com/estrongs/fs/impl/c/a:g	Lcom/estrongs/bluetooth/parser/a;
    //   256: aload 6
    //   258: invokevirtual 245	com/estrongs/bluetooth/parser/a:a	(Ljava/io/InputStream;)Ljava/util/ArrayList;
    //   261: astore 5
    //   263: aload_3
    //   264: astore 4
    //   266: aload 6
    //   268: invokevirtual 248	java/io/BufferedInputStream:close	()V
    //   271: aload 5
    //   273: astore 4
    //   275: new 589	com/estrongs/fs/c
    //   278: dup
    //   279: aload_0
    //   280: invokespecial 590	com/estrongs/fs/c:<init>	(Ljava/lang/String;)V
    //   283: astore 5
    //   285: aload 4
    //   287: ifnull +101 -> 388
    //   290: aload 5
    //   292: iconst_1
    //   293: putfield 592	com/estrongs/fs/c:d	Z
    //   296: aload 4
    //   298: invokevirtual 266	java/util/ArrayList:iterator	()Ljava/util/Iterator;
    //   301: astore 4
    //   303: aload 4
    //   305: invokeinterface 271 1 0
    //   310: ifeq +95 -> 405
    //   313: aload 4
    //   315: invokeinterface 275 1 0
    //   320: checkcast 277	com/estrongs/bluetooth/parser/OBEXElement
    //   323: invokevirtual 298	com/estrongs/bluetooth/parser/OBEXElement:e	()Z
    //   326: ifeq +47 -> 373
    //   329: aload 5
    //   331: aload 5
    //   333: getfield 595	com/estrongs/fs/c:f	I
    //   336: iconst_1
    //   337: iadd
    //   338: putfield 595	com/estrongs/fs/c:f	I
    //   341: goto -38 -> 303
    //   344: astore_0
    //   345: aload_3
    //   346: astore 4
    //   348: new 149	com/estrongs/fs/FileSystemException
    //   351: dup
    //   352: aload_0
    //   353: invokespecial 152	com/estrongs/fs/FileSystemException:<init>	(Ljava/lang/Throwable;)V
    //   356: athrow
    //   357: astore_0
    //   358: aload 4
    //   360: astore_3
    //   361: aload_3
    //   362: ifnull +9 -> 371
    //   365: aload_3
    //   366: invokeinterface 226 1 0
    //   371: aload_0
    //   372: athrow
    //   373: aload 5
    //   375: aload 5
    //   377: getfield 597	com/estrongs/fs/c:g	I
    //   380: iconst_1
    //   381: iadd
    //   382: putfield 597	com/estrongs/fs/c:g	I
    //   385: goto -82 -> 303
    //   388: aload 5
    //   390: ldc_w 599
    //   393: putfield 601	com/estrongs/fs/c:c	Ljava/lang/String;
    //   396: aload 5
    //   398: aload_0
    //   399: invokestatic 603	com/estrongs/fs/impl/c/a:a	(Ljava/lang/String;)J
    //   402: putfield 605	com/estrongs/fs/c:e	J
    //   405: aload 5
    //   407: aload_0
    //   408: invokestatic 607	com/estrongs/fs/impl/c/a:b	(Ljava/lang/String;)J
    //   411: putfield 609	com/estrongs/fs/c:j	J
    //   414: aload 5
    //   416: iconst_0
    //   417: putfield 611	com/estrongs/fs/c:m	Z
    //   420: aload 5
    //   422: iconst_1
    //   423: putfield 612	com/estrongs/fs/c:k	Z
    //   426: aload 5
    //   428: iconst_1
    //   429: putfield 614	com/estrongs/fs/c:l	Z
    //   432: aload_3
    //   433: ifnull +9 -> 442
    //   436: aload_3
    //   437: invokeinterface 226 1 0
    //   442: aload 5
    //   444: areturn
    //   445: astore_0
    //   446: aconst_null
    //   447: areturn
    //   448: astore_0
    //   449: goto -7 -> 442
    //   452: astore_3
    //   453: goto -82 -> 371
    //   456: astore_0
    //   457: aconst_null
    //   458: astore_3
    //   459: goto -98 -> 361
    //   462: astore_0
    //   463: aconst_null
    //   464: astore_3
    //   465: goto -120 -> 345
    //   468: astore_0
    //   469: goto -124 -> 345
    //   472: aconst_null
    //   473: astore_3
    //   474: goto -199 -> 275
    //   477: iload_1
    //   478: iconst_1
    //   479: iadd
    //   480: istore_1
    //   481: goto -407 -> 74
    //   484: astore_0
    //   485: goto -124 -> 361
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	488	0	paramString	String
    //   1	480	1	i1	int
    //   128	6	2	i2	int
    //   16	421	3	localObject1	Object
    //   452	1	3	localIOException	IOException
    //   458	16	3	localObject2	Object
    //   3	356	4	localObject3	Object
    //   9	434	5	localObject4	Object
    //   248	19	6	localBufferedInputStream	BufferedInputStream
    // Exception table:
    //   from	to	target	type
    //   140	148	148	java/io/IOException
    //   221	227	229	java/io/IOException
    //   275	285	344	java/io/IOException
    //   290	303	344	java/io/IOException
    //   303	341	344	java/io/IOException
    //   373	385	344	java/io/IOException
    //   388	405	344	java/io/IOException
    //   405	432	344	java/io/IOException
    //   203	210	357	finally
    //   235	250	357	finally
    //   253	263	357	finally
    //   266	271	357	finally
    //   348	357	357	finally
    //   25	33	445	java/io/IOException
    //   436	442	448	java/io/IOException
    //   365	371	452	java/io/IOException
    //   11	17	456	finally
    //   35	74	456	finally
    //   74	81	456	finally
    //   88	98	456	finally
    //   101	129	456	finally
    //   151	196	456	finally
    //   11	17	462	java/io/IOException
    //   35	74	462	java/io/IOException
    //   74	81	462	java/io/IOException
    //   88	98	462	java/io/IOException
    //   101	129	462	java/io/IOException
    //   151	196	462	java/io/IOException
    //   203	210	468	java/io/IOException
    //   235	250	468	java/io/IOException
    //   253	263	468	java/io/IOException
    //   266	271	468	java/io/IOException
    //   275	285	484	finally
    //   290	303	484	finally
    //   303	341	484	finally
    //   373	385	484	finally
    //   388	405	484	finally
    //   405	432	484	finally
  }
  
  public static void f()
  {
    if (!com.estrongs.android.pop.app.b.a.b) {}
    while (FileExplorerActivity.J() == null) {
      return;
    }
    try
    {
      FileExplorerActivity.J().unregisterReceiver(m);
      com.estrongs.android.pop.app.b.a.b = false;
      return;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        localException.printStackTrace();
      }
    }
  }
  
  public static InputStream g(String paramString)
  {
    int i1 = 0;
    Object localObject2 = am.g(paramString);
    for (;;)
    {
      try
      {
        Object localObject1 = b(paramString, true);
        if (localObject1 == null) {
          return null;
        }
        localObject2 = l((String)localObject2);
        if ((localObject2 != null) && (localObject2.length != 0))
        {
          b.b.c localc = ((b.b.b)localObject1).a();
          localc.a(203, i.get(localObject1));
          if (i1 < localObject2.length - 1)
          {
            if ((localObject2[i1] == null) || (localObject2[i1].length() == 0)) {
              break label222;
            }
            localc.a(1, localObject2[i1]);
            if (((b.b.b)localObject1).a(localc, false, false).b() == 160) {
              break label222;
            }
            return null;
          }
          localc = ((b.b.b)localObject1).a();
          localc.a(203, i.get(localObject1));
          localc.a(1, localObject2[(localObject2.length - 1)]);
          localObject1 = ((b.b.b)localObject1).c(localc);
          if (localObject1 != null)
          {
            if (localObject1 != null) {
              j.put(paramString, localObject1);
            }
            paramString = new BufferedInputStream(new g(((b.b.d)localObject1).b(), (b.b.d)localObject1));
            return paramString;
          }
        }
      }
      catch (IOException paramString)
      {
        paramString = paramString;
        throw new FileSystemException(paramString);
      }
      finally {}
      return null;
      label222:
      i1 += 1;
    }
  }
  
  public static OutputStream h(String paramString)
  {
    int i1 = 0;
    Object localObject2 = am.g(paramString);
    for (;;)
    {
      try
      {
        Object localObject1 = b(paramString, true);
        if (localObject1 == null) {
          return null;
        }
        localObject2 = l((String)localObject2);
        if ((localObject2 == null) || (localObject2.length == 0)) {
          break label246;
        }
        b.b.c localc = ((b.b.b)localObject1).a();
        localc.a(203, i.get(localObject1));
        if (i1 < localObject2.length - 1)
        {
          if ((localObject2[i1] == null) || (localObject2[i1].length() == 0)) {
            break label248;
          }
          localc.a(1, localObject2[i1]);
          if (((b.b.b)localObject1).a(localc, false, false).b() == 160) {
            break label248;
          }
          return null;
        }
        localc = ((b.b.b)localObject1).a();
        localc.a(203, i.get(localObject1));
        localc.a(1, localObject2[(localObject2.length - 1)]);
        ((b.b.b)localObject1).a(((Long)i.get(localObject1)).longValue());
        localObject1 = ((b.b.b)localObject1).d(localc);
        if (localObject1 == null) {
          return null;
        }
        localObject2 = new BufferedOutputStream(new h(((b.b.d)localObject1).d(), (b.b.d)localObject1));
        if (localObject1 != null)
        {
          j.put(paramString, localObject1);
          return (OutputStream)localObject2;
        }
      }
      catch (IOException paramString)
      {
        paramString = paramString;
        throw new FileSystemException(paramString);
      }
      finally {}
      return (OutputStream)localObject2;
      label246:
      return null;
      label248:
      i1 += 1;
    }
  }
  
  /* Error */
  public static com.estrongs.fs.h i(String paramString)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_1
    //   2: aconst_null
    //   3: astore_3
    //   4: getstatic 45	com/estrongs/fs/impl/c/a:d	Landroid/bluetooth/BluetoothAdapter;
    //   7: ifnull +12 -> 19
    //   10: getstatic 45	com/estrongs/fs/impl/c/a:d	Landroid/bluetooth/BluetoothAdapter;
    //   13: invokevirtual 162	android/bluetooth/BluetoothAdapter:isEnabled	()Z
    //   16: ifne +5 -> 21
    //   19: aconst_null
    //   20: areturn
    //   21: getstatic 164	com/estrongs/fs/impl/c/a:g	Lcom/estrongs/bluetooth/parser/a;
    //   24: ifnonnull +13 -> 37
    //   27: new 166	com/estrongs/bluetooth/parser/a
    //   30: dup
    //   31: invokespecial 167	com/estrongs/bluetooth/parser/a:<init>	()V
    //   34: putstatic 164	com/estrongs/fs/impl/c/a:g	Lcom/estrongs/bluetooth/parser/a;
    //   37: aload_0
    //   38: invokestatic 635	com/estrongs/android/util/am:bk	(Ljava/lang/String;)Ljava/lang/String;
    //   41: invokestatic 178	com/estrongs/android/util/am:g	(Ljava/lang/String;)Ljava/lang/String;
    //   44: astore 6
    //   46: getstatic 45	com/estrongs/fs/impl/c/a:d	Landroid/bluetooth/BluetoothAdapter;
    //   49: invokevirtual 181	android/bluetooth/BluetoothAdapter:isDiscovering	()Z
    //   52: ifeq +10 -> 62
    //   55: getstatic 45	com/estrongs/fs/impl/c/a:d	Landroid/bluetooth/BluetoothAdapter;
    //   58: invokevirtual 184	android/bluetooth/BluetoothAdapter:cancelDiscovery	()Z
    //   61: pop
    //   62: aload_0
    //   63: invokestatic 635	com/estrongs/android/util/am:bk	(Ljava/lang/String;)Ljava/lang/String;
    //   66: iconst_1
    //   67: invokestatic 187	com/estrongs/fs/impl/c/a:b	(Ljava/lang/String;Z)Lb/b/b;
    //   70: astore 5
    //   72: aload 5
    //   74: ifnonnull +17 -> 91
    //   77: iconst_0
    //   78: ifeq +11 -> 89
    //   81: new 115	java/lang/NullPointerException
    //   84: dup
    //   85: invokespecial 188	java/lang/NullPointerException:<init>	()V
    //   88: athrow
    //   89: aconst_null
    //   90: areturn
    //   91: aload 5
    //   93: invokeinterface 193 1 0
    //   98: astore 4
    //   100: aload 4
    //   102: sipush 203
    //   105: getstatic 61	com/estrongs/fs/impl/c/a:i	Ljava/util/HashMap;
    //   108: aload 5
    //   110: invokevirtual 197	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   113: invokeinterface 202 3 0
    //   118: aload 6
    //   120: invokestatic 205	com/estrongs/fs/impl/c/a:l	(Ljava/lang/String;)[Ljava/lang/String;
    //   123: astore 6
    //   125: iload_1
    //   126: aload 6
    //   128: arraylength
    //   129: if_icmpge +73 -> 202
    //   132: aload 6
    //   134: iload_1
    //   135: aaload
    //   136: ifnull +394 -> 530
    //   139: aload 6
    //   141: iload_1
    //   142: aaload
    //   143: invokevirtual 210	java/lang/String:length	()I
    //   146: ifne +6 -> 152
    //   149: goto +381 -> 530
    //   152: aload 4
    //   154: iconst_1
    //   155: aload 6
    //   157: iload_1
    //   158: aaload
    //   159: invokeinterface 202 3 0
    //   164: aload 5
    //   166: aload 4
    //   168: iconst_0
    //   169: iconst_0
    //   170: invokeinterface 213 4 0
    //   175: invokeinterface 215 1 0
    //   180: istore_2
    //   181: iload_2
    //   182: sipush 160
    //   185: if_icmpeq +345 -> 530
    //   188: iconst_0
    //   189: ifeq +11 -> 200
    //   192: new 115	java/lang/NullPointerException
    //   195: dup
    //   196: invokespecial 188	java/lang/NullPointerException:<init>	()V
    //   199: athrow
    //   200: aconst_null
    //   201: areturn
    //   202: aload 5
    //   204: invokeinterface 193 1 0
    //   209: astore 6
    //   211: aload 6
    //   213: sipush 203
    //   216: getstatic 61	com/estrongs/fs/impl/c/a:i	Ljava/util/HashMap;
    //   219: aload 5
    //   221: invokevirtual 197	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   224: invokeinterface 202 3 0
    //   229: aload 6
    //   231: bipush 66
    //   233: ldc -39
    //   235: invokeinterface 202 3 0
    //   240: aload 5
    //   242: aload 6
    //   244: invokeinterface 220 2 0
    //   249: astore 4
    //   251: aload 4
    //   253: astore_3
    //   254: aload_3
    //   255: ifnull +20 -> 275
    //   258: aload_3
    //   259: astore 4
    //   261: aload_3
    //   262: invokeinterface 224 1 0
    //   267: istore_1
    //   268: iload_1
    //   269: sipush 160
    //   272: if_icmpeq +15 -> 287
    //   275: aload_3
    //   276: ifnull +9 -> 285
    //   279: aload_3
    //   280: invokeinterface 226 1 0
    //   285: aconst_null
    //   286: areturn
    //   287: aload_3
    //   288: astore 4
    //   290: aload_3
    //   291: invokeinterface 231 1 0
    //   296: bipush 73
    //   298: invokeinterface 234 2 0
    //   303: ifnull +224 -> 527
    //   306: aload_3
    //   307: astore 4
    //   309: aload 5
    //   311: aload 6
    //   313: invokeinterface 220 2 0
    //   318: astore 5
    //   320: aload 5
    //   322: astore_3
    //   323: new 236	java/io/BufferedInputStream
    //   326: dup
    //   327: aload_3
    //   328: invokeinterface 239 1 0
    //   333: sipush 8192
    //   336: invokespecial 242	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;I)V
    //   339: astore 4
    //   341: getstatic 164	com/estrongs/fs/impl/c/a:g	Lcom/estrongs/bluetooth/parser/a;
    //   344: aload 4
    //   346: invokevirtual 245	com/estrongs/bluetooth/parser/a:a	(Ljava/io/InputStream;)Ljava/util/ArrayList;
    //   349: astore 5
    //   351: aload 4
    //   353: invokevirtual 248	java/io/BufferedInputStream:close	()V
    //   356: aload_0
    //   357: invokestatic 397	com/estrongs/android/util/am:d	(Ljava/lang/String;)Ljava/lang/String;
    //   360: astore 4
    //   362: aload 5
    //   364: ifnull +68 -> 432
    //   367: aload 5
    //   369: invokevirtual 266	java/util/ArrayList:iterator	()Ljava/util/Iterator;
    //   372: astore 5
    //   374: aload 5
    //   376: invokeinterface 271 1 0
    //   381: ifeq +51 -> 432
    //   384: aload 5
    //   386: invokeinterface 275 1 0
    //   391: checkcast 277	com/estrongs/bluetooth/parser/OBEXElement
    //   394: astore 6
    //   396: aload 6
    //   398: invokevirtual 296	com/estrongs/bluetooth/parser/OBEXElement:a	()Ljava/lang/String;
    //   401: aload 4
    //   403: invokevirtual 638	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   406: ifeq -32 -> 374
    //   409: new 300	com/estrongs/fs/impl/c/e
    //   412: dup
    //   413: aload 6
    //   415: aload_0
    //   416: invokespecial 303	com/estrongs/fs/impl/c/e:<init>	(Lcom/estrongs/bluetooth/parser/OBEXElement;Ljava/lang/String;)V
    //   419: astore_0
    //   420: aload_3
    //   421: ifnull +9 -> 430
    //   424: aload_3
    //   425: invokeinterface 226 1 0
    //   430: aload_0
    //   431: areturn
    //   432: aload_3
    //   433: ifnull +9 -> 442
    //   436: aload_3
    //   437: invokeinterface 226 1 0
    //   442: aconst_null
    //   443: areturn
    //   444: astore_0
    //   445: aconst_null
    //   446: astore_3
    //   447: aload_3
    //   448: astore 4
    //   450: aload_0
    //   451: invokevirtual 488	java/io/IOException:printStackTrace	()V
    //   454: aload_3
    //   455: ifnull -13 -> 442
    //   458: aload_3
    //   459: invokeinterface 226 1 0
    //   464: goto -22 -> 442
    //   467: astore_0
    //   468: goto -26 -> 442
    //   471: astore_0
    //   472: aload_3
    //   473: ifnull +9 -> 482
    //   476: aload_3
    //   477: invokeinterface 226 1 0
    //   482: aload_0
    //   483: athrow
    //   484: astore_0
    //   485: goto -396 -> 89
    //   488: astore_0
    //   489: goto -289 -> 200
    //   492: astore_0
    //   493: goto -208 -> 285
    //   496: astore_3
    //   497: goto -67 -> 430
    //   500: astore_0
    //   501: goto -59 -> 442
    //   504: astore_3
    //   505: goto -23 -> 482
    //   508: astore_0
    //   509: aload 4
    //   511: astore_3
    //   512: goto -40 -> 472
    //   515: astore_0
    //   516: goto -44 -> 472
    //   519: astore_0
    //   520: goto -73 -> 447
    //   523: astore_0
    //   524: goto -77 -> 447
    //   527: goto -204 -> 323
    //   530: iload_1
    //   531: iconst_1
    //   532: iadd
    //   533: istore_1
    //   534: goto -409 -> 125
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	537	0	paramString	String
    //   1	533	1	i1	int
    //   180	6	2	i2	int
    //   3	474	3	localObject1	Object
    //   496	1	3	localIOException1	IOException
    //   504	1	3	localIOException2	IOException
    //   511	1	3	localObject2	Object
    //   98	412	4	localObject3	Object
    //   70	315	5	localObject4	Object
    //   44	370	6	localObject5	Object
    // Exception table:
    //   from	to	target	type
    //   46	62	444	java/io/IOException
    //   62	72	444	java/io/IOException
    //   91	125	444	java/io/IOException
    //   125	132	444	java/io/IOException
    //   139	149	444	java/io/IOException
    //   152	181	444	java/io/IOException
    //   202	251	444	java/io/IOException
    //   458	464	467	java/io/IOException
    //   46	62	471	finally
    //   62	72	471	finally
    //   91	125	471	finally
    //   125	132	471	finally
    //   139	149	471	finally
    //   152	181	471	finally
    //   202	251	471	finally
    //   81	89	484	java/io/IOException
    //   192	200	488	java/io/IOException
    //   279	285	492	java/io/IOException
    //   424	430	496	java/io/IOException
    //   436	442	500	java/io/IOException
    //   476	482	504	java/io/IOException
    //   261	268	508	finally
    //   290	306	508	finally
    //   309	320	508	finally
    //   450	454	508	finally
    //   323	362	515	finally
    //   367	374	515	finally
    //   374	420	515	finally
    //   261	268	519	java/io/IOException
    //   290	306	519	java/io/IOException
    //   309	320	519	java/io/IOException
    //   323	362	523	java/io/IOException
    //   367	374	523	java/io/IOException
    //   374	420	523	java/io/IOException
  }
  
  private static void i()
  {
    if (d.isDiscovering()) {
      d.cancelDiscovery();
    }
    f = true;
    d.startDiscovery();
  }
  
  private static m j(String paramString)
  {
    paramString = am.f(paramString);
    return b(d.getRemoteDevice(paramString));
  }
  
  private void j()
  {
    if (FileExplorerActivity.J() != null) {
      FileExplorerActivity.J().unregisterReceiver(n);
    }
  }
  
  private static boolean k(String paramString)
  {
    return paramString.charAt(paramString.length() - 1) == '/';
  }
  
  private static String[] l(String paramString)
  {
    return paramString.split("[/+]");
  }
  
  private static boolean m(String paramString)
  {
    return (paramString != null) && ((paramString.length() == 0) || (paramString.equals(".")) || (paramString.equals("..")));
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.c.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */