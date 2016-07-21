package com.estrongs.android.cleaner.scandisk.a;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import com.estrongs.android.cleaner.e;
import com.estrongs.android.cleaner.i;
import com.estrongs.android.cleaner.j;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.b;
import com.estrongs.android.pop.utils.w;
import com.estrongs.android.util.ap;
import com.estrongs.android.util.bk;
import com.estrongs.android.util.l;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicInteger;

public class g
  implements com.estrongs.android.cleaner.f
{
  protected final String a;
  private final String b = "Obsolete Apks3";
  private final int c = 4;
  private volatile boolean d = false;
  private AtomicInteger e = new AtomicInteger(0);
  private com.estrongs.android.cleaner.h f;
  private CopyOnWriteArrayList<e> g = new CopyOnWriteArrayList();
  private i h;
  private Set<String> i;
  private final PackageManager j;
  private final String k;
  private ad l;
  private Set<String> m;
  
  public g(i parami)
  {
    h = parami;
    f = new com.estrongs.android.cleaner.h(4);
    f.a(0);
    f.b(4);
    f.b("Obsolete Apks3");
    f.d(j.a(2131231175));
    j = FexApplication.a().getPackageManager();
    k = b.b();
    l = ad.a(FexApplication.a());
    a = j.a(2131231188);
  }
  
  private void a(com.estrongs.android.cleaner.h paramh, com.estrongs.fs.h paramh1)
  {
    Object localObject = null;
    paramh.c(1);
    paramh.d(paramh1.getName());
    if (i == null) {
      i = j.a();
    }
    if (m == null)
    {
      m = new HashSet();
      m.add(ap.bV("/sdcard/backups/apps"));
      m.add(ap.bV(l.y()));
    }
    String str;
    if (i == null)
    {
      paramh.b(true);
      localObject = m.iterator();
      while (((Iterator)localObject).hasNext())
      {
        str = (String)((Iterator)localObject).next();
        if (paramh1.getAbsolutePath().startsWith(str))
        {
          paramh.c(8);
          paramh.a(false);
          h.a(paramh1.getAbsolutePath(), paramh1.length(), false);
          return;
        }
      }
      paramh.c(3);
      paramh.a(true);
      h.a(paramh1.getAbsolutePath(), paramh1.length(), true);
      return;
    }
    PackageInfo localPackageInfo = w.d(j, paramh1.getAbsolutePath());
    if (localPackageInfo != null)
    {
      str = packageName;
      localObject = applicationInfo;
      sourceDir = paramh1.getAbsolutePath();
      publicSourceDir = paramh1.getAbsolutePath();
      localObject = applicationInfo.loadLabel(j).toString();
    }
    for (;;)
    {
      if (localObject != null) {
        paramh.d((String)localObject);
      }
      if ((str != null) && (i.contains(str)))
      {
        paramh.c(3);
        localObject = m.iterator();
        while (((Iterator)localObject).hasNext())
        {
          str = (String)((Iterator)localObject).next();
          if (paramh1.getAbsolutePath().startsWith(str)) {
            paramh.c(8);
          }
        }
      }
      for (boolean bool = false;; bool = true)
      {
        paramh.a(bool);
        h.a(paramh1.getAbsolutePath(), paramh1.length(), bool);
        return;
        paramh.c(4);
        break;
      }
      str = null;
    }
  }
  
  private boolean a(String paramString)
  {
    if (bk.k()) {
      if (paramString.startsWith(k)) {
        if (f.a(paramString)) {}
      }
    }
    while (!f.a(paramString))
    {
      return true;
      return false;
      return false;
    }
    return false;
  }
  
  public int a()
  {
    return 4;
  }
  
  public void a(e parame)
  {
    if (parame == null) {
      return;
    }
    l.e("Obsolete Apks3", "add callback:" + parame);
    g.add(parame);
  }
  
  /* Error */
  public void a(com.estrongs.android.cleaner.scandisk.h paramh)
  {
    // Byte code:
    //   0: invokestatic 250	com/estrongs/fs/d:a	()Lcom/estrongs/fs/d;
    //   3: astore_1
    //   4: aload_1
    //   5: ldc -4
    //   7: invokevirtual 255	com/estrongs/fs/d:a	(Ljava/lang/String;)Ljava/util/List;
    //   10: invokeinterface 258 1 0
    //   15: astore_1
    //   16: aload_1
    //   17: invokeinterface 155 1 0
    //   22: ifeq +267 -> 289
    //   25: aload_1
    //   26: invokeinterface 159 1 0
    //   31: checkcast 112	com/estrongs/fs/h
    //   34: astore_3
    //   35: aload_3
    //   36: invokeinterface 164 1 0
    //   41: astore_2
    //   42: aload_2
    //   43: ifnull -27 -> 16
    //   46: aload_0
    //   47: aload_2
    //   48: invokespecial 259	com/estrongs/android/cleaner/scandisk/a/g:a	(Ljava/lang/String;)Z
    //   51: ifeq -35 -> 16
    //   54: new 60	com/estrongs/android/cleaner/h
    //   57: dup
    //   58: aload_0
    //   59: getfield 49	com/estrongs/android/cleaner/scandisk/a/g:e	Ljava/util/concurrent/atomic/AtomicInteger;
    //   62: invokevirtual 262	java/util/concurrent/atomic/AtomicInteger:incrementAndGet	()I
    //   65: aload_0
    //   66: getfield 63	com/estrongs/android/cleaner/scandisk/a/g:f	Lcom/estrongs/android/cleaner/h;
    //   69: invokevirtual 264	com/estrongs/android/cleaner/h:b	()I
    //   72: iconst_1
    //   73: iadd
    //   74: aload_0
    //   75: getfield 63	com/estrongs/android/cleaner/scandisk/a/g:f	Lcom/estrongs/android/cleaner/h;
    //   78: invokespecial 267	com/estrongs/android/cleaner/h:<init>	(IILcom/estrongs/android/cleaner/h;)V
    //   81: astore 4
    //   83: aload 4
    //   85: iconst_4
    //   86: invokevirtual 65	com/estrongs/android/cleaner/h:a	(I)V
    //   89: aload 4
    //   91: aload_0
    //   92: invokevirtual 269	com/estrongs/android/cleaner/scandisk/a/g:a	()I
    //   95: invokevirtual 67	com/estrongs/android/cleaner/h:b	(I)V
    //   98: aload 4
    //   100: aload_3
    //   101: invokeinterface 115 1 0
    //   106: invokevirtual 70	com/estrongs/android/cleaner/h:b	(Ljava/lang/String;)V
    //   109: aload 4
    //   111: aload_3
    //   112: invokeinterface 115 1 0
    //   117: invokevirtual 78	com/estrongs/android/cleaner/h:d	(Ljava/lang/String;)V
    //   120: aload 4
    //   122: aload_2
    //   123: invokevirtual 271	com/estrongs/android/cleaner/h:a	(Ljava/lang/String;)V
    //   126: aload 4
    //   128: aload_3
    //   129: invokeinterface 174 1 0
    //   134: invokevirtual 274	com/estrongs/android/cleaner/h:a	(J)V
    //   137: aload 4
    //   139: iconst_1
    //   140: invokevirtual 110	com/estrongs/android/cleaner/h:c	(I)V
    //   143: aload 4
    //   145: aload_2
    //   146: invokestatic 275	com/estrongs/android/cleaner/j:a	(Ljava/lang/String;)Z
    //   149: invokevirtual 277	com/estrongs/android/cleaner/h:c	(Z)V
    //   152: aload_0
    //   153: aload 4
    //   155: aload_3
    //   156: invokespecial 279	com/estrongs/android/cleaner/scandisk/a/g:a	(Lcom/estrongs/android/cleaner/h;Lcom/estrongs/fs/h;)V
    //   159: aload_0
    //   160: getfield 56	com/estrongs/android/cleaner/scandisk/a/g:g	Ljava/util/concurrent/CopyOnWriteArrayList;
    //   163: invokevirtual 280	java/util/concurrent/CopyOnWriteArrayList:iterator	()Ljava/util/Iterator;
    //   166: astore_3
    //   167: aload_3
    //   168: invokeinterface 155 1 0
    //   173: ifeq -157 -> 16
    //   176: aload_3
    //   177: invokeinterface 159 1 0
    //   182: checkcast 282	com/estrongs/android/cleaner/e
    //   185: aload_2
    //   186: invokeinterface 283 2 0
    //   191: goto -24 -> 167
    //   194: astore_1
    //   195: aload_1
    //   196: invokevirtual 286	com/estrongs/fs/FileSystemException:printStackTrace	()V
    //   199: ldc 38
    //   201: new 225	java/lang/StringBuilder
    //   204: dup
    //   205: invokespecial 226	java/lang/StringBuilder:<init>	()V
    //   208: aload_0
    //   209: invokevirtual 235	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   212: ldc_w 288
    //   215: invokevirtual 232	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   218: invokevirtual 236	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   221: invokestatic 241	com/estrongs/android/util/l:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   224: aload_0
    //   225: getfield 56	com/estrongs/android/cleaner/scandisk/a/g:g	Ljava/util/concurrent/CopyOnWriteArrayList;
    //   228: invokevirtual 280	java/util/concurrent/CopyOnWriteArrayList:iterator	()Ljava/util/Iterator;
    //   231: astore_1
    //   232: aload_1
    //   233: invokeinterface 155 1 0
    //   238: ifeq +147 -> 385
    //   241: aload_1
    //   242: invokeinterface 159 1 0
    //   247: checkcast 282	com/estrongs/android/cleaner/e
    //   250: astore_2
    //   251: ldc 38
    //   253: new 225	java/lang/StringBuilder
    //   256: dup
    //   257: invokespecial 226	java/lang/StringBuilder:<init>	()V
    //   260: ldc_w 290
    //   263: invokevirtual 232	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   266: aload_2
    //   267: invokevirtual 235	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   270: invokevirtual 236	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   273: invokestatic 292	com/estrongs/android/util/l:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   276: aload_2
    //   277: aload_0
    //   278: getfield 63	com/estrongs/android/cleaner/scandisk/a/g:f	Lcom/estrongs/android/cleaner/h;
    //   281: invokeinterface 295 2 0
    //   286: goto -54 -> 232
    //   289: ldc 38
    //   291: new 225	java/lang/StringBuilder
    //   294: dup
    //   295: invokespecial 226	java/lang/StringBuilder:<init>	()V
    //   298: aload_0
    //   299: invokevirtual 235	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   302: ldc_w 288
    //   305: invokevirtual 232	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   308: invokevirtual 236	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   311: invokestatic 241	com/estrongs/android/util/l:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   314: aload_0
    //   315: getfield 56	com/estrongs/android/cleaner/scandisk/a/g:g	Ljava/util/concurrent/CopyOnWriteArrayList;
    //   318: invokevirtual 280	java/util/concurrent/CopyOnWriteArrayList:iterator	()Ljava/util/Iterator;
    //   321: astore_1
    //   322: aload_1
    //   323: invokeinterface 155 1 0
    //   328: ifeq +51 -> 379
    //   331: aload_1
    //   332: invokeinterface 159 1 0
    //   337: checkcast 282	com/estrongs/android/cleaner/e
    //   340: astore_2
    //   341: ldc 38
    //   343: new 225	java/lang/StringBuilder
    //   346: dup
    //   347: invokespecial 226	java/lang/StringBuilder:<init>	()V
    //   350: ldc_w 290
    //   353: invokevirtual 232	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   356: aload_2
    //   357: invokevirtual 235	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   360: invokevirtual 236	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   363: invokestatic 292	com/estrongs/android/util/l:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   366: aload_2
    //   367: aload_0
    //   368: getfield 63	com/estrongs/android/cleaner/scandisk/a/g:f	Lcom/estrongs/android/cleaner/h;
    //   371: invokeinterface 295 2 0
    //   376: goto -54 -> 322
    //   379: aload_0
    //   380: iconst_1
    //   381: putfield 51	com/estrongs/android/cleaner/scandisk/a/g:d	Z
    //   384: return
    //   385: aload_0
    //   386: iconst_1
    //   387: putfield 51	com/estrongs/android/cleaner/scandisk/a/g:d	Z
    //   390: return
    //   391: astore_1
    //   392: ldc 38
    //   394: new 225	java/lang/StringBuilder
    //   397: dup
    //   398: invokespecial 226	java/lang/StringBuilder:<init>	()V
    //   401: aload_0
    //   402: invokevirtual 235	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   405: ldc_w 288
    //   408: invokevirtual 232	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   411: invokevirtual 236	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   414: invokestatic 241	com/estrongs/android/util/l:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   417: aload_0
    //   418: getfield 56	com/estrongs/android/cleaner/scandisk/a/g:g	Ljava/util/concurrent/CopyOnWriteArrayList;
    //   421: invokevirtual 280	java/util/concurrent/CopyOnWriteArrayList:iterator	()Ljava/util/Iterator;
    //   424: astore_2
    //   425: aload_2
    //   426: invokeinterface 155 1 0
    //   431: ifeq +51 -> 482
    //   434: aload_2
    //   435: invokeinterface 159 1 0
    //   440: checkcast 282	com/estrongs/android/cleaner/e
    //   443: astore_3
    //   444: ldc 38
    //   446: new 225	java/lang/StringBuilder
    //   449: dup
    //   450: invokespecial 226	java/lang/StringBuilder:<init>	()V
    //   453: ldc_w 290
    //   456: invokevirtual 232	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   459: aload_3
    //   460: invokevirtual 235	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   463: invokevirtual 236	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   466: invokestatic 292	com/estrongs/android/util/l:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   469: aload_3
    //   470: aload_0
    //   471: getfield 63	com/estrongs/android/cleaner/scandisk/a/g:f	Lcom/estrongs/android/cleaner/h;
    //   474: invokeinterface 295 2 0
    //   479: goto -54 -> 425
    //   482: aload_0
    //   483: iconst_1
    //   484: putfield 51	com/estrongs/android/cleaner/scandisk/a/g:d	Z
    //   487: aload_1
    //   488: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	489	0	this	g
    //   0	489	1	paramh	com.estrongs.android.cleaner.scandisk.h
    //   41	394	2	localObject1	Object
    //   34	436	3	localObject2	Object
    //   81	73	4	localh	com.estrongs.android.cleaner.h
    // Exception table:
    //   from	to	target	type
    //   4	16	194	com/estrongs/fs/FileSystemException
    //   16	42	194	com/estrongs/fs/FileSystemException
    //   46	167	194	com/estrongs/fs/FileSystemException
    //   167	191	194	com/estrongs/fs/FileSystemException
    //   4	16	391	finally
    //   16	42	391	finally
    //   46	167	391	finally
    //   167	191	391	finally
    //   195	199	391	finally
  }
  
  public void b()
  {
    l.e("Obsolete Apks3", this + " start...");
    e.set(0);
  }
  
  public void b(e parame)
  {
    l.e("Obsolete Apks3", "remove callback:" + parame);
    g.remove(parame);
  }
  
  public List<String> c()
  {
    return null;
  }
  
  public void c(e parame)
  {
    l.e("Obsolete Apks3", this + " finish");
    if ((d) && (parame != null))
    {
      l.c("Obsolete Apks3", "finish on: " + parame);
      parame.b(f);
    }
  }
  
  public com.estrongs.android.cleaner.h d()
  {
    return f;
  }
  
  public void e() {}
  
  public String toString()
  {
    return "Filter:Obsolete Apks3";
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.cleaner.scandisk.a.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */