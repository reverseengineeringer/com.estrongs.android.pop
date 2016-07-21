package com.estrongs.android.a.b;

import com.estrongs.fs.h;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;

public class i
  extends l
{
  private final AtomicInteger a;
  private final AtomicInteger b;
  private final AtomicLong c;
  private AtomicInteger d;
  private AtomicLong e;
  private final ConcurrentLinkedQueue<q> f;
  private final ConcurrentHashMap<String, i> g;
  
  public i(ConcurrentHashMap<String, i> paramConcurrentHashMap, String paramString, int paramInt1, int paramInt2, long paramLong)
  {
    super(paramString, paramLong);
    g = paramConcurrentHashMap;
    b = new AtomicInteger(paramInt2);
    a = new AtomicInteger(paramInt1);
    c = new AtomicLong(paramLong);
    d = new AtomicInteger(0);
    e = new AtomicLong(0L);
    f = new ConcurrentLinkedQueue();
  }
  
  private void c(i parami)
  {
    File[] arrayOfFile = new File(parami.e_()).listFiles();
    if (arrayOfFile == null) {}
    while (arrayOfFile.length == 0) {
      return;
    }
    q[] arrayOfq = new q[arrayOfFile.length];
    int k = arrayOfFile.length;
    int j = 0;
    int i = 0;
    if (j < k)
    {
      File localFile = arrayOfFile[j];
      if (localFile.isDirectory())
      {
        arrayOfq[i] = ((q)g.get(localFile.getPath()));
        i += 1;
      }
      for (;;)
      {
        j += 1;
        break;
        arrayOfq[i] = new k(localFile.getPath(), localFile.length(), localFile.lastModified());
        i += 1;
      }
    }
    parami.a(arrayOfq);
  }
  
  public h a()
  {
    return new g(this);
  }
  
  public void a(int paramInt, long paramLong)
  {
    d.set(paramInt);
    e.set(paramLong);
  }
  
  public void a(i parami)
  {
    a.addAndGet(parami.c());
    b.addAndGet(parami.b());
    c.addAndGet(parami.d());
    d.addAndGet(parami.e());
    e.addAndGet(parami.f());
  }
  
  public void a(q[] paramArrayOfq)
  {
    int j = paramArrayOfq.length;
    int i = 0;
    if (i < j)
    {
      q localq = paramArrayOfq[i];
      if (localq == null) {
        com.estrongs.android.util.l.e("lgf", "null pointer!!" + paramArrayOfq.length + ":" + e_());
      }
      for (;;)
      {
        i += 1;
        break;
        f.add(localq);
      }
    }
  }
  
  public final int b()
  {
    return b.get();
  }
  
  public final int c()
  {
    return a.get();
  }
  
  public final long d()
  {
    return c.get();
  }
  
  public void d_()
  {
    f.clear();
  }
  
  public final int e()
  {
    return d.get();
  }
  
  public final long f()
  {
    return e.get();
  }
  
  public final List<q> g()
  {
    ArrayList localArrayList = new ArrayList(f);
    Thread localThread = new Thread(new j(this, localArrayList));
    localThread.setName("prefill");
    localThread.start();
    return localArrayList;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.a.b.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */