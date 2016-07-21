package com.flurry.sdk;

import android.content.Context;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;

public class kv
{
  public static final Integer a = Integer.valueOf(50);
  private static final String d = kv.class.getSimpleName();
  String b;
  LinkedHashMap<String, List<String>> c;
  
  public kv(String paramString)
  {
    a(paramString);
  }
  
  private void a(String paramString1, List<String> paramList, String paramString2)
  {
    try
    {
      lt.b();
      kg.a(5, d, "Saving Index File for " + paramString1 + " file name:" + js.a().c().getFileStreamPath(g(paramString1)));
      paramString1 = new jz(js.a().c().getFileStreamPath(g(paramString1)), paramString2, 1, new kv.7(this));
      paramString2 = new ArrayList();
      paramList = paramList.iterator();
      while (paramList.hasNext()) {
        paramString2.add(new kw((String)paramList.next()));
      }
      paramString1.a(paramString2);
    }
    finally {}
  }
  
  private void a(String paramString, byte[] paramArrayOfByte)
  {
    try
    {
      lt.b();
      kg.a(5, d, "Saving Block File for " + paramString + " file name:" + js.a().c().getFileStreamPath(ku.a(paramString)));
      new jz(js.a().c().getFileStreamPath(ku.a(paramString)), ".yflurrydatasenderblock.", 1, new kv.6(this)).a(new ku(paramArrayOfByte));
      return;
    }
    finally
    {
      paramString = finally;
      throw paramString;
    }
  }
  
  private void c()
  {
    try
    {
      LinkedList localLinkedList = new LinkedList(c.keySet());
      b();
      if (!localLinkedList.isEmpty()) {
        a(b, localLinkedList, b);
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  private void e(String paramString)
  {
    c = new LinkedHashMap();
    Object localObject1 = new ArrayList();
    Object localObject2;
    if (j(paramString))
    {
      localObject2 = k(paramString);
      if ((localObject2 != null) && (((List)localObject2).size() > 0))
      {
        ((List)localObject1).addAll((Collection)localObject2);
        localObject2 = ((List)localObject1).iterator();
        while (((Iterator)localObject2).hasNext()) {
          f((String)((Iterator)localObject2).next());
        }
      }
      i(paramString);
    }
    for (;;)
    {
      paramString = ((List)localObject1).iterator();
      while (paramString.hasNext())
      {
        localObject1 = (String)paramString.next();
        localObject2 = h((String)localObject1);
        if (localObject2 != null)
        {
          c.put(localObject1, localObject2);
          continue;
          paramString = (List)new jz(js.a().c().getFileStreamPath(g(b)), paramString, 1, new kv.1(this)).a();
          if (paramString != null) {
            break label194;
          }
          kg.c(d, "New main file also not found. returning..");
        }
      }
      return;
      label194:
      paramString = paramString.iterator();
      while (paramString.hasNext()) {
        ((List)localObject1).add(((kw)paramString.next()).a());
      }
    }
  }
  
  private void f(String paramString)
  {
    List localList = k(paramString);
    if (localList == null) {
      kg.c(d, "No old file to replace");
    }
    do
    {
      return;
      Iterator localIterator = localList.iterator();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        byte[] arrayOfByte = m(str);
        if (arrayOfByte == null)
        {
          kg.a(6, d, "File does not exist");
        }
        else
        {
          a(str, arrayOfByte);
          l(str);
        }
      }
    } while (localList == null);
    a(paramString, localList, ".YFlurrySenderIndex.info.");
    i(paramString);
  }
  
  private String g(String paramString)
  {
    return ".YFlurrySenderIndex.info." + paramString;
  }
  
  private List<String> h(String paramString)
  {
    try
    {
      lt.b();
      kg.a(5, d, "Reading Index File for " + paramString + " file name:" + js.a().c().getFileStreamPath(g(paramString)));
      Object localObject = (List)new jz(js.a().c().getFileStreamPath(g(paramString)), ".YFlurrySenderIndex.info.", 1, new kv.5(this)).a();
      paramString = new ArrayList();
      localObject = ((List)localObject).iterator();
      while (((Iterator)localObject).hasNext()) {
        paramString.add(((kw)((Iterator)localObject).next()).a());
      }
    }
    finally {}
    return paramString;
  }
  
  private void i(String paramString)
  {
    lt.b();
    kg.a(5, d, "Deleting Index File for " + paramString + " file name:" + js.a().c().getFileStreamPath(new StringBuilder().append(".FlurrySenderIndex.info.").append(paramString).toString()));
    File localFile = js.a().c().getFileStreamPath(".FlurrySenderIndex.info." + paramString);
    if (localFile.exists())
    {
      boolean bool = localFile.delete();
      kg.a(5, d, "Found file for " + paramString + ". Deleted - " + bool);
    }
  }
  
  private boolean j(String paramString)
  {
    try
    {
      File localFile = js.a().c().getFileStreamPath(".FlurrySenderIndex.info." + paramString);
      kg.a(5, d, "isOldIndexFilePresent: for " + paramString + localFile.exists());
      boolean bool = localFile.exists();
      return bool;
    }
    finally
    {
      paramString = finally;
      throw paramString;
    }
  }
  
  /* Error */
  private List<String> k(String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 6
    //   3: aload_0
    //   4: monitorenter
    //   5: invokestatic 42	com/flurry/sdk/lt:b	()V
    //   8: iconst_5
    //   9: getstatic 22	com/flurry/sdk/kv:d	Ljava/lang/String;
    //   12: new 44	java/lang/StringBuilder
    //   15: dup
    //   16: invokespecial 45	java/lang/StringBuilder:<init>	()V
    //   19: ldc -34
    //   21: invokevirtual 51	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   24: aload_1
    //   25: invokevirtual 51	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   28: ldc 53
    //   30: invokevirtual 51	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   33: invokestatic 58	com/flurry/sdk/js:a	()Lcom/flurry/sdk/js;
    //   36: invokevirtual 61	com/flurry/sdk/js:c	()Landroid/content/Context;
    //   39: new 44	java/lang/StringBuilder
    //   42: dup
    //   43: invokespecial 45	java/lang/StringBuilder:<init>	()V
    //   46: ldc -26
    //   48: invokevirtual 51	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   51: aload_1
    //   52: invokevirtual 51	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   55: invokevirtual 77	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   58: invokevirtual 71	android/content/Context:getFileStreamPath	(Ljava/lang/String;)Ljava/io/File;
    //   61: invokevirtual 74	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   64: invokevirtual 77	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   67: invokestatic 82	com/flurry/sdk/kg:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   70: invokestatic 58	com/flurry/sdk/js:a	()Lcom/flurry/sdk/js;
    //   73: invokevirtual 61	com/flurry/sdk/js:c	()Landroid/content/Context;
    //   76: new 44	java/lang/StringBuilder
    //   79: dup
    //   80: invokespecial 45	java/lang/StringBuilder:<init>	()V
    //   83: ldc -26
    //   85: invokevirtual 51	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   88: aload_1
    //   89: invokevirtual 51	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   92: invokevirtual 77	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   95: invokevirtual 71	android/content/Context:getFileStreamPath	(Ljava/lang/String;)Ljava/io/File;
    //   98: astore 5
    //   100: aload 5
    //   102: invokevirtual 235	java/io/File:exists	()Z
    //   105: ifeq +269 -> 374
    //   108: iconst_5
    //   109: getstatic 22	com/flurry/sdk/kv:d	Ljava/lang/String;
    //   112: new 44	java/lang/StringBuilder
    //   115: dup
    //   116: invokespecial 45	java/lang/StringBuilder:<init>	()V
    //   119: ldc -34
    //   121: invokevirtual 51	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   124: aload_1
    //   125: invokevirtual 51	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   128: ldc -5
    //   130: invokevirtual 51	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   133: invokevirtual 77	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   136: invokestatic 82	com/flurry/sdk/kg:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   139: new 253	java/io/DataInputStream
    //   142: dup
    //   143: new 255	java/io/FileInputStream
    //   146: dup
    //   147: aload 5
    //   149: invokespecial 258	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   152: invokespecial 261	java/io/DataInputStream:<init>	(Ljava/io/InputStream;)V
    //   155: astore 7
    //   157: aload 7
    //   159: astore 5
    //   161: aload 7
    //   163: invokevirtual 264	java/io/DataInputStream:readUnsignedShort	()I
    //   166: istore_3
    //   167: iload_3
    //   168: ifne +15 -> 183
    //   171: aload 7
    //   173: invokestatic 267	com/flurry/sdk/lt:a	(Ljava/io/Closeable;)V
    //   176: aload 6
    //   178: astore_1
    //   179: aload_0
    //   180: monitorexit
    //   181: aload_1
    //   182: areturn
    //   183: aload 7
    //   185: astore 5
    //   187: new 94	java/util/ArrayList
    //   190: dup
    //   191: iload_3
    //   192: invokespecial 270	java/util/ArrayList:<init>	(I)V
    //   195: astore_1
    //   196: iconst_0
    //   197: istore_2
    //   198: iload_2
    //   199: iload_3
    //   200: if_icmpge +104 -> 304
    //   203: aload 7
    //   205: astore 5
    //   207: aload 7
    //   209: invokevirtual 264	java/io/DataInputStream:readUnsignedShort	()I
    //   212: istore 4
    //   214: aload 7
    //   216: astore 5
    //   218: iconst_4
    //   219: getstatic 22	com/flurry/sdk/kv:d	Ljava/lang/String;
    //   222: new 44	java/lang/StringBuilder
    //   225: dup
    //   226: invokespecial 45	java/lang/StringBuilder:<init>	()V
    //   229: ldc_w 272
    //   232: invokevirtual 51	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   235: iload_2
    //   236: invokevirtual 275	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   239: ldc_w 277
    //   242: invokevirtual 51	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   245: iload 4
    //   247: invokevirtual 275	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   250: invokevirtual 77	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   253: invokestatic 82	com/flurry/sdk/kg:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   256: aload 7
    //   258: astore 5
    //   260: iload 4
    //   262: newarray <illegal type>
    //   264: astore 6
    //   266: aload 7
    //   268: astore 5
    //   270: aload 7
    //   272: aload 6
    //   274: invokevirtual 280	java/io/DataInputStream:readFully	([B)V
    //   277: aload 7
    //   279: astore 5
    //   281: aload_1
    //   282: new 115	java/lang/String
    //   285: dup
    //   286: aload 6
    //   288: invokespecial 281	java/lang/String:<init>	([B)V
    //   291: invokeinterface 121 2 0
    //   296: pop
    //   297: iload_2
    //   298: iconst_1
    //   299: iadd
    //   300: istore_2
    //   301: goto -103 -> 198
    //   304: aload 7
    //   306: astore 5
    //   308: aload 7
    //   310: invokevirtual 264	java/io/DataInputStream:readUnsignedShort	()I
    //   313: istore_2
    //   314: iload_2
    //   315: ifne +3 -> 318
    //   318: aload 7
    //   320: invokestatic 267	com/flurry/sdk/lt:a	(Ljava/io/Closeable;)V
    //   323: goto -144 -> 179
    //   326: astore 6
    //   328: aconst_null
    //   329: astore 7
    //   331: aconst_null
    //   332: astore_1
    //   333: aload 7
    //   335: astore 5
    //   337: bipush 6
    //   339: getstatic 22	com/flurry/sdk/kv:d	Ljava/lang/String;
    //   342: ldc_w 283
    //   345: aload 6
    //   347: invokestatic 286	com/flurry/sdk/kg:a	(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   350: aload 7
    //   352: invokestatic 267	com/flurry/sdk/lt:a	(Ljava/io/Closeable;)V
    //   355: goto -32 -> 323
    //   358: astore_1
    //   359: aload_0
    //   360: monitorexit
    //   361: aload_1
    //   362: athrow
    //   363: astore_1
    //   364: aconst_null
    //   365: astore 5
    //   367: aload 5
    //   369: invokestatic 267	com/flurry/sdk/lt:a	(Ljava/io/Closeable;)V
    //   372: aload_1
    //   373: athrow
    //   374: iconst_5
    //   375: getstatic 22	com/flurry/sdk/kv:d	Ljava/lang/String;
    //   378: ldc_w 288
    //   381: invokestatic 82	com/flurry/sdk/kg:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   384: aconst_null
    //   385: astore_1
    //   386: goto -63 -> 323
    //   389: astore_1
    //   390: goto -23 -> 367
    //   393: astore 6
    //   395: aconst_null
    //   396: astore_1
    //   397: goto -64 -> 333
    //   400: astore 6
    //   402: goto -69 -> 333
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	405	0	this	kv
    //   0	405	1	paramString	String
    //   197	118	2	i	int
    //   166	35	3	j	int
    //   212	49	4	k	int
    //   98	270	5	localObject	Object
    //   1	286	6	arrayOfByte	byte[]
    //   326	20	6	localThrowable1	Throwable
    //   393	1	6	localThrowable2	Throwable
    //   400	1	6	localThrowable3	Throwable
    //   155	196	7	localDataInputStream	java.io.DataInputStream
    // Exception table:
    //   from	to	target	type
    //   139	157	326	java/lang/Throwable
    //   5	139	358	finally
    //   171	176	358	finally
    //   318	323	358	finally
    //   350	355	358	finally
    //   367	374	358	finally
    //   374	384	358	finally
    //   139	157	363	finally
    //   161	167	389	finally
    //   187	196	389	finally
    //   207	214	389	finally
    //   218	256	389	finally
    //   260	266	389	finally
    //   270	277	389	finally
    //   281	297	389	finally
    //   308	314	389	finally
    //   337	350	389	finally
    //   161	167	393	java/lang/Throwable
    //   187	196	393	java/lang/Throwable
    //   207	214	400	java/lang/Throwable
    //   218	256	400	java/lang/Throwable
    //   260	266	400	java/lang/Throwable
    //   270	277	400	java/lang/Throwable
    //   281	297	400	java/lang/Throwable
    //   308	314	400	java/lang/Throwable
  }
  
  private void l(String paramString)
  {
    lt.b();
    kg.a(5, d, "Deleting  block File for " + paramString + " file name:" + js.a().c().getFileStreamPath(new StringBuilder().append(".flurrydatasenderblock.").append(paramString).toString()));
    File localFile = js.a().c().getFileStreamPath(".flurrydatasenderblock." + paramString);
    if (localFile.exists())
    {
      boolean bool = localFile.delete();
      kg.a(5, d, "Found file for " + paramString + ". Deleted - " + bool);
    }
  }
  
  /* Error */
  private byte[] m(String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 6
    //   3: aconst_null
    //   4: astore 5
    //   6: invokestatic 42	com/flurry/sdk/lt:b	()V
    //   9: iconst_5
    //   10: getstatic 22	com/flurry/sdk/kv:d	Ljava/lang/String;
    //   13: new 44	java/lang/StringBuilder
    //   16: dup
    //   17: invokespecial 45	java/lang/StringBuilder:<init>	()V
    //   20: ldc_w 294
    //   23: invokevirtual 51	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   26: aload_1
    //   27: invokevirtual 51	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   30: ldc 53
    //   32: invokevirtual 51	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   35: invokestatic 58	com/flurry/sdk/js:a	()Lcom/flurry/sdk/js;
    //   38: invokevirtual 61	com/flurry/sdk/js:c	()Landroid/content/Context;
    //   41: new 44	java/lang/StringBuilder
    //   44: dup
    //   45: invokespecial 45	java/lang/StringBuilder:<init>	()V
    //   48: ldc_w 292
    //   51: invokevirtual 51	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   54: aload_1
    //   55: invokevirtual 51	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   58: invokevirtual 77	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   61: invokevirtual 71	android/content/Context:getFileStreamPath	(Ljava/lang/String;)Ljava/io/File;
    //   64: invokevirtual 74	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   67: invokevirtual 77	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   70: invokestatic 82	com/flurry/sdk/kg:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   73: invokestatic 58	com/flurry/sdk/js:a	()Lcom/flurry/sdk/js;
    //   76: invokevirtual 61	com/flurry/sdk/js:c	()Landroid/content/Context;
    //   79: new 44	java/lang/StringBuilder
    //   82: dup
    //   83: invokespecial 45	java/lang/StringBuilder:<init>	()V
    //   86: ldc_w 292
    //   89: invokevirtual 51	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   92: aload_1
    //   93: invokevirtual 51	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   96: invokevirtual 77	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   99: invokevirtual 71	android/content/Context:getFileStreamPath	(Ljava/lang/String;)Ljava/io/File;
    //   102: astore_3
    //   103: aload_3
    //   104: invokevirtual 235	java/io/File:exists	()Z
    //   107: ifeq +161 -> 268
    //   110: iconst_5
    //   111: getstatic 22	com/flurry/sdk/kv:d	Ljava/lang/String;
    //   114: new 44	java/lang/StringBuilder
    //   117: dup
    //   118: invokespecial 45	java/lang/StringBuilder:<init>	()V
    //   121: ldc -34
    //   123: invokevirtual 51	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   126: aload_1
    //   127: invokevirtual 51	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   130: ldc -5
    //   132: invokevirtual 51	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   135: invokevirtual 77	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   138: invokestatic 82	com/flurry/sdk/kg:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   141: new 253	java/io/DataInputStream
    //   144: dup
    //   145: new 255	java/io/FileInputStream
    //   148: dup
    //   149: aload_3
    //   150: invokespecial 258	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   153: invokespecial 261	java/io/DataInputStream:<init>	(Ljava/io/InputStream;)V
    //   156: astore 4
    //   158: aload 4
    //   160: astore_1
    //   161: aload 6
    //   163: astore_3
    //   164: aload 4
    //   166: invokevirtual 264	java/io/DataInputStream:readUnsignedShort	()I
    //   169: istore_2
    //   170: iload_2
    //   171: ifne +10 -> 181
    //   174: aload 4
    //   176: invokestatic 267	com/flurry/sdk/lt:a	(Ljava/io/Closeable;)V
    //   179: aconst_null
    //   180: areturn
    //   181: aload 4
    //   183: astore_1
    //   184: aload 6
    //   186: astore_3
    //   187: iload_2
    //   188: newarray <illegal type>
    //   190: astore 5
    //   192: aload 4
    //   194: astore_1
    //   195: aload 5
    //   197: astore_3
    //   198: aload 4
    //   200: aload 5
    //   202: invokevirtual 280	java/io/DataInputStream:readFully	([B)V
    //   205: aload 4
    //   207: astore_1
    //   208: aload 5
    //   210: astore_3
    //   211: aload 4
    //   213: invokevirtual 264	java/io/DataInputStream:readUnsignedShort	()I
    //   216: istore_2
    //   217: iload_2
    //   218: ifne +3 -> 221
    //   221: aload 4
    //   223: invokestatic 267	com/flurry/sdk/lt:a	(Ljava/io/Closeable;)V
    //   226: aload 5
    //   228: areturn
    //   229: astore 6
    //   231: aconst_null
    //   232: astore_3
    //   233: aload_3
    //   234: astore_1
    //   235: bipush 6
    //   237: getstatic 22	com/flurry/sdk/kv:d	Ljava/lang/String;
    //   240: ldc_w 283
    //   243: aload 6
    //   245: invokestatic 286	com/flurry/sdk/kg:a	(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   248: aload_3
    //   249: invokestatic 267	com/flurry/sdk/lt:a	(Ljava/io/Closeable;)V
    //   252: aload 5
    //   254: areturn
    //   255: astore_1
    //   256: aconst_null
    //   257: astore 4
    //   259: aload_1
    //   260: astore_3
    //   261: aload 4
    //   263: invokestatic 267	com/flurry/sdk/lt:a	(Ljava/io/Closeable;)V
    //   266: aload_3
    //   267: athrow
    //   268: iconst_4
    //   269: getstatic 22	com/flurry/sdk/kv:d	Ljava/lang/String;
    //   272: ldc_w 288
    //   275: invokestatic 82	com/flurry/sdk/kg:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   278: aconst_null
    //   279: areturn
    //   280: astore_3
    //   281: aload_1
    //   282: astore 4
    //   284: goto -23 -> 261
    //   287: astore 6
    //   289: aload_3
    //   290: astore 5
    //   292: aload 4
    //   294: astore_3
    //   295: goto -62 -> 233
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	298	0	this	kv
    //   0	298	1	paramString	String
    //   169	49	2	i	int
    //   102	165	3	localObject1	Object
    //   280	10	3	localObject2	Object
    //   294	1	3	localObject3	Object
    //   156	137	4	localObject4	Object
    //   4	287	5	localObject5	Object
    //   1	184	6	localObject6	Object
    //   229	15	6	localThrowable1	Throwable
    //   287	1	6	localThrowable2	Throwable
    // Exception table:
    //   from	to	target	type
    //   141	158	229	java/lang/Throwable
    //   141	158	255	finally
    //   164	170	280	finally
    //   187	192	280	finally
    //   198	205	280	finally
    //   211	217	280	finally
    //   235	248	280	finally
    //   164	170	287	java/lang/Throwable
    //   187	192	287	java/lang/Throwable
    //   198	205	287	java/lang/Throwable
    //   211	217	287	java/lang/Throwable
  }
  
  public List<String> a()
  {
    return new ArrayList(c.keySet());
  }
  
  public void a(ku paramku, String paramString)
  {
    int i = 0;
    for (;;)
    {
      try
      {
        kg.a(4, d, "addBlockInfo" + paramString);
        String str = paramku.a();
        paramku = (List)c.get(paramString);
        if (paramku == null)
        {
          kg.a(4, d, "New Data Key");
          paramku = new LinkedList();
          i = 1;
          paramku.add(str);
          if (paramku.size() > a.intValue())
          {
            b((String)paramku.get(0));
            paramku.remove(0);
          }
          c.put(paramString, paramku);
          a(paramString, paramku, ".YFlurrySenderIndex.info.");
          if (i != 0) {
            c();
          }
          return;
        }
      }
      finally {}
    }
  }
  
  void a(String paramString)
  {
    b = (paramString + "Main");
    e(b);
  }
  
  public boolean a(String paramString1, String paramString2)
  {
    List localList = (List)c.get(paramString2);
    boolean bool = false;
    if (localList != null)
    {
      b(paramString1);
      bool = localList.remove(paramString1);
    }
    if ((localList != null) && (!localList.isEmpty()))
    {
      c.put(paramString2, localList);
      a(paramString2, localList, ".YFlurrySenderIndex.info.");
      return bool;
    }
    d(paramString2);
    return bool;
  }
  
  void b()
  {
    new jz(js.a().c().getFileStreamPath(g(b)), ".YFlurrySenderIndex.info.", 1, new kv.4(this)).b();
  }
  
  boolean b(String paramString)
  {
    return new jz(js.a().c().getFileStreamPath(ku.a(paramString)), ".yflurrydatasenderblock.", 1, new kv.2(this)).b();
  }
  
  public List<String> c(String paramString)
  {
    return (List)c.get(paramString);
  }
  
  public boolean d(String paramString)
  {
    jz localjz;
    try
    {
      lt.b();
      localjz = new jz(js.a().c().getFileStreamPath(g(paramString)), ".YFlurrySenderIndex.info.", 1, new kv.3(this));
      Object localObject = c(paramString);
      if (localObject != null)
      {
        kg.a(4, d, "discardOutdatedBlocksForDataKey: notSentBlocks = " + ((List)localObject).size());
        localObject = ((List)localObject).iterator();
        while (((Iterator)localObject).hasNext())
        {
          String str = (String)((Iterator)localObject).next();
          b(str);
          kg.a(4, d, "discardOutdatedBlocksForDataKey: removed block = " + str);
        }
      }
      c.remove(paramString);
    }
    finally {}
    boolean bool = localjz.b();
    c();
    return bool;
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.kv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */