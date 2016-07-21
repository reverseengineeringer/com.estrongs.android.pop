package com.estrongs.android.scanner;

import android.text.TextUtils;
import com.estrongs.android.cleaner.j;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.a;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;

public final class ae
{
  private final Set<String> a = new HashSet();
  private final Set<String> b = new HashSet();
  private final Set<String> c = new HashSet();
  private AtomicBoolean d = new AtomicBoolean(false);
  
  /* Error */
  private final void a(android.content.Context paramContext)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 6
    //   3: aload_0
    //   4: getfield 20	com/estrongs/android/scanner/ae:c	Ljava/util/Set;
    //   7: astore_3
    //   8: invokestatic 42	com/estrongs/android/cleaner/j:d	()Ljava/util/List;
    //   11: astore 7
    //   13: aload_1
    //   14: invokevirtual 48	android/content/Context:getResources	()Landroid/content/res/Resources;
    //   17: invokevirtual 54	android/content/res/Resources:getAssets	()Landroid/content/res/AssetManager;
    //   20: ldc 56
    //   22: invokevirtual 62	android/content/res/AssetManager:open	(Ljava/lang/String;)Ljava/io/InputStream;
    //   25: astore_1
    //   26: new 64	java/io/InputStreamReader
    //   29: dup
    //   30: aload_1
    //   31: invokespecial 67	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   34: astore 5
    //   36: new 69	java/io/BufferedReader
    //   39: dup
    //   40: aload 5
    //   42: invokespecial 72	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   45: astore 4
    //   47: iconst_0
    //   48: istore_2
    //   49: aload 4
    //   51: invokevirtual 76	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   54: astore 6
    //   56: aload 6
    //   58: ifnull +234 -> 292
    //   61: aload 6
    //   63: ldc 78
    //   65: invokevirtual 84	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   68: ifeq +13 -> 81
    //   71: aload_0
    //   72: getfield 20	com/estrongs/android/scanner/ae:c	Ljava/util/Set;
    //   75: astore_3
    //   76: iconst_1
    //   77: istore_2
    //   78: goto -29 -> 49
    //   81: aload 6
    //   83: ldc 86
    //   85: invokevirtual 84	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   88: ifeq +13 -> 101
    //   91: aload_0
    //   92: getfield 24	com/estrongs/android/scanner/ae:b	Ljava/util/Set;
    //   95: astore_3
    //   96: iconst_0
    //   97: istore_2
    //   98: goto -49 -> 49
    //   101: aload 6
    //   103: ldc 88
    //   105: invokevirtual 84	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   108: ifeq +13 -> 121
    //   111: aload_0
    //   112: getfield 22	com/estrongs/android/scanner/ae:a	Ljava/util/Set;
    //   115: astore_3
    //   116: iconst_0
    //   117: istore_2
    //   118: goto -69 -> 49
    //   121: aload 6
    //   123: invokevirtual 91	java/lang/String:trim	()Ljava/lang/String;
    //   126: astore 6
    //   128: aload 6
    //   130: invokevirtual 95	java/lang/String:isEmpty	()Z
    //   133: ifne -84 -> 49
    //   136: iload_2
    //   137: ifeq +126 -> 263
    //   140: aload 6
    //   142: ldc 97
    //   144: invokevirtual 101	java/lang/String:endsWith	(Ljava/lang/String;)Z
    //   147: ifne +269 -> 416
    //   150: new 103	java/lang/StringBuilder
    //   153: dup
    //   154: invokespecial 104	java/lang/StringBuilder:<init>	()V
    //   157: aload 6
    //   159: invokevirtual 108	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   162: bipush 47
    //   164: invokevirtual 111	java/lang/StringBuilder:append	(C)Ljava/lang/StringBuilder;
    //   167: invokevirtual 114	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   170: astore 6
    //   172: aload 7
    //   174: invokeinterface 120 1 0
    //   179: astore 8
    //   181: aload 8
    //   183: invokeinterface 125 1 0
    //   188: ifeq -139 -> 49
    //   191: aload 8
    //   193: invokeinterface 129 1 0
    //   198: checkcast 80	java/lang/String
    //   201: astore 9
    //   203: aload_3
    //   204: new 103	java/lang/StringBuilder
    //   207: dup
    //   208: invokespecial 104	java/lang/StringBuilder:<init>	()V
    //   211: aload 9
    //   213: invokevirtual 108	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   216: aload 6
    //   218: invokevirtual 108	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   221: invokevirtual 114	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   224: invokeinterface 134 2 0
    //   229: pop
    //   230: goto -49 -> 181
    //   233: astore 6
    //   235: aload_1
    //   236: astore_3
    //   237: aload 4
    //   239: astore_1
    //   240: aload 6
    //   242: astore 4
    //   244: aload 4
    //   246: invokevirtual 137	java/lang/Exception:printStackTrace	()V
    //   249: aload_3
    //   250: invokevirtual 142	java/io/InputStream:close	()V
    //   253: aload 5
    //   255: invokevirtual 143	java/io/InputStreamReader:close	()V
    //   258: aload_1
    //   259: invokevirtual 144	java/io/BufferedReader:close	()V
    //   262: return
    //   263: aload_3
    //   264: aload 6
    //   266: invokeinterface 134 2 0
    //   271: pop
    //   272: goto -223 -> 49
    //   275: astore_3
    //   276: aload_1
    //   277: invokevirtual 142	java/io/InputStream:close	()V
    //   280: aload 5
    //   282: invokevirtual 143	java/io/InputStreamReader:close	()V
    //   285: aload 4
    //   287: invokevirtual 144	java/io/BufferedReader:close	()V
    //   290: aload_3
    //   291: athrow
    //   292: aload_1
    //   293: invokevirtual 142	java/io/InputStream:close	()V
    //   296: aload 5
    //   298: invokevirtual 143	java/io/InputStreamReader:close	()V
    //   301: aload 4
    //   303: invokevirtual 144	java/io/BufferedReader:close	()V
    //   306: return
    //   307: astore_1
    //   308: aload_1
    //   309: invokevirtual 145	java/io/IOException:printStackTrace	()V
    //   312: return
    //   313: astore_1
    //   314: aload_1
    //   315: invokevirtual 145	java/io/IOException:printStackTrace	()V
    //   318: return
    //   319: astore_1
    //   320: aload_1
    //   321: invokevirtual 145	java/io/IOException:printStackTrace	()V
    //   324: goto -34 -> 290
    //   327: astore_3
    //   328: aconst_null
    //   329: astore 4
    //   331: aconst_null
    //   332: astore 5
    //   334: aconst_null
    //   335: astore_1
    //   336: goto -60 -> 276
    //   339: astore_3
    //   340: aconst_null
    //   341: astore 4
    //   343: aconst_null
    //   344: astore 5
    //   346: goto -70 -> 276
    //   349: astore_3
    //   350: aconst_null
    //   351: astore 4
    //   353: goto -77 -> 276
    //   356: astore 4
    //   358: aload_3
    //   359: astore 6
    //   361: aload 4
    //   363: astore_3
    //   364: aload_1
    //   365: astore 4
    //   367: aload 6
    //   369: astore_1
    //   370: goto -94 -> 276
    //   373: astore 4
    //   375: aconst_null
    //   376: astore_1
    //   377: aconst_null
    //   378: astore_3
    //   379: aload 6
    //   381: astore 5
    //   383: goto -139 -> 244
    //   386: astore 4
    //   388: aconst_null
    //   389: astore 5
    //   391: aload_1
    //   392: astore_3
    //   393: aload 5
    //   395: astore_1
    //   396: aload 6
    //   398: astore 5
    //   400: goto -156 -> 244
    //   403: astore 4
    //   405: aconst_null
    //   406: astore 6
    //   408: aload_1
    //   409: astore_3
    //   410: aload 6
    //   412: astore_1
    //   413: goto -169 -> 244
    //   416: goto -244 -> 172
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	419	0	this	ae
    //   0	419	1	paramContext	android.content.Context
    //   48	89	2	i	int
    //   7	257	3	localObject1	Object
    //   275	16	3	localObject2	Object
    //   327	1	3	localObject3	Object
    //   339	1	3	localObject4	Object
    //   349	10	3	localObject5	Object
    //   363	47	3	localObject6	Object
    //   45	307	4	localObject7	Object
    //   356	6	4	localObject8	Object
    //   365	1	4	localContext	android.content.Context
    //   373	1	4	localException1	Exception
    //   386	1	4	localException2	Exception
    //   403	1	4	localException3	Exception
    //   34	365	5	localObject9	Object
    //   1	216	6	str1	String
    //   233	32	6	localException4	Exception
    //   359	52	6	localObject10	Object
    //   11	162	7	localList	List
    //   179	13	8	localIterator	Iterator
    //   201	11	9	str2	String
    // Exception table:
    //   from	to	target	type
    //   49	56	233	java/lang/Exception
    //   61	76	233	java/lang/Exception
    //   81	96	233	java/lang/Exception
    //   101	116	233	java/lang/Exception
    //   121	136	233	java/lang/Exception
    //   140	172	233	java/lang/Exception
    //   172	181	233	java/lang/Exception
    //   181	230	233	java/lang/Exception
    //   263	272	233	java/lang/Exception
    //   49	56	275	finally
    //   61	76	275	finally
    //   81	96	275	finally
    //   101	116	275	finally
    //   121	136	275	finally
    //   140	172	275	finally
    //   172	181	275	finally
    //   181	230	275	finally
    //   263	272	275	finally
    //   292	306	307	java/io/IOException
    //   249	262	313	java/io/IOException
    //   276	290	319	java/io/IOException
    //   13	26	327	finally
    //   26	36	339	finally
    //   36	47	349	finally
    //   244	249	356	finally
    //   13	26	373	java/lang/Exception
    //   26	36	386	java/lang/Exception
    //   36	47	403	java/lang/Exception
  }
  
  public void a()
  {
    if (d.compareAndSet(false, true))
    {
      Iterator localIterator = j.d().iterator();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        c.add(str + "/.estrongs" + '/');
      }
      c.add(a.b + '/');
      a(FexApplication.a());
    }
  }
  
  public boolean a(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {}
    while (c.contains(paramString)) {
      return true;
    }
    return false;
  }
  
  public boolean b()
  {
    return d.get();
  }
  
  public boolean b(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {}
    while (!a.contains(paramString)) {
      return false;
    }
    return true;
  }
  
  public boolean c(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {}
    do
    {
      return true;
      paramString = paramString.toLowerCase();
    } while (b.contains(paramString));
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.scanner.ae
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */