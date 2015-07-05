package com.estrongs.android.pop.zeroconf;

import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class e
  extends d
{
  public static boolean f = true;
  Map<String, Integer> g = new HashMap();
  private int h;
  private final f i;
  private final f j;
  private final f k;
  private final f l;
  
  public e(int paramInt)
  {
    this(paramInt, true, 1460);
  }
  
  public e(int paramInt1, boolean paramBoolean, int paramInt2)
  {
    super(paramInt1, 0, paramBoolean);
    if (paramInt2 > 0) {}
    for (paramInt1 = paramInt2;; paramInt1 = 1460)
    {
      h = paramInt1;
      i = new f(paramInt2, this);
      j = new f(paramInt2, this);
      k = new f(paramInt2, this);
      l = new f(paramInt2, this);
      return;
    }
  }
  
  public void a(a parama, n paramn)
  {
    if ((parama == null) || (!paramn.a(parama))) {
      a(paramn, 0L);
    }
  }
  
  public void a(g paramg)
  {
    Object localObject = new f(512, this);
    ((f)localObject).a(paramg);
    localObject = ((f)localObject).toByteArray();
    if (localObject.length < p())
    {
      b.add(paramg);
      i.write((byte[])localObject, 0, localObject.length);
      return;
    }
    throw new IOException("message full");
  }
  
  public void a(n paramn)
  {
    Object localObject = new f(512, this);
    ((f)localObject).a(paramn, 0L);
    localObject = ((f)localObject).toByteArray();
    if (localObject.length < p())
    {
      d.add(paramn);
      k.write((byte[])localObject, 0, localObject.length);
      return;
    }
    throw new IOException("message full");
  }
  
  public void a(n paramn, long paramLong)
  {
    if ((paramn != null) && ((paramLong == 0L) || (!paramn.b(paramLong))))
    {
      Object localObject = new f(512, this);
      ((f)localObject).a(paramn, paramLong);
      localObject = ((f)localObject).toByteArray();
      if (localObject.length < p())
      {
        c.add(paramn);
        j.write((byte[])localObject, 0, localObject.length);
      }
    }
    else
    {
      return;
    }
    throw new IOException("message full");
  }
  
  public boolean m()
  {
    return (b() & 0x8000) == 0;
  }
  
  public int p()
  {
    return h - 12 - i.size() - j.size() - k.size() - l.size();
  }
  
  public byte[] q()
  {
    long l1 = System.currentTimeMillis();
    g.clear();
    f localf = new f(h, this);
    if (a) {}
    for (int m = 0;; m = a())
    {
      localf.b(m);
      localf.b(b());
      localf.b(e());
      localf.b(h());
      localf.b(j());
      localf.b(l());
      localIterator = b.iterator();
      while (localIterator.hasNext()) {
        localf.a((g)localIterator.next());
      }
    }
    Iterator localIterator = c.iterator();
    while (localIterator.hasNext()) {
      localf.a((n)localIterator.next(), l1);
    }
    localIterator = d.iterator();
    while (localIterator.hasNext()) {
      localf.a((n)localIterator.next(), l1);
    }
    localIterator = e.iterator();
    while (localIterator.hasNext()) {
      localf.a((n)localIterator.next(), l1);
    }
    return localf.toByteArray();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.zeroconf.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */