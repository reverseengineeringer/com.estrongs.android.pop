package com.dianxinos.library.notify.network;

import java.io.BufferedInputStream;
import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.Writer;
import java.lang.reflect.Array;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public final class d
  implements Closeable
{
  private static final Charset a = Charset.forName("UTF-8");
  private final File b;
  private final File c;
  private final File d;
  private final int e;
  private final long f;
  private final int g;
  private long h = 0L;
  private Writer i;
  private final LinkedHashMap<String, i> j = new LinkedHashMap(0, 0.75F, true);
  private int k;
  private long l = 0L;
  private final ScheduledThreadPoolExecutor m = new ScheduledThreadPoolExecutor(1);
  private final Callable<Void> n = new e(this);
  private final Runnable o = new f(this);
  
  private d(File paramFile, int paramInt1, int paramInt2, long paramLong)
  {
    b = paramFile;
    e = paramInt1;
    c = new File(paramFile, "journal");
    d = new File(paramFile, "journal.tmp");
    g = paramInt2;
    f = paramLong;
  }
  
  public static d a(File paramFile, int paramInt1, int paramInt2, long paramLong)
  {
    if (paramLong <= 0L) {
      throw new IllegalArgumentException("maxSize <= 0");
    }
    if (paramInt2 <= 0) {
      throw new IllegalArgumentException("valueCount <= 0");
    }
    d locald = new d(paramFile, paramInt1, paramInt2, paramLong);
    if (c.exists()) {
      try
      {
        locald.c();
        locald.d();
        i = new BufferedWriter(new FileWriter(c, true), 8192);
        return locald;
      }
      catch (IOException localIOException)
      {
        locald.a();
      }
    }
    paramFile.mkdirs();
    paramFile = new d(paramFile, paramInt1, paramInt2, paramLong);
    paramFile.e();
    paramFile.b();
    return paramFile;
  }
  
  private g a(String paramString, long paramLong)
  {
    for (;;)
    {
      g localg;
      try
      {
        g();
        e(paramString);
        i locali = (i)j.get(paramString);
        if (paramLong != -1L) {
          if (locali != null)
          {
            long l1 = i.f(locali);
            if (l1 == paramLong) {}
          }
          else
          {
            paramString = null;
            return paramString;
          }
        }
        if (locali == null)
        {
          locali = new i(this, paramString, null);
          j.put(paramString, locali);
          localg = new g(this, locali, null);
          i.a(locali, localg);
          i.write("DIRTY " + paramString + '\n');
          i.flush();
          paramString = localg;
          continue;
        }
        localg = i.a(locali);
      }
      finally {}
      if (localg != null) {
        paramString = null;
      }
    }
  }
  
  public static String a(InputStream paramInputStream)
  {
    StringBuilder localStringBuilder = new StringBuilder(80);
    for (;;)
    {
      int i1 = paramInputStream.read();
      if (i1 == -1) {
        throw new EOFException();
      }
      if (i1 == 10)
      {
        i1 = localStringBuilder.length();
        if ((i1 > 0) && (localStringBuilder.charAt(i1 - 1) == '\r')) {
          localStringBuilder.setLength(i1 - 1);
        }
        return localStringBuilder.toString();
      }
      localStringBuilder.append((char)i1);
    }
  }
  
  private void a(g paramg, boolean paramBoolean, long paramLong)
  {
    int i3 = 0;
    i locali;
    try
    {
      locali = g.a(paramg);
      i.a(locali, paramLong);
      if (i.a(locali) != paramg) {
        throw new IllegalStateException();
      }
    }
    finally {}
    int i2 = i3;
    int i1;
    if (paramBoolean)
    {
      i2 = i3;
      if (!i.e(locali))
      {
        i1 = 0;
        i2 = i3;
        if (i1 < g)
        {
          if (locali.b(i1).exists()) {
            break label413;
          }
          paramg.b();
          throw new IllegalStateException("edit didn't create file " + i1);
        }
      }
    }
    for (;;)
    {
      if (i2 < g)
      {
        paramg = locali.b(i2);
        if (paramBoolean)
        {
          if (paramg.exists())
          {
            File localFile = locali.a(i2);
            paramg.renameTo(localFile);
            paramLong = i.b(locali)[i2];
            long l1 = localFile.length();
            i.b(locali)[i2] = l1;
            h = (h - paramLong + l1);
          }
        }
        else {
          b(paramg);
        }
      }
      else
      {
        k += 1;
        i.a(locali, null);
        if ((i.e(locali) | paramBoolean))
        {
          i.a(locali, true);
          i.write("CLEAN " + i.c(locali) + locali.a() + '\n');
          m.submit(o);
          if (paramBoolean)
          {
            paramLong = l;
            l = (1L + paramLong);
            i.b(locali, paramLong);
          }
        }
        for (;;)
        {
          if ((h > f) || (f())) {
            m.submit(n);
          }
          return;
          j.remove(i.c(locali));
          i.write("REMOVE " + i.c(locali) + '\n');
        }
        label413:
        i1 += 1;
        break;
      }
      i2 += 1;
    }
  }
  
  public static void a(Closeable paramCloseable)
  {
    if (paramCloseable != null) {}
    try
    {
      paramCloseable.close();
      return;
    }
    catch (RuntimeException paramCloseable)
    {
      throw paramCloseable;
    }
    catch (Exception paramCloseable) {}
  }
  
  public static void a(File paramFile)
  {
    File[] arrayOfFile = paramFile.listFiles();
    if (arrayOfFile == null) {
      throw new IllegalArgumentException("not a directory: " + paramFile);
    }
    int i2 = arrayOfFile.length;
    int i1 = 0;
    while (i1 < i2)
    {
      paramFile = arrayOfFile[i1];
      if (paramFile.isDirectory()) {
        a(paramFile);
      }
      if (!paramFile.delete()) {
        throw new IOException("failed to delete file: " + paramFile);
      }
      i1 += 1;
    }
  }
  
  private static <T> T[] a(T[] paramArrayOfT, int paramInt1, int paramInt2)
  {
    int i1 = paramArrayOfT.length;
    if (paramInt1 > paramInt2) {
      throw new IllegalArgumentException();
    }
    if ((paramInt1 < 0) || (paramInt1 > i1)) {
      throw new ArrayIndexOutOfBoundsException();
    }
    paramInt2 -= paramInt1;
    i1 = Math.min(paramInt2, i1 - paramInt1);
    Object[] arrayOfObject = (Object[])Array.newInstance(paramArrayOfT.getClass().getComponentType(), paramInt2);
    System.arraycopy(paramArrayOfT, paramInt1, arrayOfObject, 0, i1);
    return arrayOfObject;
  }
  
  private void b()
  {
    m.scheduleAtFixedRate(o, 180L, 180L, TimeUnit.SECONDS);
  }
  
  private static void b(File paramFile)
  {
    if ((paramFile.exists()) && (!paramFile.delete())) {
      throw new IOException();
    }
  }
  
  private void c()
  {
    BufferedInputStream localBufferedInputStream = new BufferedInputStream(new FileInputStream(c), 8192);
    try
    {
      String str1 = a(localBufferedInputStream);
      String str2 = a(localBufferedInputStream);
      String str3 = a(localBufferedInputStream);
      String str4 = a(localBufferedInputStream);
      String str5 = a(localBufferedInputStream);
      if ((!"libcore.io.DiskLruCache".equals(str1)) || (!"1".equals(str2)) || (!Integer.toString(e).equals(str3)) || (!Integer.toString(g).equals(str4)) || (!"".equals(str5))) {
        throw new IOException("unexpected journal header: [" + str1 + ", " + str2 + ", " + str4 + ", " + str5 + "]");
      }
    }
    finally
    {
      a(localBufferedInputStream);
    }
  }
  
  private void d()
  {
    b(d);
    Iterator localIterator = j.values().iterator();
    while (localIterator.hasNext())
    {
      i locali = (i)localIterator.next();
      int i1;
      if (i.a(locali) == null)
      {
        i1 = 0;
        while (i1 < g)
        {
          h += i.b(locali)[i1];
          i1 += 1;
        }
      }
      else
      {
        i.a(locali, null);
        i1 = 0;
        while (i1 < g)
        {
          b(locali.a(i1));
          b(locali.b(i1));
          i1 += 1;
        }
        localIterator.remove();
      }
    }
  }
  
  private void d(String paramString)
  {
    String[] arrayOfString = paramString.split(" ");
    if (arrayOfString.length < 2) {
      throw new IOException("unexpected journal line: " + paramString);
    }
    String str = arrayOfString[1];
    if ((arrayOfString[0].equals("REMOVE")) && (arrayOfString.length == 2))
    {
      j.remove(str);
      return;
    }
    i locali = (i)j.get(str);
    if (locali == null)
    {
      locali = new i(this, str, null);
      j.put(str, locali);
    }
    for (;;)
    {
      if ((arrayOfString[0].equals("CLEAN")) && (arrayOfString.length == g + 3))
      {
        i.a(locali, true);
        i.a(locali, null);
        i.a(locali, (String[])a(arrayOfString, 2, arrayOfString.length - 1));
        i.a(locali, Long.parseLong(arrayOfString[(arrayOfString.length - 1)]));
        return;
      }
      if ((arrayOfString[0].equals("DIRTY")) && (arrayOfString.length == 2))
      {
        i.a(locali, new g(this, locali, null));
        return;
      }
      if ((arrayOfString[0].equals("READ")) && (arrayOfString.length == 2)) {
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
        if (i != null) {
          i.close();
        }
        BufferedWriter localBufferedWriter = new BufferedWriter(new FileWriter(d), 8192);
        localBufferedWriter.write("libcore.io.DiskLruCache");
        localBufferedWriter.write("\n");
        localBufferedWriter.write("1");
        localBufferedWriter.write("\n");
        localBufferedWriter.write(Integer.toString(e));
        localBufferedWriter.write("\n");
        localBufferedWriter.write(Integer.toString(g));
        localBufferedWriter.write("\n");
        localBufferedWriter.write("\n");
        Iterator localIterator = j.values().iterator();
        if (!localIterator.hasNext()) {
          break;
        }
        i locali = (i)localIterator.next();
        if (i.a(locali) != null) {
          localBufferedWriter.write("DIRTY " + i.c(locali) + '\n');
        } else {
          ((Writer)localObject).write("CLEAN " + i.c(locali) + locali.a() + " " + i.d(locali) + '\n');
        }
      }
      finally {}
    }
    ((Writer)localObject).close();
    d.renameTo(c);
    i = new BufferedWriter(new FileWriter(c, true), 8192);
  }
  
  private void e(String paramString)
  {
    if ((paramString.contains(" ")) || (paramString.contains("\n")) || (paramString.contains("\r"))) {
      throw new IllegalArgumentException("keys must not contain spaces or newlines: \"" + paramString + "\"");
    }
  }
  
  private boolean f()
  {
    return (k >= 2000) && (k >= j.size());
  }
  
  private void g()
  {
    if (i == null) {
      throw new IllegalStateException("cache is closed");
    }
  }
  
  private void h()
  {
    while (h > f) {
      c((String)((Map.Entry)j.entrySet().iterator().next()).getKey());
    }
  }
  
  /* Error */
  public j a(String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: aload_0
    //   4: monitorenter
    //   5: aload_0
    //   6: invokespecial 150	com/dianxinos/library/notify/network/d:g	()V
    //   9: aload_0
    //   10: aload_1
    //   11: invokespecial 152	com/dianxinos/library/notify/network/d:e	(Ljava/lang/String;)V
    //   14: aload_0
    //   15: getfield 59	com/dianxinos/library/notify/network/d:j	Ljava/util/LinkedHashMap;
    //   18: aload_1
    //   19: invokevirtual 156	java/util/LinkedHashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   22: checkcast 158	com/dianxinos/library/notify/network/i
    //   25: astore 5
    //   27: aload 5
    //   29: ifnonnull +10 -> 39
    //   32: aload 4
    //   34: astore_3
    //   35: aload_0
    //   36: monitorexit
    //   37: aload_3
    //   38: areturn
    //   39: aload 4
    //   41: astore_3
    //   42: aload 5
    //   44: invokestatic 243	com/dianxinos/library/notify/network/i:e	(Lcom/dianxinos/library/notify/network/i;)Z
    //   47: ifeq -12 -> 35
    //   50: aload_0
    //   51: getfield 99	com/dianxinos/library/notify/network/d:g	I
    //   54: anewarray 86	java/io/File
    //   57: astore_3
    //   58: aload_0
    //   59: getfield 99	com/dianxinos/library/notify/network/d:g	I
    //   62: anewarray 210	java/io/InputStream
    //   65: astore 6
    //   67: iconst_0
    //   68: istore_2
    //   69: iload_2
    //   70: aload_0
    //   71: getfield 99	com/dianxinos/library/notify/network/d:g	I
    //   74: if_icmpge +33 -> 107
    //   77: aload_3
    //   78: iload_2
    //   79: aload 5
    //   81: iload_2
    //   82: invokevirtual 255	com/dianxinos/library/notify/network/i:a	(I)Ljava/io/File;
    //   85: aastore
    //   86: aload 6
    //   88: iload_2
    //   89: new 377	java/io/FileInputStream
    //   92: dup
    //   93: aload_3
    //   94: iload_2
    //   95: aaload
    //   96: invokespecial 379	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   99: aastore
    //   100: iload_2
    //   101: iconst_1
    //   102: iadd
    //   103: istore_2
    //   104: goto -35 -> 69
    //   107: aload_0
    //   108: aload_0
    //   109: getfield 104	com/dianxinos/library/notify/network/d:k	I
    //   112: iconst_1
    //   113: iadd
    //   114: putfield 104	com/dianxinos/library/notify/network/d:k	I
    //   117: aload_0
    //   118: getfield 138	com/dianxinos/library/notify/network/d:i	Ljava/io/Writer;
    //   121: new 180	java/lang/StringBuilder
    //   124: dup
    //   125: invokespecial 181	java/lang/StringBuilder:<init>	()V
    //   128: ldc_w 508
    //   131: invokevirtual 187	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   134: aload_1
    //   135: invokevirtual 187	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   138: bipush 10
    //   140: invokevirtual 190	java/lang/StringBuilder:append	(C)Ljava/lang/StringBuilder;
    //   143: invokevirtual 194	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   146: invokevirtual 511	java/io/Writer:append	(Ljava/lang/CharSequence;)Ljava/io/Writer;
    //   149: pop
    //   150: aload_0
    //   151: invokespecial 286	com/dianxinos/library/notify/network/d:f	()Z
    //   154: ifeq +15 -> 169
    //   157: aload_0
    //   158: getfield 68	com/dianxinos/library/notify/network/d:m	Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    //   161: aload_0
    //   162: getfield 75	com/dianxinos/library/notify/network/d:n	Ljava/util/concurrent/Callable;
    //   165: invokevirtual 289	java/util/concurrent/ScheduledThreadPoolExecutor:submit	(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    //   168: pop
    //   169: new 513	com/dianxinos/library/notify/network/j
    //   172: dup
    //   173: aload_0
    //   174: aload_1
    //   175: aload 5
    //   177: invokestatic 163	com/dianxinos/library/notify/network/i:f	(Lcom/dianxinos/library/notify/network/i;)J
    //   180: aload 6
    //   182: aload_3
    //   183: aload 5
    //   185: invokestatic 469	com/dianxinos/library/notify/network/i:d	(Lcom/dianxinos/library/notify/network/i;)J
    //   188: aconst_null
    //   189: invokespecial 516	com/dianxinos/library/notify/network/j:<init>	(Lcom/dianxinos/library/notify/network/d;Ljava/lang/String;J[Ljava/io/InputStream;[Ljava/io/File;JLcom/dianxinos/library/notify/network/e;)V
    //   192: astore_3
    //   193: goto -158 -> 35
    //   196: astore_1
    //   197: aload_0
    //   198: monitorexit
    //   199: aload_1
    //   200: athrow
    //   201: astore_1
    //   202: aload 4
    //   204: astore_3
    //   205: goto -170 -> 35
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	208	0	this	d
    //   0	208	1	paramString	String
    //   68	36	2	i1	int
    //   34	171	3	localObject1	Object
    //   1	202	4	localObject2	Object
    //   25	159	5	locali	i
    //   65	116	6	arrayOfInputStream	InputStream[]
    // Exception table:
    //   from	to	target	type
    //   5	27	196	finally
    //   42	67	196	finally
    //   69	100	196	finally
    //   107	169	196	finally
    //   169	193	196	finally
    //   69	100	201	java/io/FileNotFoundException
  }
  
  public void a()
  {
    close();
    a(b);
  }
  
  public g b(String paramString)
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
        i locali = (i)j.get(paramString);
        Object localObject;
        if (locali != null)
        {
          localObject = i.a(locali);
          if (localObject == null) {}
        }
        else
        {
          bool = false;
          return bool;
          h -= i.b(locali)[i1];
          i.b(locali)[i1] = 0L;
          i1 += 1;
        }
        if (i1 < g)
        {
          localObject = locali.a(i1);
          if (((File)localObject).delete()) {
            continue;
          }
          throw new IOException("failed to delete " + localObject);
        }
      }
      finally {}
      k += 1;
      i.append("REMOVE " + paramString + '\n');
      j.remove(paramString);
      if (f()) {
        m.submit(n);
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
        Object localObject1 = i;
        if (localObject1 == null) {
          return;
        }
        localObject1 = new ArrayList(j.values()).iterator();
        if (((Iterator)localObject1).hasNext())
        {
          i locali = (i)((Iterator)localObject1).next();
          if (i.a(locali) == null) {
            continue;
          }
          i.a(locali).b();
          continue;
        }
        h();
      }
      finally {}
      i.close();
      i = null;
    }
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.library.notify.network.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */