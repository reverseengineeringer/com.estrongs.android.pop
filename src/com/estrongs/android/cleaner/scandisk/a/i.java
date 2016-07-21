package com.estrongs.android.cleaner.scandisk.a;

import com.estrongs.android.appinfo.w;
import com.estrongs.android.cleaner.e;
import com.estrongs.android.cleaner.j;
import com.estrongs.android.pop.b;
import com.estrongs.android.util.bg;
import com.estrongs.android.util.bk;
import com.estrongs.android.util.l;
import java.io.File;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicInteger;

public class i
  implements com.estrongs.android.cleaner.f
{
  private final String a = "Residual Junk";
  private final int b = 6;
  private boolean c = false;
  private AtomicInteger d = new AtomicInteger(0);
  private com.estrongs.android.cleaner.h e;
  private CopyOnWriteArrayList<e> f = new CopyOnWriteArrayList();
  private com.estrongs.android.cleaner.i g;
  private ConcurrentHashMap<String, com.estrongs.android.cleaner.h> h;
  private final String i;
  
  public i(com.estrongs.android.cleaner.i parami)
  {
    g = parami;
    e = new com.estrongs.android.cleaner.h(6);
    e.a(0);
    e.b(6);
    e.b("Residual Junk");
    e.d(j.a(2131231181));
    e.a(true);
    h = new ConcurrentHashMap();
    i = b.b();
  }
  
  private com.estrongs.android.cleaner.h a(w paramw, String paramString)
  {
    com.estrongs.android.cleaner.h localh2 = (com.estrongs.android.cleaner.h)h.get(paramw.b());
    com.estrongs.android.cleaner.h localh1 = localh2;
    if (localh2 == null)
    {
      localh2 = new com.estrongs.android.cleaner.h(d.incrementAndGet(), e.b() + 1, e);
      localh2.a(6);
      localh2.b(6);
      localh2.a(paramString);
      localh2.b(paramw.b());
      localh2.c(9);
      localh2.d(paramw.a());
      localh2.a(true);
      localh1 = localh2;
      if (new com.estrongs.fs.impl.local.f(new File(paramw.c())).exists())
      {
        localh2.a(paramw.c());
        localh1 = localh2;
      }
    }
    localh1.e(paramString);
    h.put(paramw.b(), localh1);
    return localh1;
  }
  
  private k a(File paramFile)
  {
    boolean bool1 = true;
    int j = 0;
    k localk = new k(this, null);
    a = 0L;
    b = false;
    Object localObject;
    if ((paramFile.exists()) && (paramFile.isFile()))
    {
      a = paramFile.length();
      boolean bool2 = bg.f(paramFile.getAbsolutePath());
      if (bool2) {
        b = true;
      }
      localObject = g;
      paramFile = paramFile.getAbsolutePath();
      long l = a;
      if (!bool2) {
        ((com.estrongs.android.cleaner.i)localObject).a(paramFile, l, bool1);
      }
    }
    for (;;)
    {
      return localk;
      bool1 = false;
      break;
      paramFile = paramFile.listFiles();
      if ((paramFile == null) || (paramFile.length == 0))
      {
        a = 0L;
        return localk;
      }
      int k = paramFile.length;
      while (j < k)
      {
        localObject = a(paramFile[j]);
        a += a;
        if (b) {
          b = true;
        }
        j += 1;
      }
    }
  }
  
  private void a(com.estrongs.android.cleaner.h paramh, String paramString, File paramFile)
  {
    k localk = a(paramFile);
    if (paramFile.isDirectory())
    {
      if (b)
      {
        File[] arrayOfFile = paramFile.listFiles();
        if ((arrayOfFile == null) || (arrayOfFile.length == 0)) {
          a(paramh, paramString, paramFile, localk);
        }
        for (;;)
        {
          return;
          int k = arrayOfFile.length;
          int j = 0;
          while (j < k)
          {
            a(paramh, paramString, arrayOfFile[j]);
            j += 1;
          }
        }
      }
      a(paramh, paramString, paramFile, localk);
      return;
    }
    a(paramh, paramString, paramFile, localk);
  }
  
  private void a(com.estrongs.android.cleaner.h paramh, String paramString, File paramFile, k paramk)
  {
    com.estrongs.fs.impl.local.f localf = new com.estrongs.fs.impl.local.f(paramFile);
    boolean bool;
    com.estrongs.android.cleaner.h localh;
    try
    {
      bool = localf.exists();
      if (!bool) {
        return;
      }
    }
    catch (Exception localException)
    {
      d.incrementAndGet();
      localh = new com.estrongs.android.cleaner.h(d.get(), paramh.b() + 1, paramh);
      localh.b(6);
      localh.a(localf.getAbsolutePath());
      localh.b(localf.getName());
      localh.a(4);
      localh.a(a);
      localh.c(paramh.n());
      localh.d(paramh.o());
      localh.c(a(localf.getAbsolutePath()));
      bool = bg.f(paramFile.getAbsolutePath());
      if (!bool) {
        break label238;
      }
    }
    localh.a(false);
    for (;;)
    {
      localh.d(bool);
      if (bool) {
        paramh.c(6);
      }
      h.put(paramString, paramh);
      paramh = f.iterator();
      while (paramh.hasNext())
      {
        paramString = (e)paramh.next();
        paramString.a(localh);
        paramString.a(localf.getAbsolutePath());
      }
      break;
      label238:
      localh.c(9);
      localh.a(true);
    }
  }
  
  private boolean b(String paramString)
  {
    return (!bk.k()) || (paramString.startsWith(i));
  }
  
  public int a()
  {
    return 6;
  }
  
  public void a(e parame)
  {
    if (parame == null) {
      return;
    }
    l.e("Residual Junk", "add callback:" + parame);
    f.add(parame);
  }
  
  /* Error */
  public void a(com.estrongs.android.cleaner.scandisk.h paramh)
  {
    // Byte code:
    //   0: invokestatic 271	com/estrongs/android/appinfo/AppFolderInfoManager:d	()Lcom/estrongs/android/appinfo/AppFolderInfoManager;
    //   3: astore_1
    //   4: aload_1
    //   5: invokevirtual 274	com/estrongs/android/appinfo/AppFolderInfoManager:e	()Ljava/util/List;
    //   8: invokeinterface 277 1 0
    //   13: astore_2
    //   14: aload_2
    //   15: invokeinterface 220 1 0
    //   20: ifeq +231 -> 251
    //   23: aload_2
    //   24: invokeinterface 224 1 0
    //   29: checkcast 91	com/estrongs/android/appinfo/w
    //   32: astore_3
    //   33: aload_3
    //   34: invokevirtual 92	com/estrongs/android/appinfo/w:b	()Ljava/lang/String;
    //   37: invokestatic 283	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   40: ifne -26 -> 14
    //   43: aload_1
    //   44: aload_3
    //   45: invokevirtual 92	com/estrongs/android/appinfo/w:b	()Ljava/lang/String;
    //   48: invokevirtual 286	com/estrongs/android/appinfo/AppFolderInfoManager:e	(Ljava/lang/String;)Ljava/util/ArrayList;
    //   51: astore 4
    //   53: aload 4
    //   55: ifnull -41 -> 14
    //   58: aload 4
    //   60: invokevirtual 290	java/util/ArrayList:isEmpty	()Z
    //   63: ifne -49 -> 14
    //   66: aload 4
    //   68: invokevirtual 291	java/util/ArrayList:iterator	()Ljava/util/Iterator;
    //   71: astore 4
    //   73: aload 4
    //   75: invokeinterface 220 1 0
    //   80: ifeq -66 -> 14
    //   83: aload 4
    //   85: invokeinterface 224 1 0
    //   90: checkcast 293	com/estrongs/android/appinfo/AppFolderInfoManager$RemnantFolder
    //   93: astore 5
    //   95: new 115	java/io/File
    //   98: dup
    //   99: aload 5
    //   101: getfield 294	com/estrongs/android/appinfo/AppFolderInfoManager$RemnantFolder:a	Ljava/lang/String;
    //   104: invokespecial 119	java/io/File:<init>	(Ljava/lang/String;)V
    //   107: astore 6
    //   109: aload 5
    //   111: getfield 295	com/estrongs/android/appinfo/AppFolderInfoManager$RemnantFolder:b	Z
    //   114: ifne -41 -> 73
    //   117: aload 6
    //   119: invokevirtual 149	java/io/File:exists	()Z
    //   122: ifeq -49 -> 73
    //   125: aload_0
    //   126: aload 5
    //   128: getfield 294	com/estrongs/android/appinfo/AppFolderInfoManager$RemnantFolder:a	Ljava/lang/String;
    //   131: invokespecial 297	com/estrongs/android/cleaner/scandisk/a/i:b	(Ljava/lang/String;)Z
    //   134: ifeq -61 -> 73
    //   137: aload_0
    //   138: aload_0
    //   139: aload_3
    //   140: aload 5
    //   142: getfield 294	com/estrongs/android/appinfo/AppFolderInfoManager$RemnantFolder:a	Ljava/lang/String;
    //   145: invokespecial 299	com/estrongs/android/cleaner/scandisk/a/i:a	(Lcom/estrongs/android/appinfo/w;Ljava/lang/String;)Lcom/estrongs/android/cleaner/h;
    //   148: aload_3
    //   149: invokevirtual 92	com/estrongs/android/appinfo/w:b	()Ljava/lang/String;
    //   152: aload 6
    //   154: invokespecial 184	com/estrongs/android/cleaner/scandisk/a/i:a	(Lcom/estrongs/android/cleaner/h;Ljava/lang/String;Ljava/io/File;)V
    //   157: goto -84 -> 73
    //   160: astore_1
    //   161: ldc 32
    //   163: new 243	java/lang/StringBuilder
    //   166: dup
    //   167: invokespecial 244	java/lang/StringBuilder:<init>	()V
    //   170: aload_0
    //   171: invokevirtual 253	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   174: ldc_w 301
    //   177: invokevirtual 250	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   180: invokevirtual 256	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   183: invokestatic 261	com/estrongs/android/util/l:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   186: aload_0
    //   187: getfield 50	com/estrongs/android/cleaner/scandisk/a/i:f	Ljava/util/concurrent/CopyOnWriteArrayList;
    //   190: invokevirtual 215	java/util/concurrent/CopyOnWriteArrayList:iterator	()Ljava/util/Iterator;
    //   193: astore_1
    //   194: aload_1
    //   195: invokeinterface 220 1 0
    //   200: ifeq +147 -> 347
    //   203: aload_1
    //   204: invokeinterface 224 1 0
    //   209: checkcast 226	com/estrongs/android/cleaner/e
    //   212: astore_2
    //   213: ldc 32
    //   215: new 243	java/lang/StringBuilder
    //   218: dup
    //   219: invokespecial 244	java/lang/StringBuilder:<init>	()V
    //   222: ldc_w 303
    //   225: invokevirtual 250	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   228: aload_2
    //   229: invokevirtual 253	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   232: invokevirtual 256	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   235: invokestatic 305	com/estrongs/android/util/l:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   238: aload_2
    //   239: aload_0
    //   240: getfield 57	com/estrongs/android/cleaner/scandisk/a/i:e	Lcom/estrongs/android/cleaner/h;
    //   243: invokeinterface 307 2 0
    //   248: goto -54 -> 194
    //   251: ldc 32
    //   253: new 243	java/lang/StringBuilder
    //   256: dup
    //   257: invokespecial 244	java/lang/StringBuilder:<init>	()V
    //   260: aload_0
    //   261: invokevirtual 253	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   264: ldc_w 301
    //   267: invokevirtual 250	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   270: invokevirtual 256	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   273: invokestatic 261	com/estrongs/android/util/l:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   276: aload_0
    //   277: getfield 50	com/estrongs/android/cleaner/scandisk/a/i:f	Ljava/util/concurrent/CopyOnWriteArrayList;
    //   280: invokevirtual 215	java/util/concurrent/CopyOnWriteArrayList:iterator	()Ljava/util/Iterator;
    //   283: astore_1
    //   284: aload_1
    //   285: invokeinterface 220 1 0
    //   290: ifeq +51 -> 341
    //   293: aload_1
    //   294: invokeinterface 224 1 0
    //   299: checkcast 226	com/estrongs/android/cleaner/e
    //   302: astore_2
    //   303: ldc 32
    //   305: new 243	java/lang/StringBuilder
    //   308: dup
    //   309: invokespecial 244	java/lang/StringBuilder:<init>	()V
    //   312: ldc_w 303
    //   315: invokevirtual 250	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   318: aload_2
    //   319: invokevirtual 253	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   322: invokevirtual 256	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   325: invokestatic 305	com/estrongs/android/util/l:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   328: aload_2
    //   329: aload_0
    //   330: getfield 57	com/estrongs/android/cleaner/scandisk/a/i:e	Lcom/estrongs/android/cleaner/h;
    //   333: invokeinterface 307 2 0
    //   338: goto -54 -> 284
    //   341: aload_0
    //   342: iconst_1
    //   343: putfield 45	com/estrongs/android/cleaner/scandisk/a/i:c	Z
    //   346: return
    //   347: aload_0
    //   348: iconst_1
    //   349: putfield 45	com/estrongs/android/cleaner/scandisk/a/i:c	Z
    //   352: return
    //   353: astore_1
    //   354: ldc 32
    //   356: new 243	java/lang/StringBuilder
    //   359: dup
    //   360: invokespecial 244	java/lang/StringBuilder:<init>	()V
    //   363: aload_0
    //   364: invokevirtual 253	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   367: ldc_w 301
    //   370: invokevirtual 250	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   373: invokevirtual 256	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   376: invokestatic 261	com/estrongs/android/util/l:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   379: aload_0
    //   380: getfield 50	com/estrongs/android/cleaner/scandisk/a/i:f	Ljava/util/concurrent/CopyOnWriteArrayList;
    //   383: invokevirtual 215	java/util/concurrent/CopyOnWriteArrayList:iterator	()Ljava/util/Iterator;
    //   386: astore_2
    //   387: aload_2
    //   388: invokeinterface 220 1 0
    //   393: ifeq +51 -> 444
    //   396: aload_2
    //   397: invokeinterface 224 1 0
    //   402: checkcast 226	com/estrongs/android/cleaner/e
    //   405: astore_3
    //   406: ldc 32
    //   408: new 243	java/lang/StringBuilder
    //   411: dup
    //   412: invokespecial 244	java/lang/StringBuilder:<init>	()V
    //   415: ldc_w 303
    //   418: invokevirtual 250	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   421: aload_3
    //   422: invokevirtual 253	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   425: invokevirtual 256	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   428: invokestatic 305	com/estrongs/android/util/l:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   431: aload_3
    //   432: aload_0
    //   433: getfield 57	com/estrongs/android/cleaner/scandisk/a/i:e	Lcom/estrongs/android/cleaner/h;
    //   436: invokeinterface 307 2 0
    //   441: goto -54 -> 387
    //   444: aload_0
    //   445: iconst_1
    //   446: putfield 45	com/estrongs/android/cleaner/scandisk/a/i:c	Z
    //   449: aload_1
    //   450: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	451	0	this	i
    //   0	451	1	paramh	com.estrongs.android.cleaner.scandisk.h
    //   13	384	2	localObject1	Object
    //   32	400	3	localObject2	Object
    //   51	33	4	localObject3	Object
    //   93	48	5	localRemnantFolder	com.estrongs.android.appinfo.AppFolderInfoManager.RemnantFolder
    //   107	46	6	localFile	File
    // Exception table:
    //   from	to	target	type
    //   0	14	160	java/lang/Exception
    //   14	53	160	java/lang/Exception
    //   58	73	160	java/lang/Exception
    //   73	157	160	java/lang/Exception
    //   0	14	353	finally
    //   14	53	353	finally
    //   58	73	353	finally
    //   73	157	353	finally
  }
  
  public boolean a(String paramString)
  {
    return !paramString.startsWith(b.b());
  }
  
  public void b()
  {
    l.e("Residual Junk", this + " start...");
  }
  
  public void b(e parame)
  {
    l.e("Residual Junk", "remove callback:" + parame);
    f.remove(parame);
  }
  
  public List<String> c()
  {
    return null;
  }
  
  public void c(e parame)
  {
    if ((c) && (parame != null))
    {
      l.c("Residual Junk", "finish on: " + parame);
      parame.b(e);
    }
  }
  
  public com.estrongs.android.cleaner.h d()
  {
    return e;
  }
  
  public void e() {}
  
  public String toString()
  {
    return "Filter:Residual Junk";
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.cleaner.scandisk.a.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */