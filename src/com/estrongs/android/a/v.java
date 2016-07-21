package com.estrongs.android.a;

import com.estrongs.android.a.a.aa;
import com.estrongs.android.a.a.ab;
import com.estrongs.android.a.a.ad;
import com.estrongs.android.a.a.c;
import com.estrongs.android.a.a.d;
import com.estrongs.android.a.a.h;
import com.estrongs.android.a.a.r;
import com.estrongs.android.a.a.s;
import com.estrongs.android.a.b.b;
import com.estrongs.android.a.b.g;
import com.estrongs.android.a.b.m;
import com.estrongs.android.util.ap;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CyclicBarrier;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.atomic.AtomicInteger;

public class v
{
  private static final String a = v.class.getSimpleName();
  private final BlockingQueue<File> b = new LinkedBlockingQueue();
  private final BlockingQueue<am> c = new LinkedBlockingQueue();
  private ExecutorService d;
  private ExecutorService e;
  private volatile boolean f;
  private volatile boolean g;
  private volatile boolean h;
  private final AtomicInteger i = new AtomicInteger(0);
  private final AtomicInteger j = new AtomicInteger(0);
  private final j k;
  private final al l;
  private final CyclicBarrier m;
  private CyclicBarrier n;
  private ConcurrentHashMap<String, com.estrongs.android.a.b.i> o;
  private final com.estrongs.android.a.a.e[] p;
  private final com.estrongs.android.a.a.k[] q;
  private Runnable r = new w(this);
  
  public v(j paramj)
  {
    k = paramj;
    l = new al();
    m = new CyclicBarrier(10);
    o = new ConcurrentHashMap();
    p = new com.estrongs.android.a.a.e[8];
    q = new com.estrongs.android.a.a.k[6];
  }
  
  private com.estrongs.android.a.b.q a(ai paramai)
  {
    com.estrongs.android.a.a.e[] arrayOfe = p;
    int i2 = arrayOfe.length;
    com.estrongs.android.a.b.q localq = null;
    int i1 = 0;
    for (;;)
    {
      if (i1 < i2)
      {
        localq = arrayOfe[i1].c(paramai);
        if (localq == null) {}
      }
      else
      {
        return localq;
      }
      i1 += 1;
    }
  }
  
  private void a(am paramam)
  {
    int i2 = 0;
    Object localObject = paramam.d();
    aj[] arrayOfaj = paramam.e();
    com.estrongs.android.a.b.l[] arrayOfl = new com.estrongs.android.a.b.l[localObject.length];
    com.estrongs.android.a.b.k[] arrayOfk = new com.estrongs.android.a.b.k[arrayOfaj.length];
    int i1 = 0;
    while (i1 < localObject.length)
    {
      arrayOfl[i1] = ((com.estrongs.android.a.b.l)a(localObject[i1]));
      i1 += 1;
    }
    i1 = 0;
    while (i1 < arrayOfaj.length)
    {
      arrayOfk[i1] = ((com.estrongs.android.a.b.k)a(arrayOfaj[i1]));
      i1 += 1;
    }
    paramam = new a(paramam.a(), arrayOfl, arrayOfk, paramam.b(), paramam.c());
    localObject = q;
    int i3 = localObject.length;
    i1 = i2;
    while (i1 < i3)
    {
      localObject[i1].a(paramam);
      i1 += 1;
    }
  }
  
  private void a(File paramFile)
  {
    Object localObject2 = paramFile.listFiles();
    if (localObject2 == null) {
      return;
    }
    if (localObject2.length == 0)
    {
      paramFile = new am(paramFile.getPath(), paramFile.lastModified());
      j.incrementAndGet();
      c.put(paramFile);
      return;
    }
    int i1 = 0;
    int i3 = 0;
    long l1 = 0L;
    int i4 = 0;
    int i2 = 0;
    Object localObject1 = new File[localObject2.length];
    File[] arrayOfFile = new File[localObject2.length];
    int i8 = localObject2.length;
    int i5 = 0;
    if (i5 < i8)
    {
      arrayOfak = localObject2[i5];
      int i6;
      if (arrayOfak.isDirectory()) {
        if (l.a(arrayOfak.getPath()))
        {
          com.estrongs.android.util.l.e(a, "ignore: " + arrayOfak.getPath());
          i6 = i2 + 1;
          i2 = i4;
          i4 = i1;
          i1 = i6;
        }
      }
      for (;;)
      {
        i5 += 1;
        i6 = i1;
        int i7 = i2;
        i1 = i4;
        i2 = i6;
        i4 = i7;
        break;
        localObject1[i3] = arrayOfak;
        i3 += 1;
        i6 = i1;
        i1 = i2;
        i2 = i4;
        i4 = i6;
        continue;
        if (l.b(arrayOfak.getName()))
        {
          i6 = i4 + 1;
          i4 = i1;
          i1 = i2;
          i2 = i6;
        }
        else
        {
          arrayOfFile[i1] = arrayOfak;
          l1 += arrayOfak.length();
          i6 = i1 + 1;
          i1 = i2;
          i2 = i4;
          i4 = i6;
        }
      }
    }
    localObject2 = paramFile.getPath();
    ak[] arrayOfak = new ak[i3];
    i5 = 0;
    while (i5 < i3)
    {
      i.incrementAndGet();
      b.put(localObject1[i5]);
      arrayOfak[i5] = new ak(localObject1[i5].getPath());
      i5 += 1;
    }
    localObject1 = new aj[i1];
    i3 = 0;
    while (i3 < i1)
    {
      localObject1[i3] = new aj((String)localObject2, arrayOfFile[i3]);
      i3 += 1;
    }
    paramFile = new am((String)localObject2, arrayOfak, (aj[])localObject1, l1, paramFile.lastModified());
    paramFile.a(i4, i2);
    j.incrementAndGet();
    c.put(paramFile);
  }
  
  private final boolean d()
  {
    if ((i.get() == 0) && (b.isEmpty()))
    {
      com.estrongs.android.util.l.c(a, "check the scanner finished!");
      synchronized (b)
      {
        if (!f) {
          return true;
        }
        f = false;
      }
      try
      {
        j.incrementAndGet();
        c.put(new am());
        return true;
        localObject = finally;
        throw ((Throwable)localObject);
      }
      catch (InterruptedException localInterruptedException)
      {
        for (;;)
        {
          localInterruptedException.printStackTrace();
        }
      }
    }
    return false;
  }
  
  private boolean d(List<String> paramList)
  {
    com.estrongs.android.util.l.b(a, "prepare for scanning...");
    if ((paramList == null) || (paramList.isEmpty())) {
      return false;
    }
    ArrayList localArrayList = new ArrayList(paramList.size());
    Iterator localIterator = paramList.iterator();
    boolean bool = false;
    for (;;)
    {
      if (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        if (str == null) {
          continue;
        }
        com.estrongs.android.util.l.c(a, "start path: " + str);
        File localFile = new File(str);
        if (!localFile.exists())
        {
          com.estrongs.android.util.l.c(a, "no exist path!: " + str);
          localArrayList.add(str);
          continue;
        }
        try
        {
          i.incrementAndGet();
          b.put(localFile);
          bool = true;
        }
        catch (InterruptedException localInterruptedException)
        {
          for (;;)
          {
            localInterruptedException.printStackTrace();
          }
        }
      }
    }
    paramList.removeAll(localArrayList);
    return bool;
  }
  
  private void e()
  {
    int i1 = 0;
    com.estrongs.android.util.l.b(a, "start annalyze...");
    g = true;
    h = false;
    y localy = new y(this, "Disk Analyzer");
    int i2 = Runtime.getRuntime().availableProcessors() + 2;
    e = Executors.newFixedThreadPool(i2, localy);
    n = new CyclicBarrier(i2);
    while (i1 < i2)
    {
      e.execute(new x(this));
      i1 += 1;
    }
  }
  
  private void e(List<String> paramList)
  {
    int i2 = 0;
    com.estrongs.android.util.l.e(a, "buildDiskAnalysis!!");
    o = new ConcurrentHashMap();
    p[0] = new aa();
    p[1] = new r();
    p[2] = new ad();
    p[3] = new com.estrongs.android.a.a.p();
    p[4] = new d();
    p[5] = new h(o);
    p[6] = new com.estrongs.android.a.a.a();
    p[7] = new com.estrongs.android.a.a.j();
    q[0] = new ab();
    q[1] = new c();
    q[3] = new com.estrongs.android.a.a.i(o);
    q[4] = new s();
    q[5] = new com.estrongs.android.a.a.v(0);
    q[2] = new com.estrongs.android.a.a.u();
    Object localObject1 = p;
    int i3 = localObject1.length;
    int i1 = 0;
    Object localObject2;
    if (i1 < i3)
    {
      localObject2 = localObject1[i1];
      if (localObject2 == null) {}
      for (;;)
      {
        i1 += 1;
        break;
        ((com.estrongs.android.a.a.e)localObject2).a();
        ((com.estrongs.android.a.a.e)localObject2).a(paramList);
      }
    }
    localObject1 = q;
    i3 = localObject1.length;
    i1 = i2;
    if (i1 < i3)
    {
      localObject2 = localObject1[i1];
      if (localObject2 == null) {}
      for (;;)
      {
        i1 += 1;
        break;
        ((com.estrongs.android.a.a.k)localObject2).c_();
        ((com.estrongs.android.a.a.k)localObject2).a(paramList);
      }
    }
  }
  
  private final boolean f()
  {
    boolean bool = true;
    if (h) {
      com.estrongs.android.util.l.c(a, "Scan Tracer: " + i.get() + ", Queue: " + b.size() + "/Analyze Tracer: " + j.get() + ", Queue: " + c.size());
    }
    if ((h) && (j.get() == 0) && (c.isEmpty()))
    {
      com.estrongs.android.util.l.c(a, "check the analyzer finished!");
      synchronized (c)
      {
        if (!g) {
          return true;
        }
        g = false;
        g();
        if (k == null) {
          return bool;
        }
        k.a(null);
        return true;
      }
    }
    bool = false;
    return bool;
  }
  
  private void g()
  {
    int i2 = 0;
    Object localObject = p;
    int i3 = localObject.length;
    int i1 = 0;
    while (i1 < i3)
    {
      localObject[i1].b();
      i1 += 1;
    }
    localObject = q;
    i3 = localObject.length;
    i1 = i2;
    while (i1 < i3)
    {
      localObject[i1].b();
      i1 += 1;
    }
  }
  
  public com.estrongs.android.a.b.a a(String paramString)
  {
    return z.a(paramString, q[1]);
  }
  
  public com.estrongs.android.a.b.a a(String paramString, int paramInt)
  {
    return z.a(q[1], paramInt);
  }
  
  public void a()
  {
    try
    {
      com.estrongs.android.util.l.b(a, "cancel...");
      if (d != null)
      {
        f = false;
        b.clear();
        d.shutdownNow();
        d = null;
      }
      if (e != null)
      {
        g = false;
        c.clear();
        e.shutdownNow();
        e = null;
      }
      return;
    }
    finally {}
  }
  
  public void a(List<String> paramList)
  {
    int i1 = 0;
    i.set(0);
    j.set(0);
    f = true;
    if (!d(paramList))
    {
      com.estrongs.android.util.l.b(a, "fail to prepare for scanning...");
      if (k != null) {
        k.a(null);
      }
    }
    for (;;)
    {
      return;
      e(paramList);
      e();
      paramList = new y(this, "Disk Scanner");
      com.estrongs.android.util.l.b(a, "start scan...");
      d = Executors.newFixedThreadPool(10, paramList);
      while (i1 < 10)
      {
        d.execute(r);
        i1 += 1;
      }
    }
  }
  
  public com.estrongs.android.a.b.a b()
  {
    int i1 = 0;
    long l1 = 0L;
    ArrayList localArrayList = new ArrayList();
    Map localMap = ((com.estrongs.android.a.a.i)q[3]).d();
    Iterator localIterator = localMap.keySet().iterator();
    int i2 = 0;
    while (localIterator.hasNext())
    {
      com.estrongs.android.a.b.i locali = (com.estrongs.android.a.b.i)localMap.get((String)localIterator.next());
      if ((locali != null) && (locali.h()))
      {
        i2 += locali.b();
        i1 += locali.c();
        l1 += locali.d();
        localArrayList.add(locali.a());
      }
    }
    return new com.estrongs.android.a.b.a(localArrayList, i1, i2, l1);
  }
  
  public com.estrongs.android.a.b.a b(String paramString, int paramInt)
  {
    return z.a(q[5], paramInt);
  }
  
  public com.estrongs.android.a.b.u b(String paramString)
  {
    return z.a(paramString, (com.estrongs.android.a.a.v)q[5]);
  }
  
  public void b(List<com.estrongs.android.a.b.q> paramList)
  {
    com.estrongs.android.a.a.k[] arrayOfk = q;
    int i2 = arrayOfk.length;
    int i1 = 0;
    if (i1 < i2)
    {
      com.estrongs.android.a.a.k localk = arrayOfk[i1];
      if (localk == null) {}
      for (;;)
      {
        i1 += 1;
        break;
        localk.b(paramList);
      }
    }
  }
  
  public com.estrongs.android.a.b.a c(String paramString)
  {
    return z.a(paramString, q[4]);
  }
  
  public com.estrongs.android.a.b.a c(String paramString, int paramInt)
  {
    return z.a(q[4], paramInt);
  }
  
  public void c(List<com.estrongs.android.a.b.q> paramList)
  {
    ((com.estrongs.android.a.a.i)q[3]).b(paramList);
  }
  
  public com.estrongs.android.a.b.a d(String paramString)
  {
    return z.a(paramString, q[0]);
  }
  
  public com.estrongs.android.a.b.a d(String paramString, int paramInt)
  {
    return z.a(q[0], paramInt);
  }
  
  public com.estrongs.android.a.b.a e(String paramString, int paramInt)
  {
    long l1 = 0L;
    paramString = new ArrayList(2);
    Iterator localIterator = q[2].e().iterator();
    paramInt = 0;
    com.estrongs.android.a.b.q localq;
    while (localIterator.hasNext())
    {
      localq = (com.estrongs.android.a.b.q)localIterator.next();
      if (paramInt < 2) {
        paramString.add(((com.estrongs.android.a.b.k)localq).a());
      }
      l1 += localq.d();
      paramInt += 1;
    }
    localIterator = ((com.estrongs.android.a.a.i)q[3]).c().iterator();
    while (localIterator.hasNext())
    {
      localq = (com.estrongs.android.a.b.q)localIterator.next();
      if (paramInt < 2) {
        paramString.add(((com.estrongs.android.a.b.l)localq).a());
      }
      paramInt += 1;
    }
    return new com.estrongs.android.a.b.a(paramString, 0, paramInt, l1);
  }
  
  public m e(String paramString)
  {
    Object localObject1;
    Object localObject2;
    long l1;
    Object localObject4;
    if (ap.bl(paramString))
    {
      localObject3 = q[2].e();
      paramString = new LinkedList();
      localObject1 = new LinkedList();
      localObject2 = new LinkedList();
      localObject3 = ((List)localObject3).iterator();
      l1 = 0L;
      int i1 = 0;
      if (((Iterator)localObject3).hasNext())
      {
        localObject4 = (com.estrongs.android.a.b.q)((Iterator)localObject3).next();
        int i2 = i1;
        long l2 = l1;
        if (((com.estrongs.android.a.b.q)localObject4).h())
        {
          i2 = i1 + 1;
          l1 += ((com.estrongs.android.a.b.q)localObject4).d();
          if (((com.estrongs.android.a.b.q)localObject4).d() == 0L)
          {
            ((List)localObject2).add(((com.estrongs.android.a.b.q)localObject4).a());
            i1 = i2;
          }
        }
        for (;;)
        {
          break;
          if (ap.bR(((com.estrongs.android.a.b.q)localObject4).f_()).equalsIgnoreCase(".log"))
          {
            ((List)localObject1).add(((com.estrongs.android.a.b.q)localObject4).a());
            i1 = i2;
          }
          else
          {
            paramString.add(((com.estrongs.android.a.b.q)localObject4).a());
            l2 = l1;
            i1 = i2;
            l1 = l2;
          }
        }
      }
      localObject4 = ((com.estrongs.android.a.a.i)q[3]).c();
      localObject3 = new ArrayList(((List)localObject4).size());
      localObject4 = ((List)localObject4).iterator();
      while (((Iterator)localObject4).hasNext())
      {
        com.estrongs.android.a.b.q localq = (com.estrongs.android.a.b.q)((Iterator)localObject4).next();
        if (localq.h())
        {
          i1 += 1;
          ((ArrayList)localObject3).add(localq.a());
        }
      }
      localObject4 = new HashMap();
      ((Map)localObject4).put("log://", localObject1);
      ((Map)localObject4).put("tmp://", paramString);
      ((Map)localObject4).put("emptyfile://", localObject2);
      ((Map)localObject4).put("emptyfolder://", localObject3);
      return new m((Map)localObject4, 0, i1, l1);
    }
    if (ap.V(paramString)) {
      localObject1 = com.estrongs.android.a.b.p.class;
    }
    for (;;)
    {
      localObject1 = q[2].a((Class)localObject1);
      localObject2 = new ArrayList(((List)localObject1).size());
      localObject3 = ((List)localObject1).iterator();
      l1 = 0L;
      while (((Iterator)localObject3).hasNext())
      {
        localObject4 = (com.estrongs.android.a.b.q)((Iterator)localObject3).next();
        if (((com.estrongs.android.a.b.q)localObject4).h())
        {
          l1 += ((com.estrongs.android.a.b.q)localObject4).d();
          ((List)localObject2).add(((com.estrongs.android.a.b.q)localObject4).a());
        }
      }
      if (ap.X(paramString))
      {
        localObject1 = com.estrongs.android.a.b.o.class;
      }
      else if (ap.Z(paramString))
      {
        localObject1 = com.estrongs.android.a.b.w.class;
      }
      else if (ap.ae(paramString))
      {
        localObject1 = com.estrongs.android.a.b.e.class;
      }
      else
      {
        if (!ap.ag(paramString)) {
          break;
        }
        localObject1 = b.class;
      }
    }
    return new m(new HashMap(), 0, 0, 0L);
    Object localObject3 = new HashMap();
    ((Map)localObject3).put(paramString, localObject2);
    return new m((Map)localObject3, 0, ((List)localObject1).size(), l1);
  }
  
  public g f(String paramString)
  {
    com.estrongs.android.a.b.i locali = ((com.estrongs.android.a.a.i)q[3]).a(paramString);
    if (locali == null) {
      return null;
    }
    com.estrongs.android.util.l.e(a, "root:" + paramString + "/" + locali.e_());
    return (g)locali.a();
  }
  
  public com.estrongs.android.a.b.a g(String paramString)
  {
    com.estrongs.android.a.a.e locale1 = p[7];
    if (ap.V(paramString)) {
      paramString = p[1];
    }
    for (;;)
    {
      return new com.estrongs.android.a.b.a(paramString.c(), paramString.d(), paramString.e());
      if (ap.X(paramString))
      {
        paramString = p[3];
      }
      else if (ap.Z(paramString))
      {
        paramString = p[2];
      }
      else if (ap.ae(paramString))
      {
        paramString = p[4];
      }
      else
      {
        if (!ap.ag(paramString)) {
          break;
        }
        paramString = p[6];
      }
    }
    locale1 = p[7];
    com.estrongs.android.a.a.e[] arrayOfe = p;
    int i2 = arrayOfe.length;
    int i1 = 0;
    long l1 = 0L;
    if (i1 < i2)
    {
      com.estrongs.android.a.a.e locale2 = arrayOfe[i1];
      if (locale1 == locale2) {}
      for (;;)
      {
        i1 += 1;
        break;
        l1 += locale2.e();
      }
    }
    long l2 = q.g(paramString);
    if (l2 == 0L) {}
    for (l1 = 0L;; l1 = l2 - l1) {
      return new com.estrongs.android.a.b.a(l1);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.a.v
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */