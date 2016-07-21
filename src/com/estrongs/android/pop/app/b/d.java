package com.estrongs.android.pop.app.b;

import android.util.Pair;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.app.b.b.c;
import com.estrongs.android.util.l;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class d
{
  static ArrayList<h> a = new ArrayList();
  
  private static long a(long paramLong)
  {
    long l1 = ad.a(FexApplication.a()).bn();
    long l2 = paramLong - 1209600000L;
    if (l1 != -1L)
    {
      paramLong = l1;
      if (l2 <= l1) {}
    }
    else
    {
      paramLong = l2;
    }
    return paramLong;
  }
  
  private static List<com.estrongs.fs.h> a()
  {
    long l1 = System.currentTimeMillis();
    HashMap localHashMap = new HashMap();
    long l2 = a(l1) / 1000L;
    a(localHashMap, l2);
    g(localHashMap, l2);
    l.f("load files:" + (System.currentTimeMillis() - l1));
    l.b("EEE", "load files:" + (System.currentTimeMillis() - l1));
    ArrayList localArrayList = new ArrayList(localHashMap.size());
    localArrayList.addAll(localHashMap.values());
    return localArrayList;
  }
  
  public static List<Pair<Long, List<b>>> a(long paramLong, com.estrongs.android.scanner.g paramg)
  {
    l.f("get list ...");
    long l1 = System.currentTimeMillis();
    com.estrongs.android.scanner.b.b.a().d();
    List localList = a();
    long l2 = System.currentTimeMillis();
    paramg = a(localList, paramLong, paramg);
    l.b("EEE", "parse files:" + (System.currentTimeMillis() - l2));
    l.b("EEE", "getList takes:" + (System.currentTimeMillis() - l1));
    return paramg;
  }
  
  private static List<Pair<Long, List<b>>> a(List<com.estrongs.fs.h> paramList, long paramLong, com.estrongs.android.scanner.g paramg)
  {
    Collections.sort(paramList, new f());
    ArrayList localArrayList = new ArrayList();
    com.estrongs.android.scanner.b.b.a().d();
    Object localObject = null;
    Iterator localIterator = paramList.iterator();
    paramList = (List<com.estrongs.fs.h>)localObject;
    if (localIterator.hasNext())
    {
      localObject = (com.estrongs.fs.h)localIterator.next();
      if ((b(((com.estrongs.fs.h)localObject).getAbsolutePath())) || (a.a(paramList, (com.estrongs.fs.h)localObject, paramLong, paramg))) {
        break label122;
      }
      localObject = a.a((com.estrongs.fs.h)localObject, paramLong, paramg);
      paramList = (List<com.estrongs.fs.h>)localObject;
      if (localObject != null)
      {
        localArrayList.add(localObject);
        paramList = (List<com.estrongs.fs.h>)localObject;
      }
    }
    label122:
    for (;;)
    {
      break;
      return localArrayList;
    }
  }
  
  public static void a(h paramh)
  {
    if (paramh != null) {
      a.add(paramh);
    }
  }
  
  private static void a(HashMap<Long, com.estrongs.fs.h> paramHashMap, long paramLong)
  {
    b(paramHashMap, paramLong);
    c(paramHashMap, paramLong);
    d(paramHashMap, paramLong);
    e(paramHashMap, paramLong);
    f(paramHashMap, paramLong);
  }
  
  private static void a(HashMap<Long, com.estrongs.fs.h> paramHashMap, com.estrongs.fs.h paramh)
  {
    long l = paramh.getAbsolutePath().toLowerCase().hashCode();
    if (!paramHashMap.containsKey(Long.valueOf(l))) {
      paramHashMap.put(Long.valueOf(l), paramh);
    }
  }
  
  /* Error */
  private static void a(HashMap<Long, com.estrongs.fs.h> paramHashMap, String paramString, long paramLong, g paramg)
  {
    // Byte code:
    //   0: invokestatic 42	java/lang/System:currentTimeMillis	()J
    //   3: lstore 9
    //   5: ldc -46
    //   7: invokestatic 216	android/provider/MediaStore$Files:getContentUri	(Ljava/lang/String;)Landroid/net/Uri;
    //   10: astore 11
    //   12: new 57	java/lang/StringBuilder
    //   15: dup
    //   16: invokespecial 58	java/lang/StringBuilder:<init>	()V
    //   19: ldc -38
    //   21: invokevirtual 64	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   24: lload_2
    //   25: invokevirtual 67	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   28: ldc -36
    //   30: invokevirtual 64	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   33: ldc -34
    //   35: invokevirtual 64	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   38: ldc -32
    //   40: invokevirtual 64	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   43: ldc -30
    //   45: invokevirtual 64	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   48: ldc -28
    //   50: invokevirtual 64	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   53: ldc -26
    //   55: invokevirtual 64	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   58: new 57	java/lang/StringBuilder
    //   61: dup
    //   62: invokespecial 58	java/lang/StringBuilder:<init>	()V
    //   65: ldc -24
    //   67: invokevirtual 64	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   70: aload_1
    //   71: invokevirtual 64	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   74: ldc -24
    //   76: invokevirtual 64	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   79: invokevirtual 71	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   82: invokestatic 238	android/database/DatabaseUtils:sqlEscapeString	(Ljava/lang/String;)Ljava/lang/String;
    //   85: invokevirtual 64	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   88: invokevirtual 71	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   91: astore 12
    //   93: invokestatic 23	com/estrongs/android/pop/FexApplication:a	()Lcom/estrongs/android/pop/FexApplication;
    //   96: invokevirtual 242	com/estrongs/android/pop/FexApplication:getContentResolver	()Landroid/content/ContentResolver;
    //   99: aload 11
    //   101: iconst_2
    //   102: anewarray 185	java/lang/String
    //   105: dup
    //   106: iconst_0
    //   107: ldc -28
    //   109: aastore
    //   110: dup
    //   111: iconst_1
    //   112: ldc -34
    //   114: aastore
    //   115: aload 12
    //   117: aconst_null
    //   118: aconst_null
    //   119: invokevirtual 248	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   122: astore 12
    //   124: aload 12
    //   126: ifnull +230 -> 356
    //   129: aload 12
    //   131: astore 11
    //   133: aload 12
    //   135: invokeinterface 253 1 0
    //   140: ifeq +216 -> 356
    //   143: aload 12
    //   145: astore 11
    //   147: aload 12
    //   149: iconst_0
    //   150: invokeinterface 257 2 0
    //   155: astore 13
    //   157: aload 12
    //   159: astore 11
    //   161: aload 13
    //   163: invokestatic 263	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   166: ifne -37 -> 129
    //   169: aload 4
    //   171: ifnull +17 -> 188
    //   174: aload 12
    //   176: astore 11
    //   178: aload 4
    //   180: aload 13
    //   182: invokevirtual 267	com/estrongs/android/pop/app/b/g:a	(Ljava/lang/String;)Z
    //   185: ifeq -56 -> 129
    //   188: aload 12
    //   190: astore 11
    //   192: aload 12
    //   194: iconst_1
    //   195: invokeinterface 271 2 0
    //   200: lstore 7
    //   202: lload 7
    //   204: lstore 5
    //   206: lload 7
    //   208: ldc2_w 35
    //   211: lcmp
    //   212: ifne +36 -> 248
    //   215: aload 12
    //   217: astore 11
    //   219: new 273	java/io/File
    //   222: dup
    //   223: aload 13
    //   225: invokespecial 275	java/io/File:<init>	(Ljava/lang/String;)V
    //   228: invokevirtual 278	java/io/File:lastModified	()J
    //   231: lstore 5
    //   233: aload 12
    //   235: astore 11
    //   237: lload 5
    //   239: ldc2_w 48
    //   242: ldiv
    //   243: lload_2
    //   244: lcmp
    //   245: iflt -116 -> 129
    //   248: aload 12
    //   250: astore 11
    //   252: aload_0
    //   253: new 280	com/estrongs/fs/impl/local/f
    //   256: dup
    //   257: new 273	java/io/File
    //   260: dup
    //   261: aload 13
    //   263: invokespecial 275	java/io/File:<init>	(Ljava/lang/String;)V
    //   266: lload 5
    //   268: invokespecial 283	com/estrongs/fs/impl/local/f:<init>	(Ljava/io/File;J)V
    //   271: invokestatic 285	com/estrongs/android/pop/app/b/d:a	(Ljava/util/HashMap;Lcom/estrongs/fs/h;)V
    //   274: goto -145 -> 129
    //   277: astore 4
    //   279: aload 12
    //   281: astore 11
    //   283: aload 4
    //   285: invokevirtual 288	java/lang/Exception:printStackTrace	()V
    //   288: aload 12
    //   290: ifnull +10 -> 300
    //   293: aload 12
    //   295: invokeinterface 291 1 0
    //   300: invokestatic 42	java/lang/System:currentTimeMillis	()J
    //   303: lstore_2
    //   304: ldc 79
    //   306: new 57	java/lang/StringBuilder
    //   309: dup
    //   310: invokespecial 58	java/lang/StringBuilder:<init>	()V
    //   313: ldc_w 293
    //   316: invokevirtual 64	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   319: aload_1
    //   320: invokevirtual 64	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   323: ldc_w 295
    //   326: invokevirtual 64	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   329: lload_2
    //   330: lload 9
    //   332: lsub
    //   333: invokevirtual 67	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   336: ldc_w 297
    //   339: invokevirtual 64	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   342: aload_0
    //   343: invokevirtual 87	java/util/HashMap:size	()I
    //   346: invokevirtual 300	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   349: invokevirtual 71	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   352: invokestatic 83	com/estrongs/android/util/l:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   355: return
    //   356: aload 12
    //   358: ifnull -58 -> 300
    //   361: aload 12
    //   363: invokeinterface 291 1 0
    //   368: goto -68 -> 300
    //   371: astore_0
    //   372: aconst_null
    //   373: astore 11
    //   375: aload 11
    //   377: ifnull +10 -> 387
    //   380: aload 11
    //   382: invokeinterface 291 1 0
    //   387: aload_0
    //   388: athrow
    //   389: astore_0
    //   390: goto -15 -> 375
    //   393: astore 4
    //   395: aconst_null
    //   396: astore 12
    //   398: goto -119 -> 279
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	401	0	paramHashMap	HashMap<Long, com.estrongs.fs.h>
    //   0	401	1	paramString	String
    //   0	401	2	paramLong	long
    //   0	401	4	paramg	g
    //   204	63	5	l1	long
    //   200	7	7	l2	long
    //   3	328	9	l3	long
    //   10	371	11	localObject1	Object
    //   91	306	12	localObject2	Object
    //   155	107	13	str	String
    // Exception table:
    //   from	to	target	type
    //   133	143	277	java/lang/Exception
    //   147	157	277	java/lang/Exception
    //   161	169	277	java/lang/Exception
    //   178	188	277	java/lang/Exception
    //   192	202	277	java/lang/Exception
    //   219	233	277	java/lang/Exception
    //   237	248	277	java/lang/Exception
    //   252	274	277	java/lang/Exception
    //   93	124	371	finally
    //   133	143	389	finally
    //   147	157	389	finally
    //   161	169	389	finally
    //   178	188	389	finally
    //   192	202	389	finally
    //   219	233	389	finally
    //   237	248	389	finally
    //   252	274	389	finally
    //   283	288	389	finally
    //   93	124	393	java/lang/Exception
  }
  
  private static boolean a(String paramString1, String paramString2)
  {
    return Pattern.compile(paramString1).matcher(paramString2).matches();
  }
  
  private static List<com.estrongs.android.pop.app.b.b.a> b()
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new c());
    localArrayList.add(new com.estrongs.android.pop.app.b.b.d());
    localArrayList.add(new e());
    return localArrayList;
  }
  
  /* Error */
  private static void b(HashMap<Long, com.estrongs.fs.h> paramHashMap, long paramLong)
  {
    // Byte code:
    //   0: invokestatic 42	java/lang/System:currentTimeMillis	()J
    //   3: lstore 7
    //   5: getstatic 333	android/provider/MediaStore$Images$Media:EXTERNAL_CONTENT_URI	Landroid/net/Uri;
    //   8: astore 9
    //   10: new 57	java/lang/StringBuilder
    //   13: dup
    //   14: invokespecial 58	java/lang/StringBuilder:<init>	()V
    //   17: ldc_w 335
    //   20: invokevirtual 64	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   23: lload_1
    //   24: invokevirtual 67	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   27: ldc -36
    //   29: invokevirtual 64	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   32: ldc -34
    //   34: invokevirtual 64	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   37: ldc_w 337
    //   40: invokevirtual 64	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   43: invokevirtual 71	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   46: astore 10
    //   48: invokestatic 23	com/estrongs/android/pop/FexApplication:a	()Lcom/estrongs/android/pop/FexApplication;
    //   51: invokevirtual 242	com/estrongs/android/pop/FexApplication:getContentResolver	()Landroid/content/ContentResolver;
    //   54: aload 9
    //   56: iconst_2
    //   57: anewarray 185	java/lang/String
    //   60: dup
    //   61: iconst_0
    //   62: ldc -28
    //   64: aastore
    //   65: dup
    //   66: iconst_1
    //   67: ldc -34
    //   69: aastore
    //   70: aload 10
    //   72: aconst_null
    //   73: aconst_null
    //   74: invokevirtual 248	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   77: astore 10
    //   79: aload 10
    //   81: ifnull +197 -> 278
    //   84: aload 10
    //   86: astore 9
    //   88: aload 10
    //   90: invokeinterface 253 1 0
    //   95: ifeq +183 -> 278
    //   98: aload 10
    //   100: astore 9
    //   102: aload 10
    //   104: iconst_0
    //   105: invokeinterface 257 2 0
    //   110: astore 11
    //   112: aload 10
    //   114: astore 9
    //   116: aload 11
    //   118: invokestatic 263	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   121: ifne -37 -> 84
    //   124: aload 10
    //   126: astore 9
    //   128: aload 10
    //   130: iconst_1
    //   131: invokeinterface 271 2 0
    //   136: lstore 5
    //   138: lload 5
    //   140: lstore_3
    //   141: lload 5
    //   143: ldc2_w 35
    //   146: lcmp
    //   147: ifne +34 -> 181
    //   150: aload 10
    //   152: astore 9
    //   154: new 273	java/io/File
    //   157: dup
    //   158: aload 11
    //   160: invokespecial 275	java/io/File:<init>	(Ljava/lang/String;)V
    //   163: invokevirtual 278	java/io/File:lastModified	()J
    //   166: lstore_3
    //   167: aload 10
    //   169: astore 9
    //   171: lload_3
    //   172: ldc2_w 48
    //   175: ldiv
    //   176: lload_1
    //   177: lcmp
    //   178: iflt -94 -> 84
    //   181: aload 10
    //   183: astore 9
    //   185: aload_0
    //   186: new 280	com/estrongs/fs/impl/local/f
    //   189: dup
    //   190: new 273	java/io/File
    //   193: dup
    //   194: aload 11
    //   196: invokespecial 275	java/io/File:<init>	(Ljava/lang/String;)V
    //   199: lload_3
    //   200: invokespecial 283	com/estrongs/fs/impl/local/f:<init>	(Ljava/io/File;J)V
    //   203: invokestatic 285	com/estrongs/android/pop/app/b/d:a	(Ljava/util/HashMap;Lcom/estrongs/fs/h;)V
    //   206: goto -122 -> 84
    //   209: astore 11
    //   211: aload 10
    //   213: astore 9
    //   215: aload 11
    //   217: invokevirtual 288	java/lang/Exception:printStackTrace	()V
    //   220: aload 10
    //   222: ifnull +10 -> 232
    //   225: aload 10
    //   227: invokeinterface 291 1 0
    //   232: invokestatic 42	java/lang/System:currentTimeMillis	()J
    //   235: lstore_1
    //   236: ldc 79
    //   238: new 57	java/lang/StringBuilder
    //   241: dup
    //   242: invokespecial 58	java/lang/StringBuilder:<init>	()V
    //   245: ldc_w 339
    //   248: invokevirtual 64	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   251: lload_1
    //   252: lload 7
    //   254: lsub
    //   255: invokevirtual 67	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   258: ldc_w 297
    //   261: invokevirtual 64	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   264: aload_0
    //   265: invokevirtual 87	java/util/HashMap:size	()I
    //   268: invokevirtual 300	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   271: invokevirtual 71	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   274: invokestatic 83	com/estrongs/android/util/l:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   277: return
    //   278: aload 10
    //   280: ifnull -48 -> 232
    //   283: aload 10
    //   285: invokeinterface 291 1 0
    //   290: goto -58 -> 232
    //   293: astore_0
    //   294: aconst_null
    //   295: astore 9
    //   297: aload 9
    //   299: ifnull +10 -> 309
    //   302: aload 9
    //   304: invokeinterface 291 1 0
    //   309: aload_0
    //   310: athrow
    //   311: astore_0
    //   312: goto -15 -> 297
    //   315: astore 11
    //   317: aconst_null
    //   318: astore 10
    //   320: goto -109 -> 211
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	323	0	paramHashMap	HashMap<Long, com.estrongs.fs.h>
    //   0	323	1	paramLong	long
    //   140	60	3	l1	long
    //   136	6	5	l2	long
    //   3	250	7	l3	long
    //   8	295	9	localObject1	Object
    //   46	273	10	localObject2	Object
    //   110	85	11	str	String
    //   209	7	11	localException1	Exception
    //   315	1	11	localException2	Exception
    // Exception table:
    //   from	to	target	type
    //   88	98	209	java/lang/Exception
    //   102	112	209	java/lang/Exception
    //   116	124	209	java/lang/Exception
    //   128	138	209	java/lang/Exception
    //   154	167	209	java/lang/Exception
    //   171	181	209	java/lang/Exception
    //   185	206	209	java/lang/Exception
    //   48	79	293	finally
    //   88	98	311	finally
    //   102	112	311	finally
    //   116	124	311	finally
    //   128	138	311	finally
    //   154	167	311	finally
    //   171	181	311	finally
    //   185	206	311	finally
    //   215	220	311	finally
    //   48	79	315	java/lang/Exception
  }
  
  private static boolean b(String paramString)
  {
    return a("(?i)(?:^/Android/data/.*)|(?:.*/tencent/mobileqq/qbiz/.+)|(?:.*/tencent/mobileqq/data/.+)|(?:.*/tencent/micromsg/.+/(?:voice2|image2|sns|sfs|avatar)/.*)", paramString);
  }
  
  /* Error */
  private static void c(HashMap<Long, com.estrongs.fs.h> paramHashMap, long paramLong)
  {
    // Byte code:
    //   0: invokestatic 42	java/lang/System:currentTimeMillis	()J
    //   3: lstore 7
    //   5: getstatic 346	android/provider/MediaStore$Video$Media:EXTERNAL_CONTENT_URI	Landroid/net/Uri;
    //   8: astore 9
    //   10: new 57	java/lang/StringBuilder
    //   13: dup
    //   14: invokespecial 58	java/lang/StringBuilder:<init>	()V
    //   17: ldc_w 335
    //   20: invokevirtual 64	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   23: lload_1
    //   24: invokevirtual 67	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   27: ldc -36
    //   29: invokevirtual 64	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   32: ldc -34
    //   34: invokevirtual 64	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   37: ldc_w 337
    //   40: invokevirtual 64	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   43: invokevirtual 71	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   46: astore 10
    //   48: invokestatic 23	com/estrongs/android/pop/FexApplication:a	()Lcom/estrongs/android/pop/FexApplication;
    //   51: invokevirtual 242	com/estrongs/android/pop/FexApplication:getContentResolver	()Landroid/content/ContentResolver;
    //   54: aload 9
    //   56: iconst_2
    //   57: anewarray 185	java/lang/String
    //   60: dup
    //   61: iconst_0
    //   62: ldc -28
    //   64: aastore
    //   65: dup
    //   66: iconst_1
    //   67: ldc -34
    //   69: aastore
    //   70: aload 10
    //   72: aconst_null
    //   73: aconst_null
    //   74: invokevirtual 248	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   77: astore 10
    //   79: aload 10
    //   81: ifnull +197 -> 278
    //   84: aload 10
    //   86: astore 9
    //   88: aload 10
    //   90: invokeinterface 253 1 0
    //   95: ifeq +183 -> 278
    //   98: aload 10
    //   100: astore 9
    //   102: aload 10
    //   104: iconst_0
    //   105: invokeinterface 257 2 0
    //   110: astore 11
    //   112: aload 10
    //   114: astore 9
    //   116: aload 11
    //   118: invokestatic 263	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   121: ifne -37 -> 84
    //   124: aload 10
    //   126: astore 9
    //   128: aload 10
    //   130: iconst_1
    //   131: invokeinterface 271 2 0
    //   136: lstore 5
    //   138: lload 5
    //   140: lstore_3
    //   141: lload 5
    //   143: ldc2_w 35
    //   146: lcmp
    //   147: ifne +34 -> 181
    //   150: aload 10
    //   152: astore 9
    //   154: new 273	java/io/File
    //   157: dup
    //   158: aload 11
    //   160: invokespecial 275	java/io/File:<init>	(Ljava/lang/String;)V
    //   163: invokevirtual 278	java/io/File:lastModified	()J
    //   166: lstore_3
    //   167: aload 10
    //   169: astore 9
    //   171: lload_3
    //   172: ldc2_w 48
    //   175: ldiv
    //   176: lload_1
    //   177: lcmp
    //   178: iflt -94 -> 84
    //   181: aload 10
    //   183: astore 9
    //   185: aload_0
    //   186: new 280	com/estrongs/fs/impl/local/f
    //   189: dup
    //   190: new 273	java/io/File
    //   193: dup
    //   194: aload 11
    //   196: invokespecial 275	java/io/File:<init>	(Ljava/lang/String;)V
    //   199: lload_3
    //   200: invokespecial 283	com/estrongs/fs/impl/local/f:<init>	(Ljava/io/File;J)V
    //   203: invokestatic 285	com/estrongs/android/pop/app/b/d:a	(Ljava/util/HashMap;Lcom/estrongs/fs/h;)V
    //   206: goto -122 -> 84
    //   209: astore 11
    //   211: aload 10
    //   213: astore 9
    //   215: aload 11
    //   217: invokevirtual 288	java/lang/Exception:printStackTrace	()V
    //   220: aload 10
    //   222: ifnull +10 -> 232
    //   225: aload 10
    //   227: invokeinterface 291 1 0
    //   232: invokestatic 42	java/lang/System:currentTimeMillis	()J
    //   235: lstore_1
    //   236: ldc 79
    //   238: new 57	java/lang/StringBuilder
    //   241: dup
    //   242: invokespecial 58	java/lang/StringBuilder:<init>	()V
    //   245: ldc_w 348
    //   248: invokevirtual 64	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   251: lload_1
    //   252: lload 7
    //   254: lsub
    //   255: invokevirtual 67	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   258: ldc_w 297
    //   261: invokevirtual 64	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   264: aload_0
    //   265: invokevirtual 87	java/util/HashMap:size	()I
    //   268: invokevirtual 300	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   271: invokevirtual 71	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   274: invokestatic 83	com/estrongs/android/util/l:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   277: return
    //   278: aload 10
    //   280: ifnull -48 -> 232
    //   283: aload 10
    //   285: invokeinterface 291 1 0
    //   290: goto -58 -> 232
    //   293: astore_0
    //   294: aconst_null
    //   295: astore 9
    //   297: aload 9
    //   299: ifnull +10 -> 309
    //   302: aload 9
    //   304: invokeinterface 291 1 0
    //   309: aload_0
    //   310: athrow
    //   311: astore_0
    //   312: goto -15 -> 297
    //   315: astore 11
    //   317: aconst_null
    //   318: astore 10
    //   320: goto -109 -> 211
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	323	0	paramHashMap	HashMap<Long, com.estrongs.fs.h>
    //   0	323	1	paramLong	long
    //   140	60	3	l1	long
    //   136	6	5	l2	long
    //   3	250	7	l3	long
    //   8	295	9	localObject1	Object
    //   46	273	10	localObject2	Object
    //   110	85	11	str	String
    //   209	7	11	localException1	Exception
    //   315	1	11	localException2	Exception
    // Exception table:
    //   from	to	target	type
    //   88	98	209	java/lang/Exception
    //   102	112	209	java/lang/Exception
    //   116	124	209	java/lang/Exception
    //   128	138	209	java/lang/Exception
    //   154	167	209	java/lang/Exception
    //   171	181	209	java/lang/Exception
    //   185	206	209	java/lang/Exception
    //   48	79	293	finally
    //   88	98	311	finally
    //   102	112	311	finally
    //   116	124	311	finally
    //   128	138	311	finally
    //   154	167	311	finally
    //   171	181	311	finally
    //   185	206	311	finally
    //   215	220	311	finally
    //   48	79	315	java/lang/Exception
  }
  
  /* Error */
  private static void d(HashMap<Long, com.estrongs.fs.h> paramHashMap, long paramLong)
  {
    // Byte code:
    //   0: invokestatic 42	java/lang/System:currentTimeMillis	()J
    //   3: lstore 7
    //   5: getstatic 351	android/provider/MediaStore$Audio$Media:EXTERNAL_CONTENT_URI	Landroid/net/Uri;
    //   8: astore 9
    //   10: new 57	java/lang/StringBuilder
    //   13: dup
    //   14: invokespecial 58	java/lang/StringBuilder:<init>	()V
    //   17: ldc_w 335
    //   20: invokevirtual 64	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   23: lload_1
    //   24: invokevirtual 67	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   27: ldc -36
    //   29: invokevirtual 64	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   32: ldc -34
    //   34: invokevirtual 64	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   37: ldc_w 337
    //   40: invokevirtual 64	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   43: invokevirtual 71	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   46: astore 10
    //   48: invokestatic 23	com/estrongs/android/pop/FexApplication:a	()Lcom/estrongs/android/pop/FexApplication;
    //   51: invokevirtual 242	com/estrongs/android/pop/FexApplication:getContentResolver	()Landroid/content/ContentResolver;
    //   54: aload 9
    //   56: iconst_2
    //   57: anewarray 185	java/lang/String
    //   60: dup
    //   61: iconst_0
    //   62: ldc -28
    //   64: aastore
    //   65: dup
    //   66: iconst_1
    //   67: ldc -34
    //   69: aastore
    //   70: aload 10
    //   72: aconst_null
    //   73: aconst_null
    //   74: invokevirtual 248	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   77: astore 10
    //   79: aload 10
    //   81: ifnull +197 -> 278
    //   84: aload 10
    //   86: astore 9
    //   88: aload 10
    //   90: invokeinterface 253 1 0
    //   95: ifeq +183 -> 278
    //   98: aload 10
    //   100: astore 9
    //   102: aload 10
    //   104: iconst_0
    //   105: invokeinterface 257 2 0
    //   110: astore 11
    //   112: aload 10
    //   114: astore 9
    //   116: aload 11
    //   118: invokestatic 263	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   121: ifne -37 -> 84
    //   124: aload 10
    //   126: astore 9
    //   128: aload 10
    //   130: iconst_1
    //   131: invokeinterface 271 2 0
    //   136: lstore 5
    //   138: lload 5
    //   140: lstore_3
    //   141: lload 5
    //   143: ldc2_w 35
    //   146: lcmp
    //   147: ifne +34 -> 181
    //   150: aload 10
    //   152: astore 9
    //   154: new 273	java/io/File
    //   157: dup
    //   158: aload 11
    //   160: invokespecial 275	java/io/File:<init>	(Ljava/lang/String;)V
    //   163: invokevirtual 278	java/io/File:lastModified	()J
    //   166: lstore_3
    //   167: aload 10
    //   169: astore 9
    //   171: lload_3
    //   172: ldc2_w 48
    //   175: ldiv
    //   176: lload_1
    //   177: lcmp
    //   178: iflt -94 -> 84
    //   181: aload 10
    //   183: astore 9
    //   185: aload_0
    //   186: new 280	com/estrongs/fs/impl/local/f
    //   189: dup
    //   190: new 273	java/io/File
    //   193: dup
    //   194: aload 11
    //   196: invokespecial 275	java/io/File:<init>	(Ljava/lang/String;)V
    //   199: lload_3
    //   200: invokespecial 283	com/estrongs/fs/impl/local/f:<init>	(Ljava/io/File;J)V
    //   203: invokestatic 285	com/estrongs/android/pop/app/b/d:a	(Ljava/util/HashMap;Lcom/estrongs/fs/h;)V
    //   206: goto -122 -> 84
    //   209: astore 11
    //   211: aload 10
    //   213: astore 9
    //   215: aload 11
    //   217: invokevirtual 288	java/lang/Exception:printStackTrace	()V
    //   220: aload 10
    //   222: ifnull +10 -> 232
    //   225: aload 10
    //   227: invokeinterface 291 1 0
    //   232: invokestatic 42	java/lang/System:currentTimeMillis	()J
    //   235: lstore_1
    //   236: ldc 79
    //   238: new 57	java/lang/StringBuilder
    //   241: dup
    //   242: invokespecial 58	java/lang/StringBuilder:<init>	()V
    //   245: ldc_w 353
    //   248: invokevirtual 64	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   251: lload_1
    //   252: lload 7
    //   254: lsub
    //   255: invokevirtual 67	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   258: ldc_w 297
    //   261: invokevirtual 64	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   264: aload_0
    //   265: invokevirtual 87	java/util/HashMap:size	()I
    //   268: invokevirtual 300	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   271: invokevirtual 71	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   274: invokestatic 83	com/estrongs/android/util/l:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   277: return
    //   278: aload 10
    //   280: ifnull -48 -> 232
    //   283: aload 10
    //   285: invokeinterface 291 1 0
    //   290: goto -58 -> 232
    //   293: astore_0
    //   294: aconst_null
    //   295: astore 9
    //   297: aload 9
    //   299: ifnull +10 -> 309
    //   302: aload 9
    //   304: invokeinterface 291 1 0
    //   309: aload_0
    //   310: athrow
    //   311: astore_0
    //   312: goto -15 -> 297
    //   315: astore 11
    //   317: aconst_null
    //   318: astore 10
    //   320: goto -109 -> 211
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	323	0	paramHashMap	HashMap<Long, com.estrongs.fs.h>
    //   0	323	1	paramLong	long
    //   140	60	3	l1	long
    //   136	6	5	l2	long
    //   3	250	7	l3	long
    //   8	295	9	localObject1	Object
    //   46	273	10	localObject2	Object
    //   110	85	11	str	String
    //   209	7	11	localException1	Exception
    //   315	1	11	localException2	Exception
    // Exception table:
    //   from	to	target	type
    //   88	98	209	java/lang/Exception
    //   102	112	209	java/lang/Exception
    //   116	124	209	java/lang/Exception
    //   128	138	209	java/lang/Exception
    //   154	167	209	java/lang/Exception
    //   171	181	209	java/lang/Exception
    //   185	206	209	java/lang/Exception
    //   48	79	293	finally
    //   88	98	311	finally
    //   102	112	311	finally
    //   116	124	311	finally
    //   128	138	311	finally
    //   154	167	311	finally
    //   171	181	311	finally
    //   185	206	311	finally
    //   215	220	311	finally
    //   48	79	315	java/lang/Exception
  }
  
  private static void e(HashMap<Long, com.estrongs.fs.h> paramHashMap, long paramLong)
  {
    a(paramHashMap, ".apk", paramLong, null);
  }
  
  private static void f(HashMap<Long, com.estrongs.fs.h> paramHashMap, long paramLong)
  {
    a(paramHashMap, ".doc", paramLong, new g(new String[] { "doc", "docx" }));
    a(paramHashMap, ".p", paramLong, new g(new String[] { "ppt", "ppx", "pptx", "pps", "pdf" }));
    a(paramHashMap, ".xl", paramLong, new g(new String[] { "xls", "xlsx", "xlc", "xlm", "xlsm", "xlsb" }));
    a(paramHashMap, ".htm", paramLong, new g(new String[] { "htm", "html" }));
    a(paramHashMap, ".txt", paramLong, new g());
    a(paramHashMap, ".mobi", paramLong, new g());
    a(paramHashMap, ".epub", paramLong, new g());
  }
  
  private static void g(HashMap<Long, com.estrongs.fs.h> paramHashMap, long paramLong)
  {
    long l = System.currentTimeMillis();
    Iterator localIterator = b().iterator();
    while (localIterator.hasNext()) {
      ((com.estrongs.android.pop.app.b.b.a)localIterator.next()).a(paramHashMap, paramLong);
    }
    l.b("EEE", "scan folders takes:" + (System.currentTimeMillis() - l) + "ms");
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.b.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */