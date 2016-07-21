package com.flurry.sdk;

import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.PrintStream;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class ai
  implements Closeable
{
  static final Pattern a = Pattern.compile("[a-z0-9_-]{1,64}");
  private static final OutputStream p = new ai.2();
  final ThreadPoolExecutor b = new ThreadPoolExecutor(0, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue());
  private final File c;
  private final File d;
  private final File e;
  private final File f;
  private final int g;
  private long h;
  private final int i;
  private long j = 0L;
  private Writer k;
  private final LinkedHashMap<String, ai.b> l = new LinkedHashMap(0, 0.75F, true);
  private int m;
  private long n = 0L;
  private final Callable<Void> o = new ai.1(this);
  
  private ai(File paramFile, int paramInt1, int paramInt2, long paramLong)
  {
    c = paramFile;
    g = paramInt1;
    d = new File(paramFile, "journal");
    e = new File(paramFile, "journal.tmp");
    f = new File(paramFile, "journal.bkp");
    i = paramInt2;
    h = paramLong;
  }
  
  private ai.a a(String paramString, long paramLong)
  {
    for (;;)
    {
      ai.a locala;
      try
      {
        g();
        e(paramString);
        ai.b localb = (ai.b)l.get(paramString);
        if (paramLong != -1L) {
          if (localb != null)
          {
            long l1 = ai.b.e(localb);
            if (l1 == paramLong) {}
          }
          else
          {
            paramString = null;
            return paramString;
          }
        }
        if (localb == null)
        {
          localb = new ai.b(this, paramString, null);
          l.put(paramString, localb);
          locala = new ai.a(this, localb, null);
          ai.b.a(localb, locala);
          k.write("DIRTY " + paramString + '\n');
          k.flush();
          paramString = locala;
          continue;
        }
        locala = ai.b.a(localb);
      }
      finally {}
      if (locala != null) {
        paramString = null;
      }
    }
  }
  
  public static ai a(File paramFile, int paramInt1, int paramInt2, long paramLong)
  {
    if (paramLong <= 0L) {
      throw new IllegalArgumentException("maxSize <= 0");
    }
    if (paramInt2 <= 0) {
      throw new IllegalArgumentException("valueCount <= 0");
    }
    Object localObject = new File(paramFile, "journal.bkp");
    File localFile;
    if (((File)localObject).exists())
    {
      localFile = new File(paramFile, "journal");
      if (!localFile.exists()) {
        break label148;
      }
      ((File)localObject).delete();
    }
    for (;;)
    {
      localObject = new ai(paramFile, paramInt1, paramInt2, paramLong);
      if (!d.exists()) {
        break label209;
      }
      try
      {
        ((ai)localObject).c();
        ((ai)localObject).d();
        k = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(d, true), ak.a));
        return (ai)localObject;
      }
      catch (IOException localIOException)
      {
        label148:
        System.out.println("DiskLruCache " + paramFile + " is corrupt: " + localIOException.getMessage() + ", removing");
        ((ai)localObject).a();
      }
      a((File)localObject, localFile, false);
    }
    label209:
    paramFile.mkdirs();
    paramFile = new ai(paramFile, paramInt1, paramInt2, paramLong);
    paramFile.e();
    return paramFile;
  }
  
  private void a(ai.a parama, boolean paramBoolean)
  {
    int i3 = 0;
    ai.b localb;
    try
    {
      localb = ai.a.a(parama);
      if (ai.b.a(localb) != parama) {
        throw new IllegalStateException();
      }
    }
    finally {}
    int i2 = i3;
    if (paramBoolean)
    {
      i2 = i3;
      if (!ai.b.d(localb))
      {
        int i1 = 0;
        for (;;)
        {
          i2 = i3;
          if (i1 >= i) {
            break;
          }
          if (ai.a.b(parama)[i1] == 0)
          {
            parama.b();
            throw new IllegalStateException("Newly created entry didn't create value for index " + i1);
          }
          if (!localb.b(i1).exists())
          {
            parama.b();
            return;
          }
          i1 += 1;
        }
      }
    }
    for (;;)
    {
      long l1;
      if (i2 < i)
      {
        parama = localb.b(i2);
        if (paramBoolean)
        {
          if (parama.exists())
          {
            File localFile = localb.a(i2);
            parama.renameTo(localFile);
            l1 = ai.b.b(localb)[i2];
            long l2 = localFile.length();
            ai.b.b(localb)[i2] = l2;
            j = (j - l1 + l2);
          }
        }
        else {
          a(parama);
        }
      }
      else
      {
        m += 1;
        ai.b.a(localb, null);
        if ((ai.b.d(localb) | paramBoolean))
        {
          ai.b.a(localb, true);
          k.write("CLEAN " + ai.b.c(localb) + localb.a() + '\n');
          if (paramBoolean)
          {
            l1 = n;
            n = (1L + l1);
            ai.b.a(localb, l1);
          }
        }
        for (;;)
        {
          k.flush();
          if ((j <= h) && (!f())) {
            break;
          }
          b.submit(o);
          break;
          l.remove(ai.b.c(localb));
          k.write("REMOVE " + ai.b.c(localb) + '\n');
        }
      }
      i2 += 1;
    }
  }
  
  private static void a(File paramFile)
  {
    if ((paramFile.exists()) && (!paramFile.delete())) {
      throw new IOException();
    }
  }
  
  private static void a(File paramFile1, File paramFile2, boolean paramBoolean)
  {
    if (paramBoolean) {
      a(paramFile2);
    }
    if (!paramFile1.renameTo(paramFile2)) {
      throw new IOException();
    }
  }
  
  private void c()
  {
    aj localaj = new aj(new FileInputStream(d), ak.a);
    int i1;
    try
    {
      String str1 = localaj.a();
      String str2 = localaj.a();
      String str3 = localaj.a();
      String str4 = localaj.a();
      String str5 = localaj.a();
      if ((!"libcore.io.DiskLruCache".equals(str1)) || (!"1".equals(str2)) || (!Integer.toString(g).equals(str3)) || (!Integer.toString(i).equals(str4)) || (!"".equals(str5))) {
        throw new IOException("unexpected journal header: [" + str1 + ", " + str2 + ", " + str4 + ", " + str5 + "]");
      }
    }
    finally
    {
      ak.a(localaj);
      throw ((Throwable)localObject);
    }
  }
  
  private void d()
  {
    a(e);
    Iterator localIterator = l.values().iterator();
    while (localIterator.hasNext())
    {
      ai.b localb = (ai.b)localIterator.next();
      int i1;
      if (ai.b.a(localb) == null)
      {
        i1 = 0;
        while (i1 < i)
        {
          j += ai.b.b(localb)[i1];
          i1 += 1;
        }
      }
      else
      {
        ai.b.a(localb, null);
        i1 = 0;
        while (i1 < i)
        {
          a(localb.a(i1));
          a(localb.b(i1));
          i1 += 1;
        }
        localIterator.remove();
      }
    }
  }
  
  private void d(String paramString)
  {
    int i1 = paramString.indexOf(' ');
    if (i1 == -1) {
      throw new IOException("unexpected journal line: " + paramString);
    }
    int i2 = i1 + 1;
    int i3 = paramString.indexOf(' ', i2);
    String str;
    if (i3 == -1)
    {
      str = paramString.substring(i2);
      if ((i1 == "REMOVE".length()) && (paramString.startsWith("REMOVE"))) {
        l.remove(str);
      }
    }
    else
    {
      str = paramString.substring(i2, i3);
    }
    for (;;)
    {
      ai.b localb2 = (ai.b)l.get(str);
      ai.b localb1 = localb2;
      if (localb2 == null)
      {
        localb1 = new ai.b(this, str, null);
        l.put(str, localb1);
      }
      if ((i3 != -1) && (i1 == "CLEAN".length()) && (paramString.startsWith("CLEAN")))
      {
        paramString = paramString.substring(i3 + 1).split(" ");
        ai.b.a(localb1, true);
        ai.b.a(localb1, null);
        ai.b.a(localb1, paramString);
        return;
      }
      if ((i3 == -1) && (i1 == "DIRTY".length()) && (paramString.startsWith("DIRTY")))
      {
        ai.b.a(localb1, new ai.a(this, localb1, null));
        return;
      }
      if ((i3 == -1) && (i1 == "READ".length()) && (paramString.startsWith("READ"))) {
        break;
      }
      throw new IOException("unexpected journal line: " + paramString);
    }
  }
  
  private void e()
  {
    for (;;)
    {
      try
      {
        if (k != null) {
          k.close();
        }
        BufferedWriter localBufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(e), ak.a));
        ai.b localb;
        try
        {
          localBufferedWriter.write("libcore.io.DiskLruCache");
          localBufferedWriter.write("\n");
          localBufferedWriter.write("1");
          localBufferedWriter.write("\n");
          localBufferedWriter.write(Integer.toString(g));
          localBufferedWriter.write("\n");
          localBufferedWriter.write(Integer.toString(i));
          localBufferedWriter.write("\n");
          localBufferedWriter.write("\n");
          Iterator localIterator = l.values().iterator();
          if (!localIterator.hasNext()) {
            break;
          }
          localb = (ai.b)localIterator.next();
          if (ai.b.a(localb) != null)
          {
            localBufferedWriter.write("DIRTY " + ai.b.c(localb) + '\n');
            continue;
            localObject1 = finally;
          }
        }
        finally
        {
          localBufferedWriter.close();
        }
        ((Writer)localObject1).write("CLEAN " + ai.b.c(localb) + localb.a() + '\n');
      }
      finally {}
    }
    ((Writer)localObject1).close();
    if (d.exists()) {
      a(d, f, true);
    }
    a(e, d, false);
    f.delete();
    k = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(d, true), ak.a));
  }
  
  private void e(String paramString)
  {
    if (!a.matcher(paramString).matches()) {
      throw new IllegalArgumentException("keys must match regex [a-z0-9_-]{1,64}: \"" + paramString + "\"");
    }
  }
  
  private boolean f()
  {
    return (m >= 2000) && (m >= l.size());
  }
  
  private void g()
  {
    if (k == null) {
      throw new IllegalStateException("cache is closed");
    }
  }
  
  private void h()
  {
    while (j > h) {
      c((String)((Map.Entry)l.entrySet().iterator().next()).getKey());
    }
  }
  
  /* Error */
  public ai.c a(String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: aload_0
    //   4: monitorenter
    //   5: aload_0
    //   6: invokespecial 123	com/flurry/sdk/ai:g	()V
    //   9: aload_0
    //   10: aload_1
    //   11: invokespecial 126	com/flurry/sdk/ai:e	(Ljava/lang/String;)V
    //   14: aload_0
    //   15: getfield 65	com/flurry/sdk/ai:l	Ljava/util/LinkedHashMap;
    //   18: aload_1
    //   19: invokevirtual 130	java/util/LinkedHashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   22: checkcast 132	com/flurry/sdk/ai$b
    //   25: astore 6
    //   27: aload 6
    //   29: ifnonnull +10 -> 39
    //   32: aload 4
    //   34: astore_3
    //   35: aload_0
    //   36: monitorexit
    //   37: aload_3
    //   38: areturn
    //   39: aload 4
    //   41: astore_3
    //   42: aload 6
    //   44: invokestatic 269	com/flurry/sdk/ai$b:d	(Lcom/flurry/sdk/ai$b;)Z
    //   47: ifeq -12 -> 35
    //   50: aload_0
    //   51: getfield 115	com/flurry/sdk/ai:i	I
    //   54: anewarray 477	java/io/InputStream
    //   57: astore 5
    //   59: iconst_0
    //   60: istore_2
    //   61: iload_2
    //   62: aload_0
    //   63: getfield 115	com/flurry/sdk/ai:i	I
    //   66: if_icmpge +65 -> 131
    //   69: aload 5
    //   71: iload_2
    //   72: new 336	java/io/FileInputStream
    //   75: dup
    //   76: aload 6
    //   78: iload_2
    //   79: invokevirtual 285	com/flurry/sdk/ai$b:a	(I)Ljava/io/File;
    //   82: invokespecial 338	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   85: aastore
    //   86: iload_2
    //   87: iconst_1
    //   88: iadd
    //   89: istore_2
    //   90: goto -29 -> 61
    //   93: astore_1
    //   94: iconst_0
    //   95: istore_2
    //   96: aload 4
    //   98: astore_3
    //   99: iload_2
    //   100: aload_0
    //   101: getfield 115	com/flurry/sdk/ai:i	I
    //   104: if_icmpge -69 -> 35
    //   107: aload 4
    //   109: astore_3
    //   110: aload 5
    //   112: iload_2
    //   113: aaload
    //   114: ifnull -79 -> 35
    //   117: aload 5
    //   119: iload_2
    //   120: aaload
    //   121: invokestatic 369	com/flurry/sdk/ak:a	(Ljava/io/Closeable;)V
    //   124: iload_2
    //   125: iconst_1
    //   126: iadd
    //   127: istore_2
    //   128: goto -32 -> 96
    //   131: aload_0
    //   132: aload_0
    //   133: getfield 120	com/flurry/sdk/ai:m	I
    //   136: iconst_1
    //   137: iadd
    //   138: putfield 120	com/flurry/sdk/ai:m	I
    //   141: aload_0
    //   142: getfield 154	com/flurry/sdk/ai:k	Ljava/io/Writer;
    //   145: new 156	java/lang/StringBuilder
    //   148: dup
    //   149: invokespecial 157	java/lang/StringBuilder:<init>	()V
    //   152: ldc_w 479
    //   155: invokevirtual 163	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   158: aload_1
    //   159: invokevirtual 163	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   162: bipush 10
    //   164: invokevirtual 166	java/lang/StringBuilder:append	(C)Ljava/lang/StringBuilder;
    //   167: invokevirtual 170	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   170: invokevirtual 482	java/io/Writer:append	(Ljava/lang/CharSequence;)Ljava/io/Writer;
    //   173: pop
    //   174: aload_0
    //   175: invokespecial 314	com/flurry/sdk/ai:f	()Z
    //   178: ifeq +15 -> 193
    //   181: aload_0
    //   182: getfield 85	com/flurry/sdk/ai:b	Ljava/util/concurrent/ThreadPoolExecutor;
    //   185: aload_0
    //   186: getfield 92	com/flurry/sdk/ai:o	Ljava/util/concurrent/Callable;
    //   189: invokevirtual 318	java/util/concurrent/ThreadPoolExecutor:submit	(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    //   192: pop
    //   193: new 484	com/flurry/sdk/ai$c
    //   196: dup
    //   197: aload_0
    //   198: aload_1
    //   199: aload 6
    //   201: invokestatic 137	com/flurry/sdk/ai$b:e	(Lcom/flurry/sdk/ai$b;)J
    //   204: aload 5
    //   206: aload 6
    //   208: invokestatic 292	com/flurry/sdk/ai$b:b	(Lcom/flurry/sdk/ai$b;)[J
    //   211: aconst_null
    //   212: invokespecial 487	com/flurry/sdk/ai$c:<init>	(Lcom/flurry/sdk/ai;Ljava/lang/String;J[Ljava/io/InputStream;[JLcom/flurry/sdk/ai$1;)V
    //   215: astore_3
    //   216: goto -181 -> 35
    //   219: astore_1
    //   220: aload_0
    //   221: monitorexit
    //   222: aload_1
    //   223: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	224	0	this	ai
    //   0	224	1	paramString	String
    //   60	68	2	i1	int
    //   34	182	3	localObject1	Object
    //   1	107	4	localObject2	Object
    //   57	148	5	arrayOfInputStream	java.io.InputStream[]
    //   25	182	6	localb	ai.b
    // Exception table:
    //   from	to	target	type
    //   61	86	93	java/io/FileNotFoundException
    //   5	27	219	finally
    //   42	59	219	finally
    //   61	86	219	finally
    //   99	107	219	finally
    //   117	124	219	finally
    //   131	193	219	finally
    //   193	216	219	finally
  }
  
  public void a()
  {
    close();
    ak.a(c);
  }
  
  public ai.a b(String paramString)
  {
    return a(paramString, -1L);
  }
  
  public boolean c(String paramString)
  {
    int i1 = 0;
    for (;;)
    {
      try
      {
        g();
        e(paramString);
        ai.b localb = (ai.b)l.get(paramString);
        Object localObject;
        if (localb != null)
        {
          localObject = ai.b.a(localb);
          if (localObject == null) {}
        }
        else
        {
          bool = false;
          return bool;
          j -= ai.b.b(localb)[i1];
          ai.b.b(localb)[i1] = 0L;
          i1 += 1;
        }
        if (i1 < i)
        {
          localObject = localb.a(i1);
          if ((!((File)localObject).exists()) || (((File)localObject).delete())) {
            continue;
          }
          throw new IOException("failed to delete " + localObject);
        }
      }
      finally {}
      m += 1;
      k.append("REMOVE " + paramString + '\n');
      l.remove(paramString);
      if (f()) {
        b.submit(o);
      }
      boolean bool = true;
    }
  }
  
  public void close()
  {
    for (;;)
    {
      try
      {
        Object localObject1 = k;
        if (localObject1 == null) {
          return;
        }
        localObject1 = new ArrayList(l.values()).iterator();
        if (((Iterator)localObject1).hasNext())
        {
          ai.b localb = (ai.b)((Iterator)localObject1).next();
          if (ai.b.a(localb) == null) {
            continue;
          }
          ai.b.a(localb).b();
          continue;
        }
        h();
      }
      finally {}
      k.close();
      k = null;
    }
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.ai
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */