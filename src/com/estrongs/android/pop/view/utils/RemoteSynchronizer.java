package com.estrongs.android.pop.view.utils;

import com.estrongs.a.a.o;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.a;
import com.estrongs.android.util.am;
import java.io.File;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;

public class RemoteSynchronizer
{
  public static final String a = a.d + "/synFiles";
  public static final String b = a.d + "/synMapFiles";
  public static Map<String, RemoteSynchronizer.RemoteFile> c = new HashMap();
  public static Map<String, RemoteSynchronizer.RemoteFile> d = new LinkedHashMap();
  public static aa e;
  private static HashMap<String, ab> f = new HashMap();
  private static final Object g = new Object();
  private static boolean h = false;
  private static o i = new x();
  private static boolean j = false;
  private static boolean k = false;
  private static Object l = new Object();
  private static Object m = new Object();
  
  public static void a()
  {
    new Thread(new w(), "RemoteSynchronizerControl").start();
  }
  
  public static void a(RemoteSynchronizer.RemoteFile paramRemoteFile)
  {
    synchronized (g)
    {
      if (!h)
      {
        a();
        h = true;
      }
    }
    synchronized (f)
    {
      ab localab = (ab)f.get(path);
      if (localab == null)
      {
        localab = new ab();
        f.put(path, localab);
        d.put(path, paramRemoteFile);
        b();
        f.notify();
        return;
        paramRemoteFile = finally;
        throw paramRemoteFile;
      }
      a = true;
    }
  }
  
  public static void a(String paramString)
  {
    synchronized (m)
    {
      if (e == null)
      {
        e = new aa(paramString);
        e.startWatching();
      }
      return;
    }
  }
  
  private static y b(RemoteSynchronizer.RemoteFile paramRemoteFile, ab paramab)
  {
    paramab = new y(paramRemoteFile, paramab);
    paramRemoteFile = am.bL(am.bk(path));
    paramab.setDescription(String.format(FexApplication.a().getString(2131428398), new Object[] { paramRemoteFile }));
    paramab.addPostListener(i);
    return paramab;
  }
  
  /* Error */
  protected static void b()
  {
    // Byte code:
    //   0: new 182	java/io/ObjectOutputStream
    //   3: dup
    //   4: new 184	java/io/FileOutputStream
    //   7: dup
    //   8: getstatic 49	com/estrongs/android/pop/view/utils/RemoteSynchronizer:a	Ljava/lang/String;
    //   11: invokespecial 185	java/io/FileOutputStream:<init>	(Ljava/lang/String;)V
    //   14: invokespecial 188	java/io/ObjectOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   17: astore_1
    //   18: aload_1
    //   19: astore_0
    //   20: getstatic 63	com/estrongs/android/pop/view/utils/RemoteSynchronizer:d	Ljava/util/Map;
    //   23: invokeinterface 192 1 0
    //   28: invokeinterface 198 1 0
    //   33: astore_2
    //   34: aload_1
    //   35: astore_0
    //   36: aload_2
    //   37: invokeinterface 204 1 0
    //   42: ifeq +37 -> 79
    //   45: aload_1
    //   46: astore_0
    //   47: aload_1
    //   48: aload_2
    //   49: invokeinterface 208 1 0
    //   54: checkcast 105	com/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile
    //   57: invokevirtual 212	java/io/ObjectOutputStream:writeObject	(Ljava/lang/Object;)V
    //   60: goto -26 -> 34
    //   63: astore_2
    //   64: aload_1
    //   65: astore_0
    //   66: aload_2
    //   67: invokevirtual 215	java/io/FileNotFoundException:printStackTrace	()V
    //   70: aload_1
    //   71: ifnull +7 -> 78
    //   74: aload_1
    //   75: invokevirtual 218	java/io/ObjectOutputStream:close	()V
    //   78: return
    //   79: aload_1
    //   80: astore_0
    //   81: aload_1
    //   82: invokevirtual 221	java/io/ObjectOutputStream:flush	()V
    //   85: aload_1
    //   86: ifnull -8 -> 78
    //   89: aload_1
    //   90: invokevirtual 218	java/io/ObjectOutputStream:close	()V
    //   93: return
    //   94: astore_0
    //   95: return
    //   96: astore_2
    //   97: aconst_null
    //   98: astore_1
    //   99: aload_1
    //   100: astore_0
    //   101: aload_2
    //   102: invokevirtual 222	java/io/IOException:printStackTrace	()V
    //   105: aload_1
    //   106: ifnull -28 -> 78
    //   109: aload_1
    //   110: invokevirtual 218	java/io/ObjectOutputStream:close	()V
    //   113: return
    //   114: astore_0
    //   115: return
    //   116: astore_1
    //   117: aconst_null
    //   118: astore_0
    //   119: aload_0
    //   120: ifnull +7 -> 127
    //   123: aload_0
    //   124: invokevirtual 218	java/io/ObjectOutputStream:close	()V
    //   127: aload_1
    //   128: athrow
    //   129: astore_0
    //   130: return
    //   131: astore_0
    //   132: goto -5 -> 127
    //   135: astore_1
    //   136: goto -17 -> 119
    //   139: astore_2
    //   140: goto -41 -> 99
    //   143: astore_2
    //   144: aconst_null
    //   145: astore_1
    //   146: goto -82 -> 64
    // Local variable table:
    //   start	length	slot	name	signature
    //   19	62	0	localObjectOutputStream1	java.io.ObjectOutputStream
    //   94	1	0	localIOException1	java.io.IOException
    //   100	1	0	localObjectOutputStream2	java.io.ObjectOutputStream
    //   114	1	0	localIOException2	java.io.IOException
    //   118	6	0	localObject1	Object
    //   129	1	0	localIOException3	java.io.IOException
    //   131	1	0	localIOException4	java.io.IOException
    //   17	93	1	localObjectOutputStream3	java.io.ObjectOutputStream
    //   116	12	1	localObject2	Object
    //   135	1	1	localObject3	Object
    //   145	1	1	localObject4	Object
    //   33	16	2	localIterator	java.util.Iterator
    //   63	4	2	localFileNotFoundException1	java.io.FileNotFoundException
    //   96	6	2	localIOException5	java.io.IOException
    //   139	1	2	localIOException6	java.io.IOException
    //   143	1	2	localFileNotFoundException2	java.io.FileNotFoundException
    // Exception table:
    //   from	to	target	type
    //   20	34	63	java/io/FileNotFoundException
    //   36	45	63	java/io/FileNotFoundException
    //   47	60	63	java/io/FileNotFoundException
    //   81	85	63	java/io/FileNotFoundException
    //   89	93	94	java/io/IOException
    //   0	18	96	java/io/IOException
    //   109	113	114	java/io/IOException
    //   0	18	116	finally
    //   74	78	129	java/io/IOException
    //   123	127	131	java/io/IOException
    //   20	34	135	finally
    //   36	45	135	finally
    //   47	60	135	finally
    //   66	70	135	finally
    //   81	85	135	finally
    //   101	105	135	finally
    //   20	34	139	java/io/IOException
    //   36	45	139	java/io/IOException
    //   47	60	139	java/io/IOException
    //   81	85	139	java/io/IOException
    //   0	18	143	java/io/FileNotFoundException
  }
  
  /* Error */
  protected static void c()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_1
    //   2: aconst_null
    //   3: astore_2
    //   4: new 182	java/io/ObjectOutputStream
    //   7: dup
    //   8: new 184	java/io/FileOutputStream
    //   11: dup
    //   12: getstatic 53	com/estrongs/android/pop/view/utils/RemoteSynchronizer:b	Ljava/lang/String;
    //   15: invokespecial 185	java/io/FileOutputStream:<init>	(Ljava/lang/String;)V
    //   18: invokespecial 188	java/io/ObjectOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   21: astore_0
    //   22: aload_0
    //   23: astore_1
    //   24: aload_0
    //   25: getstatic 58	com/estrongs/android/pop/view/utils/RemoteSynchronizer:c	Ljava/util/Map;
    //   28: invokevirtual 212	java/io/ObjectOutputStream:writeObject	(Ljava/lang/Object;)V
    //   31: aload_0
    //   32: astore_1
    //   33: aload_0
    //   34: invokevirtual 221	java/io/ObjectOutputStream:flush	()V
    //   37: aload_0
    //   38: ifnull +7 -> 45
    //   41: aload_0
    //   42: invokevirtual 218	java/io/ObjectOutputStream:close	()V
    //   45: return
    //   46: astore_2
    //   47: aconst_null
    //   48: astore_0
    //   49: aload_0
    //   50: astore_1
    //   51: aload_2
    //   52: invokevirtual 215	java/io/FileNotFoundException:printStackTrace	()V
    //   55: aload_0
    //   56: ifnull -11 -> 45
    //   59: aload_0
    //   60: invokevirtual 218	java/io/ObjectOutputStream:close	()V
    //   63: return
    //   64: astore_0
    //   65: return
    //   66: astore_1
    //   67: aload_2
    //   68: astore_0
    //   69: aload_1
    //   70: astore_2
    //   71: aload_0
    //   72: astore_1
    //   73: aload_2
    //   74: invokevirtual 222	java/io/IOException:printStackTrace	()V
    //   77: aload_0
    //   78: ifnull -33 -> 45
    //   81: aload_0
    //   82: invokevirtual 218	java/io/ObjectOutputStream:close	()V
    //   85: return
    //   86: astore_0
    //   87: return
    //   88: astore_0
    //   89: aload_1
    //   90: ifnull +7 -> 97
    //   93: aload_1
    //   94: invokevirtual 218	java/io/ObjectOutputStream:close	()V
    //   97: aload_0
    //   98: athrow
    //   99: astore_0
    //   100: return
    //   101: astore_1
    //   102: goto -5 -> 97
    //   105: astore_0
    //   106: goto -17 -> 89
    //   109: astore_2
    //   110: goto -39 -> 71
    //   113: astore_2
    //   114: goto -65 -> 49
    // Local variable table:
    //   start	length	slot	name	signature
    //   21	39	0	localObjectOutputStream	java.io.ObjectOutputStream
    //   64	1	0	localIOException1	java.io.IOException
    //   68	14	0	localFileNotFoundException1	java.io.FileNotFoundException
    //   86	1	0	localIOException2	java.io.IOException
    //   88	10	0	localObject1	Object
    //   99	1	0	localIOException3	java.io.IOException
    //   105	1	0	localObject2	Object
    //   1	50	1	localObject3	Object
    //   66	4	1	localIOException4	java.io.IOException
    //   72	22	1	localObject4	Object
    //   101	1	1	localIOException5	java.io.IOException
    //   3	1	2	localObject5	Object
    //   46	22	2	localFileNotFoundException2	java.io.FileNotFoundException
    //   70	4	2	localIOException6	java.io.IOException
    //   109	1	2	localIOException7	java.io.IOException
    //   113	1	2	localFileNotFoundException3	java.io.FileNotFoundException
    // Exception table:
    //   from	to	target	type
    //   4	22	46	java/io/FileNotFoundException
    //   59	63	64	java/io/IOException
    //   4	22	66	java/io/IOException
    //   81	85	86	java/io/IOException
    //   4	22	88	finally
    //   73	77	88	finally
    //   41	45	99	java/io/IOException
    //   93	97	101	java/io/IOException
    //   24	31	105	finally
    //   33	37	105	finally
    //   51	55	105	finally
    //   24	31	109	java/io/IOException
    //   33	37	109	java/io/IOException
    //   24	31	113	java/io/FileNotFoundException
    //   33	37	113	java/io/FileNotFoundException
  }
  
  /* Error */
  public static void d()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 5
    //   3: aconst_null
    //   4: astore 6
    //   6: iconst_0
    //   7: istore_1
    //   8: getstatic 81	com/estrongs/android/pop/view/utils/RemoteSynchronizer:l	Ljava/lang/Object;
    //   11: astore 7
    //   13: aload 7
    //   15: monitorenter
    //   16: getstatic 77	com/estrongs/android/pop/view/utils/RemoteSynchronizer:j	Z
    //   19: ifeq +13 -> 32
    //   22: getstatic 79	com/estrongs/android/pop/view/utils/RemoteSynchronizer:k	Z
    //   25: ifeq +7 -> 32
    //   28: aload 7
    //   30: monitorexit
    //   31: return
    //   32: invokestatic 158	com/estrongs/android/pop/FexApplication:a	()Lcom/estrongs/android/pop/FexApplication;
    //   35: invokestatic 229	com/estrongs/android/pop/ad:a	(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;
    //   38: invokevirtual 232	com/estrongs/android/pop/ad:o	()Z
    //   41: ifne +27 -> 68
    //   44: new 234	java/io/File
    //   47: dup
    //   48: getstatic 49	com/estrongs/android/pop/view/utils/RemoteSynchronizer:a	Ljava/lang/String;
    //   51: invokespecial 235	java/io/File:<init>	(Ljava/lang/String;)V
    //   54: invokevirtual 238	java/io/File:delete	()Z
    //   57: pop
    //   58: aload 7
    //   60: monitorexit
    //   61: return
    //   62: astore_2
    //   63: aload 7
    //   65: monitorexit
    //   66: aload_2
    //   67: athrow
    //   68: new 240	java/util/HashSet
    //   71: dup
    //   72: invokespecial 241	java/util/HashSet:<init>	()V
    //   75: astore 8
    //   77: getstatic 77	com/estrongs/android/pop/view/utils/RemoteSynchronizer:j	Z
    //   80: ifne +111 -> 191
    //   83: new 234	java/io/File
    //   86: dup
    //   87: getstatic 49	com/estrongs/android/pop/view/utils/RemoteSynchronizer:a	Ljava/lang/String;
    //   90: invokespecial 235	java/io/File:<init>	(Ljava/lang/String;)V
    //   93: invokevirtual 244	java/io/File:exists	()Z
    //   96: ifeq +95 -> 191
    //   99: iconst_1
    //   100: putstatic 77	com/estrongs/android/pop/view/utils/RemoteSynchronizer:j	Z
    //   103: new 246	java/io/FileInputStream
    //   106: dup
    //   107: getstatic 49	com/estrongs/android/pop/view/utils/RemoteSynchronizer:a	Ljava/lang/String;
    //   110: invokespecial 247	java/io/FileInputStream:<init>	(Ljava/lang/String;)V
    //   113: astore 9
    //   115: new 249	java/io/ObjectInputStream
    //   118: dup
    //   119: aload 9
    //   121: invokespecial 252	java/io/ObjectInputStream:<init>	(Ljava/io/InputStream;)V
    //   124: astore_3
    //   125: aload_3
    //   126: astore_2
    //   127: new 254	java/util/ArrayList
    //   130: dup
    //   131: invokespecial 255	java/util/ArrayList:<init>	()V
    //   134: astore 4
    //   136: iload_1
    //   137: istore_0
    //   138: aload_3
    //   139: astore_2
    //   140: aload 9
    //   142: invokevirtual 259	java/io/FileInputStream:available	()I
    //   145: ifle +234 -> 379
    //   148: aload_3
    //   149: astore_2
    //   150: aload 4
    //   152: aload_3
    //   153: invokevirtual 262	java/io/ObjectInputStream:readObject	()Ljava/lang/Object;
    //   156: checkcast 105	com/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile
    //   159: invokeinterface 268 2 0
    //   164: pop
    //   165: goto -29 -> 136
    //   168: astore 4
    //   170: aload_3
    //   171: astore_2
    //   172: iconst_0
    //   173: putstatic 77	com/estrongs/android/pop/view/utils/RemoteSynchronizer:j	Z
    //   176: aload_3
    //   177: astore_2
    //   178: aload 4
    //   180: invokevirtual 269	java/lang/Exception:printStackTrace	()V
    //   183: aload_3
    //   184: ifnull +7 -> 191
    //   187: aload_3
    //   188: invokevirtual 270	java/io/ObjectInputStream:close	()V
    //   191: getstatic 79	com/estrongs/android/pop/view/utils/RemoteSynchronizer:k	Z
    //   194: ifne +181 -> 375
    //   197: new 234	java/io/File
    //   200: dup
    //   201: getstatic 53	com/estrongs/android/pop/view/utils/RemoteSynchronizer:b	Ljava/lang/String;
    //   204: invokespecial 235	java/io/File:<init>	(Ljava/lang/String;)V
    //   207: invokevirtual 244	java/io/File:exists	()Z
    //   210: ifeq +165 -> 375
    //   213: iconst_1
    //   214: putstatic 79	com/estrongs/android/pop/view/utils/RemoteSynchronizer:k	Z
    //   217: new 246	java/io/FileInputStream
    //   220: dup
    //   221: getstatic 53	com/estrongs/android/pop/view/utils/RemoteSynchronizer:b	Ljava/lang/String;
    //   224: invokespecial 247	java/io/FileInputStream:<init>	(Ljava/lang/String;)V
    //   227: astore 4
    //   229: new 249	java/io/ObjectInputStream
    //   232: dup
    //   233: aload 4
    //   235: invokespecial 252	java/io/ObjectInputStream:<init>	(Ljava/io/InputStream;)V
    //   238: astore_3
    //   239: aload 6
    //   241: astore_2
    //   242: aload 4
    //   244: invokevirtual 259	java/io/FileInputStream:available	()I
    //   247: ifle +11 -> 258
    //   250: aload_3
    //   251: invokevirtual 262	java/io/ObjectInputStream:readObject	()Ljava/lang/Object;
    //   254: checkcast 121	java/util/Map
    //   257: astore_2
    //   258: aload_2
    //   259: invokeinterface 274 1 0
    //   264: invokeinterface 277 1 0
    //   269: astore 4
    //   271: aload 4
    //   273: invokeinterface 204 1 0
    //   278: ifeq +212 -> 490
    //   281: aload 4
    //   283: invokeinterface 208 1 0
    //   288: checkcast 279	java/util/Map$Entry
    //   291: invokeinterface 282 1 0
    //   296: checkcast 105	com/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile
    //   299: astore 5
    //   301: new 234	java/io/File
    //   304: dup
    //   305: aload 5
    //   307: getfield 285	com/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile:cachePath	Ljava/lang/String;
    //   310: invokespecial 235	java/io/File:<init>	(Ljava/lang/String;)V
    //   313: astore 6
    //   315: aload 8
    //   317: aload 5
    //   319: getfield 108	com/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile:path	Ljava/lang/String;
    //   322: invokeinterface 288 2 0
    //   327: ifne -56 -> 271
    //   330: aload 6
    //   332: invokevirtual 292	java/io/File:lastModified	()J
    //   335: aload 5
    //   337: getfield 296	com/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile:localFileLastModified	J
    //   340: lcmp
    //   341: ifle -70 -> 271
    //   344: aload 5
    //   346: invokestatic 298	com/estrongs/android/pop/view/utils/RemoteSynchronizer:a	(Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile;)V
    //   349: goto -78 -> 271
    //   352: astore 4
    //   354: aload_3
    //   355: astore_2
    //   356: aload 4
    //   358: astore_3
    //   359: iconst_0
    //   360: putstatic 79	com/estrongs/android/pop/view/utils/RemoteSynchronizer:k	Z
    //   363: aload_3
    //   364: invokevirtual 269	java/lang/Exception:printStackTrace	()V
    //   367: aload_2
    //   368: ifnull +7 -> 375
    //   371: aload_2
    //   372: invokevirtual 270	java/io/ObjectInputStream:close	()V
    //   375: aload 7
    //   377: monitorexit
    //   378: return
    //   379: aload_3
    //   380: astore_2
    //   381: iload_0
    //   382: aload 4
    //   384: invokeinterface 301 1 0
    //   389: if_icmpge +73 -> 462
    //   392: aload_3
    //   393: astore_2
    //   394: aload 4
    //   396: iload_0
    //   397: invokeinterface 304 2 0
    //   402: checkcast 105	com/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile
    //   405: astore 9
    //   407: aload_3
    //   408: astore_2
    //   409: new 234	java/io/File
    //   412: dup
    //   413: aload 9
    //   415: getfield 285	com/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile:cachePath	Ljava/lang/String;
    //   418: invokespecial 235	java/io/File:<init>	(Ljava/lang/String;)V
    //   421: invokevirtual 292	java/io/File:lastModified	()J
    //   424: aload 9
    //   426: getfield 296	com/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile:localFileLastModified	J
    //   429: lcmp
    //   430: iflt +10 -> 440
    //   433: aload_3
    //   434: astore_2
    //   435: aload 9
    //   437: invokestatic 298	com/estrongs/android/pop/view/utils/RemoteSynchronizer:a	(Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile;)V
    //   440: aload_3
    //   441: astore_2
    //   442: aload 8
    //   444: aload 9
    //   446: getfield 108	com/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile:path	Ljava/lang/String;
    //   449: invokeinterface 305 2 0
    //   454: pop
    //   455: iload_0
    //   456: iconst_1
    //   457: iadd
    //   458: istore_0
    //   459: goto -80 -> 379
    //   462: aload_3
    //   463: ifnull -272 -> 191
    //   466: aload_3
    //   467: invokevirtual 270	java/io/ObjectInputStream:close	()V
    //   470: goto -279 -> 191
    //   473: astore_2
    //   474: goto -283 -> 191
    //   477: astore_3
    //   478: aconst_null
    //   479: astore_2
    //   480: aload_2
    //   481: ifnull +7 -> 488
    //   484: aload_2
    //   485: invokevirtual 270	java/io/ObjectInputStream:close	()V
    //   488: aload_3
    //   489: athrow
    //   490: getstatic 58	com/estrongs/android/pop/view/utils/RemoteSynchronizer:c	Ljava/util/Map;
    //   493: aload_2
    //   494: invokeinterface 309 2 0
    //   499: aload_3
    //   500: ifnull -125 -> 375
    //   503: aload_3
    //   504: invokevirtual 270	java/io/ObjectInputStream:close	()V
    //   507: goto -132 -> 375
    //   510: astore_2
    //   511: goto -136 -> 375
    //   514: astore_2
    //   515: aconst_null
    //   516: astore_3
    //   517: aload_3
    //   518: ifnull +7 -> 525
    //   521: aload_3
    //   522: invokevirtual 270	java/io/ObjectInputStream:close	()V
    //   525: aload_2
    //   526: athrow
    //   527: astore_2
    //   528: goto -337 -> 191
    //   531: astore_2
    //   532: goto -44 -> 488
    //   535: astore_2
    //   536: goto -161 -> 375
    //   539: astore_3
    //   540: goto -15 -> 525
    //   543: astore_2
    //   544: goto -27 -> 517
    //   547: astore 4
    //   549: aload_2
    //   550: astore_3
    //   551: aload 4
    //   553: astore_2
    //   554: goto -37 -> 517
    //   557: astore_3
    //   558: aload 5
    //   560: astore_2
    //   561: goto -202 -> 359
    //   564: astore_3
    //   565: goto -85 -> 480
    //   568: astore 4
    //   570: aconst_null
    //   571: astore_3
    //   572: goto -402 -> 170
    // Local variable table:
    //   start	length	slot	name	signature
    //   137	322	0	n	int
    //   7	130	1	i1	int
    //   62	5	2	localObject1	Object
    //   126	316	2	localObject2	Object
    //   473	1	2	localIOException1	java.io.IOException
    //   479	15	2	localMap	Map
    //   510	1	2	localIOException2	java.io.IOException
    //   514	12	2	localObject3	Object
    //   527	1	2	localIOException3	java.io.IOException
    //   531	1	2	localIOException4	java.io.IOException
    //   535	1	2	localIOException5	java.io.IOException
    //   543	7	2	localObject4	Object
    //   553	8	2	localObject5	Object
    //   124	343	3	localObject6	Object
    //   477	27	3	localObject7	Object
    //   516	6	3	localObject8	Object
    //   539	1	3	localIOException6	java.io.IOException
    //   550	1	3	localObject9	Object
    //   557	1	3	localException1	Exception
    //   564	1	3	localObject10	Object
    //   571	1	3	localObject11	Object
    //   134	17	4	localArrayList	java.util.ArrayList
    //   168	11	4	localException2	Exception
    //   227	55	4	localObject12	Object
    //   352	43	4	localException3	Exception
    //   547	5	4	localObject13	Object
    //   568	1	4	localException4	Exception
    //   1	558	5	localRemoteFile	RemoteSynchronizer.RemoteFile
    //   4	327	6	localFile	File
    //   11	365	7	localObject14	Object
    //   75	368	8	localHashSet	java.util.HashSet
    //   113	332	9	localObject15	Object
    // Exception table:
    //   from	to	target	type
    //   16	31	62	finally
    //   32	61	62	finally
    //   63	66	62	finally
    //   68	103	62	finally
    //   187	191	62	finally
    //   191	217	62	finally
    //   371	375	62	finally
    //   375	378	62	finally
    //   466	470	62	finally
    //   484	488	62	finally
    //   488	490	62	finally
    //   503	507	62	finally
    //   521	525	62	finally
    //   525	527	62	finally
    //   127	136	168	java/lang/Exception
    //   140	148	168	java/lang/Exception
    //   150	165	168	java/lang/Exception
    //   381	392	168	java/lang/Exception
    //   394	407	168	java/lang/Exception
    //   409	433	168	java/lang/Exception
    //   435	440	168	java/lang/Exception
    //   442	455	168	java/lang/Exception
    //   242	258	352	java/lang/Exception
    //   258	271	352	java/lang/Exception
    //   271	349	352	java/lang/Exception
    //   490	499	352	java/lang/Exception
    //   466	470	473	java/io/IOException
    //   103	125	477	finally
    //   503	507	510	java/io/IOException
    //   217	239	514	finally
    //   187	191	527	java/io/IOException
    //   484	488	531	java/io/IOException
    //   371	375	535	java/io/IOException
    //   521	525	539	java/io/IOException
    //   242	258	543	finally
    //   258	271	543	finally
    //   271	349	543	finally
    //   490	499	543	finally
    //   359	367	547	finally
    //   217	239	557	java/lang/Exception
    //   127	136	564	finally
    //   140	148	564	finally
    //   150	165	564	finally
    //   172	176	564	finally
    //   178	183	564	finally
    //   381	392	564	finally
    //   394	407	564	finally
    //   409	433	564	finally
    //   435	440	564	finally
    //   442	455	564	finally
    //   103	125	568	java/lang/Exception
  }
  
  public static void e()
  {
    synchronized (l)
    {
      c.clear();
      if (new File(b).exists()) {
        new File(b).delete();
      }
      return;
    }
  }
  
  public static void f()
  {
    synchronized (m)
    {
      if (e != null)
      {
        e.stopWatching();
        e = null;
      }
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.utils.RemoteSynchronizer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */