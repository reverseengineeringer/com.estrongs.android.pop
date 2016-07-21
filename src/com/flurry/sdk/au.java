package com.flurry.sdk;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

public final class au
  implements Comparable<au>
{
  private static int a;
  private final int b;
  private final co c;
  private final List<av> d = new ArrayList();
  private final Map<String, aw> e = new HashMap();
  private final LinkedList<hb> f = new LinkedList();
  private int g;
  private boolean h = false;
  private boolean i = false;
  private boolean j = true;
  private String k;
  
  public au(co paramco)
  {
    int m = a + 1;
    a = m;
    b = m;
    c = paramco;
    m = 0;
    while (m < d.size())
    {
      d.add(new av());
      String str = d.get(m)).f;
      e.put(str, new aw(str));
      m += 1;
    }
  }
  
  private boolean b(hb paramhb)
  {
    if (f.size() > 0)
    {
      hb localhb = (hb)f.peek();
      if ((localhb != null) && (localhb.equals(paramhb))) {
        return false;
      }
    }
    return true;
  }
  
  private String h(int paramInt)
  {
    cj localcj = b(paramInt);
    if (localcj != null) {
      return d.d;
    }
    return null;
  }
  
  public int a(au paramau)
  {
    if (paramau == null) {
      throw new NullPointerException("another cannot be null");
    }
    if (b > b) {
      return 1;
    }
    if (b < b) {
      return -1;
    }
    return 0;
  }
  
  public ay a(String paramString)
  {
    return ((aw)e.get(paramString)).a();
  }
  
  public co a()
  {
    return c;
  }
  
  public void a(int paramInt)
  {
    g = paramInt;
  }
  
  public void a(int paramInt, fm paramfm)
  {
    if ((paramInt < 0) || (paramInt >= d.size())) {
      return;
    }
    ((av)d.get(paramInt)).a(paramfm);
  }
  
  public void a(int paramInt, gk paramgk)
  {
    if ((paramInt < 0) || (paramInt >= d.size())) {
      return;
    }
    ((av)d.get(paramInt)).a(paramgk);
  }
  
  public void a(int paramInt, List<String> paramList)
  {
    if ((paramInt < 0) || (paramInt >= d.size())) {
      return;
    }
    ((av)d.get(paramInt)).a(paramList);
  }
  
  public void a(gk paramgk)
  {
    a(g, paramgk);
  }
  
  public void a(hb paramhb)
  {
    synchronized (f)
    {
      if (b(paramhb)) {
        f.push(paramhb);
      }
      return;
    }
  }
  
  public void a(boolean paramBoolean)
  {
    h = paramBoolean;
  }
  
  public ay b()
  {
    return a(e());
  }
  
  public cj b(int paramInt)
  {
    List localList = c.d;
    if ((localList != null) && (localList.size() > paramInt)) {
      return (cj)localList.get(paramInt);
    }
    return null;
  }
  
  public void b(String paramString)
  {
    k = paramString;
  }
  
  public void b(boolean paramBoolean)
  {
    i = paramBoolean;
  }
  
  public int c()
  {
    return g;
  }
  
  public bc c(int paramInt)
  {
    bc[] arrayOfbc = bc.values();
    int n = arrayOfbc.length;
    int m = 0;
    while (m < n)
    {
      bc localbc = arrayOfbc[m];
      if (localbc.toString().equals(h(paramInt))) {
        return localbc;
      }
      m += 1;
    }
    return bc.e;
  }
  
  public void c(boolean paramBoolean)
  {
    j = paramBoolean;
  }
  
  public boolean c(String paramString)
  {
    return ((av)d.get(g)).a(paramString);
  }
  
  public bc d()
  {
    return c(c());
  }
  
  public fm d(int paramInt)
  {
    if ((paramInt < 0) || (paramInt >= d.size())) {
      return null;
    }
    return ((av)d.get(paramInt)).a();
  }
  
  public void d(String paramString)
  {
    ((av)d.get(g)).b(paramString);
  }
  
  public gk e(int paramInt)
  {
    if ((paramInt < 0) || (paramInt >= d.size())) {
      return null;
    }
    return ((av)d.get(paramInt)).b();
  }
  
  public String e()
  {
    return c.d.get(g)).f;
  }
  
  public boolean e(String paramString)
  {
    return ((av)d.get(g)).c(paramString);
  }
  
  public cv f()
  {
    Object localObject = c.e;
    if (localObject == null) {
      return null;
    }
    localObject = ((List)localObject).iterator();
    while (((Iterator)localObject).hasNext())
    {
      cv localcv = (cv)((Iterator)localObject).next();
      if (cw.c.equals(a)) {
        return localcv;
      }
    }
    return null;
  }
  
  public List<String> f(int paramInt)
  {
    if ((paramInt < 0) || (paramInt >= d.size())) {
      return Collections.emptyList();
    }
    return ((av)d.get(paramInt)).c();
  }
  
  public void f(String paramString)
  {
    ((av)d.get(g)).d(paramString);
  }
  
  public fm g()
  {
    return d(g);
  }
  
  public void g(String paramString)
  {
    ((av)d.get(g)).e(paramString);
  }
  
  public boolean g(int paramInt)
  {
    return !f(paramInt).isEmpty();
  }
  
  public cz h()
  {
    return c.w;
  }
  
  public List<da> i()
  {
    if (c.w != null) {
      return c.w.b;
    }
    return Collections.emptyList();
  }
  
  public cj j()
  {
    if (c != null) {
      return b(g);
    }
    return null;
  }
  
  public bc k()
  {
    if (c != null) {
      return c(g);
    }
    return bc.e;
  }
  
  public boolean l()
  {
    return k().equals(bc.b);
  }
  
  public gk m()
  {
    return e(g);
  }
  
  public boolean n()
  {
    boolean bool2 = false;
    List localList = c.d;
    int m = 0;
    for (;;)
    {
      boolean bool1 = bool2;
      if (m < localList.size())
      {
        ah localah = ah.a(getg);
        if (((ah.b.equals(localah)) || (ah.c.equals(localah))) && (g(m))) {
          bool1 = true;
        }
      }
      else
      {
        return bool1;
      }
      m += 1;
    }
  }
  
  public boolean o()
  {
    boolean bool2 = false;
    List localList = c.d;
    int m = 0;
    for (;;)
    {
      boolean bool1 = bool2;
      if (m < localList.size())
      {
        ah localah = ah.a(getg);
        if ((ah.b.equals(localah)) && (g(m))) {
          bool1 = true;
        }
      }
      else
      {
        return bool1;
      }
      m += 1;
    }
  }
  
  public String p()
  {
    return c.b;
  }
  
  public boolean q()
  {
    return h;
  }
  
  public boolean r()
  {
    return i;
  }
  
  /* Error */
  public hb s()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 48	com/flurry/sdk/au:f	Ljava/util/LinkedList;
    //   6: astore_2
    //   7: aload_2
    //   8: monitorenter
    //   9: aload_0
    //   10: getfield 48	com/flurry/sdk/au:f	Ljava/util/LinkedList;
    //   13: invokevirtual 98	java/util/LinkedList:size	()I
    //   16: ifle +20 -> 36
    //   19: aload_0
    //   20: getfield 48	com/flurry/sdk/au:f	Ljava/util/LinkedList;
    //   23: invokevirtual 302	java/util/LinkedList:pop	()Ljava/lang/Object;
    //   26: checkcast 104	com/flurry/sdk/hb
    //   29: astore_1
    //   30: aload_2
    //   31: monitorexit
    //   32: aload_0
    //   33: monitorexit
    //   34: aload_1
    //   35: areturn
    //   36: aconst_null
    //   37: astore_1
    //   38: aload_2
    //   39: monitorexit
    //   40: goto -8 -> 32
    //   43: astore_1
    //   44: aload_2
    //   45: monitorexit
    //   46: aload_1
    //   47: athrow
    //   48: astore_1
    //   49: aload_0
    //   50: monitorexit
    //   51: aload_1
    //   52: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	53	0	this	au
    //   29	9	1	localhb	hb
    //   43	4	1	localObject1	Object
    //   48	4	1	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   9	32	43	finally
    //   38	40	43	finally
    //   44	46	43	finally
    //   2	9	48	finally
    //   46	48	48	finally
  }
  
  /* Error */
  public hb t()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 48	com/flurry/sdk/au:f	Ljava/util/LinkedList;
    //   6: astore_2
    //   7: aload_2
    //   8: monitorenter
    //   9: aload_0
    //   10: getfield 48	com/flurry/sdk/au:f	Ljava/util/LinkedList;
    //   13: invokevirtual 98	java/util/LinkedList:size	()I
    //   16: ifle +20 -> 36
    //   19: aload_0
    //   20: getfield 48	com/flurry/sdk/au:f	Ljava/util/LinkedList;
    //   23: invokevirtual 102	java/util/LinkedList:peek	()Ljava/lang/Object;
    //   26: checkcast 104	com/flurry/sdk/hb
    //   29: astore_1
    //   30: aload_2
    //   31: monitorexit
    //   32: aload_0
    //   33: monitorexit
    //   34: aload_1
    //   35: areturn
    //   36: aconst_null
    //   37: astore_1
    //   38: aload_2
    //   39: monitorexit
    //   40: goto -8 -> 32
    //   43: astore_1
    //   44: aload_2
    //   45: monitorexit
    //   46: aload_1
    //   47: athrow
    //   48: astore_1
    //   49: aload_0
    //   50: monitorexit
    //   51: aload_1
    //   52: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	53	0	this	au
    //   29	9	1	localhb	hb
    //   43	4	1	localObject1	Object
    //   48	4	1	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   9	32	43	finally
    //   38	40	43	finally
    //   44	46	43	finally
    //   2	9	48	finally
    //   46	48	48	finally
  }
  
  public void u()
  {
    synchronized (f)
    {
      f.clear();
      a(0);
      return;
    }
  }
  
  public String v()
  {
    return k;
  }
  
  public boolean w()
  {
    return (c.c > 0L) && (System.currentTimeMillis() >= c.c);
  }
  
  public boolean x()
  {
    return j;
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.au
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */