package com.estrongs.io.archive;

import com.estrongs.android.pop.app.compress.ae;
import com.estrongs.android.util.am;
import com.estrongs.android.util.bd;
import com.estrongs.fs.FileSystemException;
import com.estrongs.fs.d;
import com.estrongs.fs.impl.local.l;
import com.estrongs.fs.impl.local.q;
import com.estrongs.io.a.b;
import com.estrongs.io.model.ArchiveEntryFile;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

public abstract class h
{
  protected long a = 0L;
  protected String b;
  protected String c = "GBK";
  protected ArchiveEntryFile d = null;
  protected Map<String, ArchiveEntryFile> e = new TreeMap();
  protected byte[] f = null;
  protected boolean g = false;
  private List<File> h = new ArrayList();
  private List<File> i = new ArrayList();
  private boolean j = false;
  
  public h(String paramString)
  {
    b = paramString;
  }
  
  public h(String paramString1, String paramString2)
  {
    b = paramString1;
    if (paramString2 != null) {
      c = paramString2;
    }
  }
  
  private void a(ArchiveEntryFile paramArchiveEntryFile)
  {
    if (j) {
      return;
    }
    Object localObject = paramArchiveEntryFile.getPath();
    if (!e.containsKey(localObject)) {
      e.put(localObject, paramArchiveEntryFile);
    }
    localObject = new File(paramArchiveEntryFile.getPath()).getParentFile();
    if (localObject == null) {}
    for (localObject = "/"; "/".equals(localObject); localObject = ((File)localObject).getPath())
    {
      localArchiveEntryFile = (ArchiveEntryFile)e.get("/");
      localObject = localArchiveEntryFile;
      if (localArchiveEntryFile == null)
      {
        localObject = c("/");
        e.put("/", localObject);
      }
      ((ArchiveEntryFile)localObject).attachChild(paramArchiveEntryFile);
      return;
    }
    ArchiveEntryFile localArchiveEntryFile = (ArchiveEntryFile)e.get(localObject);
    if (localArchiveEntryFile != null)
    {
      localArchiveEntryFile.attachChild(paramArchiveEntryFile);
      return;
    }
    localObject = c((String)localObject + "/");
    ((ArchiveEntryFile)localObject).attachChild(paramArchiveEntryFile);
    a((ArchiveEntryFile)localObject);
  }
  
  public static String d(String paramString)
  {
    String str = paramString;
    if (paramString.equals("/..")) {
      str = "";
    }
    do
    {
      return str;
      while (str.contains("/../")) {
        str = str.replace("/../", "/");
      }
      paramString = str;
      if (str.startsWith(".."))
      {
        if (str.length() == 2) {
          return "";
        }
        paramString = str.substring(2);
      }
      str = paramString;
    } while (!paramString.endsWith(".."));
    if (paramString.length() == 2) {
      return "";
    }
    return paramString.substring(0, paramString.length() - 2);
  }
  
  private ArchiveEntryFile l()
  {
    Iterator localIterator = i();
    if (localIterator == null) {
      return null;
    }
    long l1 = System.currentTimeMillis();
    for (;;)
    {
      if ((!localIterator.hasNext()) || (j))
      {
        long l2 = System.currentTimeMillis();
        System.out.println("Opening archive" + b + ": " + (l2 - l1) + " ms");
        return (ArchiveEntryFile)e.get("/");
      }
      ArchiveEntryFile localArchiveEntryFile = (ArchiveEntryFile)localIterator.next();
      if ((!e.containsKey(localArchiveEntryFile.getPath())) && (!"".equals(localArchiveEntryFile.getName()))) {
        a(localArchiveEntryFile);
      }
    }
  }
  
  public abstract InputStream a(String paramString);
  
  public void a(b paramb)
  {
    Object localObject2;
    try
    {
      localObject1 = new g();
      b();
      localObject2 = i();
      while (((Iterator)localObject2).hasNext()) {
        ((g)localObject1).a((ArchiveEntryFile)((Iterator)localObject2).next());
      }
      localObject2 = new File(b).getName();
    }
    catch (IOException paramb)
    {
      throw paramb;
    }
    finally
    {
      f = null;
      g();
    }
    long l = ((g)localObject1).a();
    int k = ((g)localObject1).b();
    paramb.a((String)localObject2, l, ((g)localObject1).c() + k);
    Object localObject1 = i();
    for (;;)
    {
      if ((!((Iterator)localObject1).hasNext()) || (paramb.b()))
      {
        c();
        f = null;
        g();
        return;
      }
      a((ArchiveEntryFile)((Iterator)localObject1).next(), paramb);
    }
  }
  
  public void a(ArchiveEntryFile paramArchiveEntryFile, b paramb)
  {
    if (paramb.b()) {}
    label191:
    do
    {
      int m;
      int k;
      for (;;)
      {
        return;
        if (!paramArchiveEntryFile.isRoot()) {
          break;
        }
        paramArchiveEntryFile = paramArchiveEntryFile.listFiles();
        if (paramArchiveEntryFile != null)
        {
          m = paramArchiveEntryFile.length;
          k = 0;
          while (k < m)
          {
            a((ArchiveEntryFile)paramArchiveEntryFile[k], paramb);
            k += 1;
          }
        }
      }
      if (paramArchiveEntryFile.isDirectory())
      {
        Object localObject = d(paramArchiveEntryFile.getPath());
        localObject = new File(paramb.c() + (String)localObject);
        if (!com.estrongs.fs.impl.local.h.a(((File)localObject).getCanonicalPath()))
        {
          if (d.a() == null) {
            break label191;
          }
          d.a().c(((File)localObject).getCanonicalPath(), false);
        }
        for (;;)
        {
          a(((File)localObject).getCanonicalPath(), paramb);
          paramb.a(paramArchiveEntryFile.getPath(), 0L);
          paramArchiveEntryFile = paramArchiveEntryFile.listFiles();
          m = paramArchiveEntryFile.length;
          k = 0;
          while (k < m)
          {
            a((ArchiveEntryFile)paramArchiveEntryFile[k], paramb);
            k += 1;
          }
          break;
          com.estrongs.fs.impl.local.h.g(((File)localObject).getCanonicalPath());
        }
      }
      paramArchiveEntryFile = d(paramArchiveEntryFile, paramb);
    } while (paramArchiveEntryFile == null);
    a(paramArchiveEntryFile);
  }
  
  protected void a(File paramFile)
  {
    paramFile = paramFile.getAbsolutePath();
    if (!am.bl(paramFile)) {}
    Object localObject;
    do
    {
      do
      {
        return;
        localObject = Thread.currentThread();
      } while (!(localObject instanceof ae));
      localObject = (ae)localObject;
      e |= com.estrongs.fs.a.a.g(paramFile);
      if (bd.f())
      {
        d.add(paramFile);
        return;
      }
      if (com.estrongs.fs.impl.media.a.a(paramFile))
      {
        a.add(paramFile);
        return;
      }
      if (com.estrongs.fs.impl.media.a.b(paramFile))
      {
        b.add(paramFile);
        return;
      }
    } while (!com.estrongs.fs.impl.media.a.c(paramFile));
    c.add(paramFile);
  }
  
  public void a(String paramString, b paramb)
  {
    try
    {
      if ((!am.bl(paramString)) && (l.a(null, false)))
      {
        q localq = l.f(paramString);
        if (localq != null)
        {
          a |= 0x1FF;
          if ((paramb.d() != null) && (paramb.d().length == 2))
          {
            b = paramb.d()[0];
            c = paramb.d()[1];
          }
          l.a(paramString, localq);
        }
      }
      return;
    }
    catch (Exception paramString) {}
  }
  
  /* Error */
  public void a(List<String> paramList, b paramb)
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore 7
    //   3: iconst_1
    //   4: istore 6
    //   6: aload_0
    //   7: ldc_w 338
    //   10: newarray <illegal type>
    //   12: putfield 50	com/estrongs/io/archive/h:f	[B
    //   15: aload_0
    //   16: lconst_0
    //   17: putfield 30	com/estrongs/io/archive/h:a	J
    //   20: new 196	com/estrongs/io/archive/g
    //   23: dup
    //   24: invokespecial 197	com/estrongs/io/archive/g:<init>	()V
    //   27: astore 10
    //   29: new 340	java/util/LinkedList
    //   32: dup
    //   33: invokespecial 341	java/util/LinkedList:<init>	()V
    //   36: astore 11
    //   38: aload_1
    //   39: astore 9
    //   41: aload_1
    //   42: ifnonnull +12 -> 54
    //   45: new 32	java/util/ArrayList
    //   48: dup
    //   49: invokespecial 33	java/util/ArrayList:<init>	()V
    //   52: astore 9
    //   54: aload 9
    //   56: invokeinterface 344 1 0
    //   61: ifne +13 -> 74
    //   64: aload 9
    //   66: ldc 85
    //   68: invokeinterface 299 2 0
    //   73: pop
    //   74: iconst_0
    //   75: istore 4
    //   77: iconst_0
    //   78: istore 5
    //   80: iconst_0
    //   81: istore_3
    //   82: aload_0
    //   83: invokevirtual 346	com/estrongs/io/archive/h:a	()Z
    //   86: istore 8
    //   88: iload 8
    //   90: ifne +12 -> 102
    //   93: iload 7
    //   95: istore_3
    //   96: aload_0
    //   97: invokevirtual 199	com/estrongs/io/archive/h:b	()V
    //   100: iconst_1
    //   101: istore_3
    //   102: iload_3
    //   103: istore 4
    //   105: iload_3
    //   106: istore 5
    //   108: aload_0
    //   109: getfield 48	com/estrongs/io/archive/h:e	Ljava/util/Map;
    //   112: invokeinterface 347 1 0
    //   117: iconst_1
    //   118: if_icmpge +14 -> 132
    //   121: iload_3
    //   122: istore 4
    //   124: iload_3
    //   125: istore 5
    //   127: aload_0
    //   128: invokespecial 349	com/estrongs/io/archive/h:l	()Lcom/estrongs/io/model/ArchiveEntryFile;
    //   131: pop
    //   132: iload_3
    //   133: istore 4
    //   135: iload_3
    //   136: istore 5
    //   138: aload 9
    //   140: invokeinterface 352 1 0
    //   145: astore_1
    //   146: iload_3
    //   147: istore 4
    //   149: iload_3
    //   150: istore 5
    //   152: aload_1
    //   153: invokeinterface 165 1 0
    //   158: ifeq +96 -> 254
    //   161: iload_3
    //   162: istore 4
    //   164: iload_3
    //   165: istore 5
    //   167: aload_1
    //   168: invokeinterface 187 1 0
    //   173: checkcast 87	java/lang/String
    //   176: astore 9
    //   178: iload_3
    //   179: istore 4
    //   181: iload_3
    //   182: istore 5
    //   184: aload_0
    //   185: getfield 48	com/estrongs/io/archive/h:e	Ljava/util/Map;
    //   188: aload 9
    //   190: invokeinterface 94 2 0
    //   195: checkcast 61	com/estrongs/io/model/ArchiveEntryFile
    //   198: astore 9
    //   200: iload_3
    //   201: istore 4
    //   203: iload_3
    //   204: istore 5
    //   206: aload 11
    //   208: aload 9
    //   210: invokeinterface 299 2 0
    //   215: pop
    //   216: iload_3
    //   217: istore 4
    //   219: iload_3
    //   220: istore 5
    //   222: aload 10
    //   224: aload 9
    //   226: invokevirtual 202	com/estrongs/io/archive/g:a	(Ljava/io/File;)V
    //   229: goto -83 -> 146
    //   232: astore_1
    //   233: iload 4
    //   235: istore_3
    //   236: aload_1
    //   237: athrow
    //   238: astore_1
    //   239: aload_0
    //   240: aconst_null
    //   241: putfield 50	com/estrongs/io/archive/h:f	[B
    //   244: iload_3
    //   245: ifeq +7 -> 252
    //   248: aload_0
    //   249: invokevirtual 220	com/estrongs/io/archive/h:c	()V
    //   252: aload_1
    //   253: athrow
    //   254: iload_3
    //   255: istore 4
    //   257: iload_3
    //   258: istore 5
    //   260: aload_2
    //   261: new 77	java/io/File
    //   264: dup
    //   265: aload_0
    //   266: getfield 56	com/estrongs/io/archive/h:b	Ljava/lang/String;
    //   269: invokespecial 79	java/io/File:<init>	(Ljava/lang/String;)V
    //   272: invokevirtual 205	java/io/File:getName	()Ljava/lang/String;
    //   275: aload 10
    //   277: invokevirtual 207	com/estrongs/io/archive/g:a	()J
    //   280: aload 10
    //   282: invokevirtual 209	com/estrongs/io/archive/g:b	()I
    //   285: aload 10
    //   287: invokevirtual 211	com/estrongs/io/archive/g:c	()I
    //   290: iadd
    //   291: invokeinterface 216 5 0
    //   296: iload_3
    //   297: istore 4
    //   299: iload_3
    //   300: istore 5
    //   302: aload 11
    //   304: invokeinterface 352 1 0
    //   309: astore_1
    //   310: iload_3
    //   311: istore 4
    //   313: iload_3
    //   314: istore 5
    //   316: aload_1
    //   317: invokeinterface 165 1 0
    //   322: ifeq +39 -> 361
    //   325: iload_3
    //   326: istore 4
    //   328: iload_3
    //   329: istore 5
    //   331: aload_1
    //   332: invokeinterface 187 1 0
    //   337: checkcast 61	com/estrongs/io/model/ArchiveEntryFile
    //   340: astore 9
    //   342: iload_3
    //   343: istore 4
    //   345: iload_3
    //   346: istore 5
    //   348: aload_2
    //   349: invokeinterface 218 1 0
    //   354: istore 8
    //   356: iload 8
    //   358: ifeq +17 -> 375
    //   361: aload_0
    //   362: aconst_null
    //   363: putfield 50	com/estrongs/io/archive/h:f	[B
    //   366: iload_3
    //   367: ifeq +7 -> 374
    //   370: aload_0
    //   371: invokevirtual 220	com/estrongs/io/archive/h:c	()V
    //   374: return
    //   375: iload_3
    //   376: istore 4
    //   378: iload_3
    //   379: istore 5
    //   381: aload_0
    //   382: aload 9
    //   384: aload_2
    //   385: invokevirtual 223	com/estrongs/io/archive/h:a	(Lcom/estrongs/io/model/ArchiveEntryFile;Lcom/estrongs/io/a/b;)V
    //   388: goto -78 -> 310
    //   391: astore_1
    //   392: iload 5
    //   394: istore_3
    //   395: goto -156 -> 239
    //   398: astore_1
    //   399: iload 6
    //   401: istore_3
    //   402: goto -166 -> 236
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	405	0	this	h
    //   0	405	1	paramList	List<String>
    //   0	405	2	paramb	b
    //   81	321	3	k	int
    //   75	302	4	m	int
    //   78	315	5	n	int
    //   4	396	6	i1	int
    //   1	93	7	i2	int
    //   86	271	8	bool	boolean
    //   39	344	9	localObject	Object
    //   27	259	10	localg	g
    //   36	267	11	localLinkedList	java.util.LinkedList
    // Exception table:
    //   from	to	target	type
    //   82	88	232	java/io/IOException
    //   108	121	232	java/io/IOException
    //   127	132	232	java/io/IOException
    //   138	146	232	java/io/IOException
    //   152	161	232	java/io/IOException
    //   167	178	232	java/io/IOException
    //   184	200	232	java/io/IOException
    //   206	216	232	java/io/IOException
    //   222	229	232	java/io/IOException
    //   260	296	232	java/io/IOException
    //   302	310	232	java/io/IOException
    //   316	325	232	java/io/IOException
    //   331	342	232	java/io/IOException
    //   348	356	232	java/io/IOException
    //   381	388	232	java/io/IOException
    //   96	100	238	finally
    //   236	238	238	finally
    //   82	88	391	finally
    //   108	121	391	finally
    //   127	132	391	finally
    //   138	146	391	finally
    //   152	161	391	finally
    //   167	178	391	finally
    //   184	200	391	finally
    //   206	216	391	finally
    //   222	229	391	finally
    //   260	296	391	finally
    //   302	310	391	finally
    //   316	325	391	finally
    //   331	342	391	finally
    //   348	356	391	finally
    //   381	388	391	finally
    //   96	100	398	java/io/IOException
  }
  
  public abstract boolean a();
  
  public final ArchiveEntryFile b(String paramString)
  {
    return (ArchiveEntryFile)e.get(paramString);
  }
  
  protected File b(ArchiveEntryFile paramArchiveEntryFile, b paramb)
  {
    paramArchiveEntryFile = d(paramArchiveEntryFile.getPath());
    return new File(paramb.c() + paramArchiveEntryFile);
  }
  
  public abstract void b();
  
  protected ArchiveEntryFile c(String paramString)
  {
    return new ArchiveEntryFile(paramString);
  }
  
  protected File c(ArchiveEntryFile paramArchiveEntryFile, b paramb)
  {
    File localFile1 = b(paramArchiveEntryFile, paramb);
    if (paramArchiveEntryFile.isDirectory())
    {
      if (d.a() != null) {}
      for (;;)
      {
        try
        {
          d.a().g(localFile1.getAbsolutePath());
          a(localFile1.getAbsolutePath(), paramb);
          return null;
        }
        catch (FileSystemException paramArchiveEntryFile)
        {
          com.estrongs.fs.impl.local.h.g(localFile1.getAbsolutePath());
          paramArchiveEntryFile.printStackTrace();
          continue;
        }
        com.estrongs.fs.impl.local.h.g(localFile1.getAbsolutePath());
      }
    }
    File localFile2 = localFile1.getParentFile();
    if (!com.estrongs.fs.impl.local.h.a(localFile2.getAbsolutePath()))
    {
      if (d.a() != null) {}
      for (;;)
      {
        try
        {
          bool = d.a().c(localFile2.getAbsolutePath(), false);
          a(localFile2.getAbsolutePath(), paramb);
          if (bool) {
            break;
          }
          throw new IOException("path_create_error: " + localFile2.getAbsolutePath());
        }
        catch (FileSystemException localFileSystemException)
        {
          bool = com.estrongs.fs.impl.local.h.g(localFile2.getAbsolutePath());
          localFileSystemException.printStackTrace();
          continue;
        }
        boolean bool = com.estrongs.fs.impl.local.h.g(localFile2.getAbsolutePath());
      }
    }
    if (!com.estrongs.fs.impl.local.h.h(localFile2.getAbsolutePath())) {
      throw new IOException("FILENAME_CONFLICT " + localFile2.getName());
    }
    if ((com.estrongs.fs.impl.local.h.a(localFile1.getAbsolutePath())) && (!paramb.a(localFile1.getAbsolutePath())))
    {
      paramb.a(d(paramArchiveEntryFile.getPath()), com.estrongs.fs.impl.local.h.e(paramArchiveEntryFile.getAbsolutePath()));
      return null;
    }
    if (!com.estrongs.fs.impl.local.h.a(localFile1.getAbsolutePath()))
    {
      try
      {
        if (!com.estrongs.fs.impl.local.h.a(localFile1.getAbsolutePath(), false, false)) {
          throw new IOException("path_create_error: " + localFile1.getAbsolutePath());
        }
      }
      catch (Exception paramArchiveEntryFile)
      {
        throw new IOException("path_create_error (" + paramArchiveEntryFile.getMessage() + "): " + localFile1.getAbsolutePath());
      }
      a(localFile1.getAbsolutePath(), paramb);
    }
    paramb.a(d(paramArchiveEntryFile.getPath()), paramArchiveEntryFile.getSize());
    return localFile1;
  }
  
  public abstract void c();
  
  /* Error */
  public File d(ArchiveEntryFile paramArchiveEntryFile, b paramb)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 7
    //   3: iconst_0
    //   4: istore 4
    //   6: aload_0
    //   7: aload_1
    //   8: aload_2
    //   9: invokevirtual 390	com/estrongs/io/archive/h:c	(Lcom/estrongs/io/model/ArchiveEntryFile;Lcom/estrongs/io/a/b;)Ljava/io/File;
    //   12: astore 8
    //   14: aload 8
    //   16: ifnonnull +5 -> 21
    //   19: aconst_null
    //   20: areturn
    //   21: aload_1
    //   22: invokevirtual 65	com/estrongs/io/model/ArchiveEntryFile:getPath	()Ljava/lang/String;
    //   25: astore_1
    //   26: aload_0
    //   27: aload_1
    //   28: invokevirtual 392	com/estrongs/io/archive/h:a	(Ljava/lang/String;)Ljava/io/InputStream;
    //   31: astore_1
    //   32: aload_0
    //   33: getfield 50	com/estrongs/io/archive/h:f	[B
    //   36: ifnonnull +12 -> 48
    //   39: aload_0
    //   40: ldc_w 338
    //   43: newarray <illegal type>
    //   45: putfield 50	com/estrongs/io/archive/h:f	[B
    //   48: new 394	java/io/BufferedInputStream
    //   51: dup
    //   52: aload_1
    //   53: aload_0
    //   54: getfield 50	com/estrongs/io/archive/h:f	[B
    //   57: arraylength
    //   58: invokespecial 397	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;I)V
    //   61: astore 9
    //   63: new 399	java/io/FileOutputStream
    //   66: dup
    //   67: aload 8
    //   69: invokespecial 401	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   72: astore_1
    //   73: aload 9
    //   75: aload_0
    //   76: getfield 50	com/estrongs/io/archive/h:f	[B
    //   79: iconst_0
    //   80: aload_0
    //   81: getfield 50	com/estrongs/io/archive/h:f	[B
    //   84: arraylength
    //   85: invokevirtual 407	java/io/InputStream:read	([BII)I
    //   88: istore 5
    //   90: iload 4
    //   92: istore_3
    //   93: iload 5
    //   95: iconst_m1
    //   96: if_icmpeq +29 -> 125
    //   99: aload_1
    //   100: aload_0
    //   101: getfield 50	com/estrongs/io/archive/h:f	[B
    //   104: iconst_0
    //   105: iload 5
    //   107: invokevirtual 411	java/io/FileOutputStream:write	([BII)V
    //   110: aload_2
    //   111: invokeinterface 218 1 0
    //   116: istore 6
    //   118: iload 6
    //   120: ifeq +31 -> 151
    //   123: iconst_1
    //   124: istore_3
    //   125: aload_1
    //   126: invokestatic 416	com/estrongs/fs/util/j:a	(Ljava/io/OutputStream;)V
    //   129: iload_3
    //   130: ifeq +9 -> 139
    //   133: aload 8
    //   135: invokevirtual 419	java/io/File:delete	()Z
    //   138: pop
    //   139: aload 8
    //   141: areturn
    //   142: astore_1
    //   143: aload 8
    //   145: invokevirtual 419	java/io/File:delete	()Z
    //   148: pop
    //   149: aload_1
    //   150: athrow
    //   151: aload_0
    //   152: aload_0
    //   153: getfield 30	com/estrongs/io/archive/h:a	J
    //   156: iload 5
    //   158: i2l
    //   159: ladd
    //   160: putfield 30	com/estrongs/io/archive/h:a	J
    //   163: aload_2
    //   164: aload_0
    //   165: getfield 30	com/estrongs/io/archive/h:a	J
    //   168: invokeinterface 422 3 0
    //   173: goto -100 -> 73
    //   176: astore 7
    //   178: aload_1
    //   179: astore_2
    //   180: aload 7
    //   182: astore_1
    //   183: aload_2
    //   184: invokestatic 416	com/estrongs/fs/util/j:a	(Ljava/io/OutputStream;)V
    //   187: aload_1
    //   188: athrow
    //   189: astore_1
    //   190: aload 7
    //   192: astore_2
    //   193: goto -10 -> 183
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	196	0	this	h
    //   0	196	1	paramArchiveEntryFile	ArchiveEntryFile
    //   0	196	2	paramb	b
    //   92	38	3	k	int
    //   4	87	4	m	int
    //   88	69	5	n	int
    //   116	3	6	bool	boolean
    //   1	1	7	localObject1	Object
    //   176	15	7	localObject2	Object
    //   12	132	8	localFile	File
    //   61	13	9	localBufferedInputStream	java.io.BufferedInputStream
    // Exception table:
    //   from	to	target	type
    //   26	32	142	java/io/IOException
    //   73	90	176	finally
    //   99	118	176	finally
    //   151	173	176	finally
    //   32	48	189	finally
    //   48	73	189	finally
  }
  
  public void d()
  {
    j = true;
  }
  
  public boolean e()
  {
    return j;
  }
  
  public boolean e(String paramString)
  {
    return true;
  }
  
  protected void f()
  {
    d = null;
    e.clear();
  }
  
  public void f(String paramString) {}
  
  public void g()
  {
    h.clear();
    i.clear();
    d = null;
    e.clear();
    try
    {
      c();
      return;
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
    }
  }
  
  public final ArchiveEntryFile h()
  {
    if (d == null)
    {
      j = false;
      d = l();
      if (!j) {
        break label36;
      }
      f();
    }
    for (;;)
    {
      return d;
      label36:
      a.a(b, this);
    }
  }
  
  protected abstract Iterator<ArchiveEntryFile> i();
  
  public String j()
  {
    return b;
  }
  
  public boolean k()
  {
    return g;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.io.archive.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */