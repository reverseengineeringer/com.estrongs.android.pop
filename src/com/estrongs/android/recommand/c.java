package com.estrongs.android.recommand;

import android.content.IntentFilter;
import android.text.TextUtils;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.ac;
import com.estrongs.android.pop.utils.cl;
import com.estrongs.android.util.an;
import com.estrongs.android.util.bh;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;

public final class c
{
  private static final String b = c.class.getSimpleName();
  private static volatile c c;
  l a = new i(this);
  private a d;
  private b e;
  private List<n> f;
  private List<n> g;
  private j h;
  private k i;
  private List<p> j;
  private Set<m> k;
  private p l;
  private Set<String> m;
  private boolean n = false;
  private AtomicBoolean o = new AtomicBoolean(true);
  private AtomicBoolean p = new AtomicBoolean(true);
  private Object q = new Object();
  private Runnable r = new g(this);
  private Runnable s = new h(this);
  
  private c()
  {
    b();
  }
  
  public static c a()
  {
    if (c == null) {}
    try
    {
      if (c == null) {
        c = new c();
      }
      return c;
    }
    finally {}
  }
  
  private void a(p paramp)
  {
    if (paramp == null) {}
    do
    {
      return;
      if (!TextUtils.isEmpty(c)) {
        bh.a(c, new e(this, paramp));
      }
    } while (TextUtils.isEmpty(d));
    bh.a(d, new f(this, paramp));
  }
  
  private void a(Runnable paramRunnable)
  {
    if ((an.b()) || (an.d())) {}
    for (int i1 = 1; i1 == 0; i1 = 0) {
      return;
    }
    paramRunnable = new Thread(paramRunnable);
    paramRunnable.setName("preload_Ads_thread");
    paramRunnable.start();
  }
  
  public static void c()
  {
    a();
  }
  
  public static void d()
  {
    if (c == null) {
      return;
    }
    try
    {
      Iterator localIterator = cg.iterator();
      while (localIterator.hasNext()) {
        ((n)localIterator.next()).destroy();
      }
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
      c = null;
    }
  }
  
  public static boolean e()
  {
    boolean bool = true;
    if (!n()) {
      return false;
    }
    if (com.estrongs.android.i.a.a("ad_toolbox_pager", 1) == 1) {}
    for (;;)
    {
      return bool;
      bool = false;
    }
  }
  
  public static boolean f()
  {
    boolean bool = true;
    if (!n()) {
      return false;
    }
    if (com.estrongs.android.i.a.a("ad_app_manager_top_switch", 1) == 1) {}
    for (;;)
    {
      return bool;
      bool = false;
    }
  }
  
  private void g()
  {
    Iterator localIterator = d.b().keySet().iterator();
    while (localIterator.hasNext())
    {
      Object localObject = (Integer)localIterator.next();
      localObject = d.a((Integer)localObject);
      n localn = e.a((o)localObject);
      if (localn == null)
      {
        com.estrongs.android.util.l.e(b, "ad provider is null! " + b);
      }
      else
      {
        localn.init();
        if (a == 0) {
          f.add(localn);
        }
      }
    }
  }
  
  private void h()
  {
    Iterator localIterator = d.b().keySet().iterator();
    while (localIterator.hasNext())
    {
      Object localObject = (Integer)localIterator.next();
      localObject = d.a((Integer)localObject);
      n localn = e.a((o)localObject);
      if (localn == null)
      {
        com.estrongs.android.util.l.e(b, "app provider is null! " + b);
      }
      else
      {
        localn.init();
        if (a == 1) {
          g.add(localn);
        }
      }
    }
  }
  
  private void i()
  {
    d locald = new d(this);
    IntentFilter localIntentFilter = new IntentFilter();
    localIntentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
    localIntentFilter.addAction("android.net.wifi.STATE_CHANGE");
    FexApplication.a().registerReceiver(locald, localIntentFilter);
  }
  
  private void j()
  {
    if (!o.compareAndSet(true, false)) {
      return;
    }
    ArrayList localArrayList = new ArrayList();
    try
    {
      ??? = f.iterator();
      while (((Iterator)???).hasNext())
      {
        localList2 = ((n)((Iterator)???).next()).load();
        if ((localList2 != null) && (!localList2.isEmpty()))
        {
          Iterator localIterator = localList2.iterator();
          while (localIterator.hasNext())
          {
            p localp = (p)localIterator.next();
            if (localp != null) {
              a(localp);
            }
          }
        }
      }
    }
    catch (Exception localException)
    {
      for (;;)
      {
        List localList2;
        localException.printStackTrace();
        return;
        localException.addAll(localList2);
      }
    }
    finally
    {
      o.set(true);
    }
    if (!localList1.isEmpty()) {
      synchronized (q)
      {
        l = ((p)localList1.get(0));
      }
    }
    synchronized (j)
    {
      j = localList1;
      if (h != null) {
        h.a(j);
      }
      o.set(true);
      return;
      localObject1 = finally;
      throw ((Throwable)localObject1);
    }
  }
  
  private void k()
  {
    Iterator localIterator = g.iterator();
    while (localIterator.hasNext()) {
      if (((n)localIterator.next()).isExpired()) {
        m();
      }
    }
  }
  
  /* Error */
  private void l()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 66	com/estrongs/android/recommand/c:p	Ljava/util/concurrent/atomic/AtomicBoolean;
    //   4: iconst_1
    //   5: iconst_0
    //   6: invokevirtual 275	java/util/concurrent/atomic/AtomicBoolean:compareAndSet	(ZZ)Z
    //   9: ifne +4 -> 13
    //   12: return
    //   13: new 315	java/util/HashSet
    //   16: dup
    //   17: invokespecial 316	java/util/HashSet:<init>	()V
    //   20: astore_3
    //   21: aload_0
    //   22: getfield 318	com/estrongs/android/recommand/c:k	Ljava/util/Set;
    //   25: astore 4
    //   27: aload 4
    //   29: monitorenter
    //   30: aload_3
    //   31: aload_0
    //   32: getfield 318	com/estrongs/android/recommand/c:k	Ljava/util/Set;
    //   35: invokeinterface 319 2 0
    //   40: pop
    //   41: aload 4
    //   43: monitorexit
    //   44: iconst_0
    //   45: istore_2
    //   46: iconst_0
    //   47: istore_1
    //   48: aload_3
    //   49: invokeinterface 323 1 0
    //   54: bipush 6
    //   56: if_icmpge +87 -> 143
    //   59: aload_0
    //   60: getfield 143	com/estrongs/android/recommand/c:g	Ljava/util/List;
    //   63: invokeinterface 155 1 0
    //   68: astore 4
    //   70: aload 4
    //   72: invokeinterface 160 1 0
    //   77: ifeq +268 -> 345
    //   80: aload 4
    //   82: invokeinterface 164 1 0
    //   87: checkcast 166	com/estrongs/android/recommand/n
    //   90: astore 5
    //   92: aload 5
    //   94: invokeinterface 282 1 0
    //   99: astore 6
    //   101: aload 6
    //   103: ifnull +13 -> 116
    //   106: aload 6
    //   108: invokeinterface 284 1 0
    //   113: ifeq +123 -> 236
    //   116: invokestatic 123	com/estrongs/android/util/an:b	()Z
    //   119: ifne +102 -> 221
    //   122: invokestatic 125	com/estrongs/android/util/an:d	()Z
    //   125: ifne +96 -> 221
    //   128: iconst_1
    //   129: istore_1
    //   130: iload_1
    //   131: ifeq +196 -> 327
    //   134: getstatic 51	com/estrongs/android/recommand/c:b	Ljava/lang/String;
    //   137: ldc_w 325
    //   140: invokestatic 235	com/estrongs/android/util/l:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   143: aload_0
    //   144: getfield 318	com/estrongs/android/recommand/c:k	Ljava/util/Set;
    //   147: astore 4
    //   149: aload 4
    //   151: monitorenter
    //   152: aload_0
    //   153: aload_3
    //   154: putfield 318	com/estrongs/android/recommand/c:k	Ljava/util/Set;
    //   157: aload 4
    //   159: monitorexit
    //   160: aload_0
    //   161: getfield 327	com/estrongs/android/recommand/c:i	Lcom/estrongs/android/recommand/k;
    //   164: ifnull +28 -> 192
    //   167: aload_0
    //   168: getfield 318	com/estrongs/android/recommand/c:k	Ljava/util/Set;
    //   171: invokeinterface 328 1 0
    //   176: ifne +16 -> 192
    //   179: aload_0
    //   180: getfield 327	com/estrongs/android/recommand/c:i	Lcom/estrongs/android/recommand/k;
    //   183: aload_0
    //   184: getfield 318	com/estrongs/android/recommand/c:k	Ljava/util/Set;
    //   187: invokeinterface 333 2 0
    //   192: aload_0
    //   193: getfield 66	com/estrongs/android/recommand/c:p	Ljava/util/concurrent/atomic/AtomicBoolean;
    //   196: iconst_1
    //   197: invokevirtual 289	java/util/concurrent/atomic/AtomicBoolean:set	(Z)V
    //   200: return
    //   201: astore_3
    //   202: aload 4
    //   204: monitorexit
    //   205: aload_3
    //   206: athrow
    //   207: astore_3
    //   208: aload_3
    //   209: invokevirtual 172	java/lang/Exception:printStackTrace	()V
    //   212: aload_0
    //   213: getfield 66	com/estrongs/android/recommand/c:p	Ljava/util/concurrent/atomic/AtomicBoolean;
    //   216: iconst_1
    //   217: invokevirtual 289	java/util/concurrent/atomic/AtomicBoolean:set	(Z)V
    //   220: return
    //   221: aload 5
    //   223: invokeinterface 336 1 0
    //   228: ifeq -158 -> 70
    //   231: iconst_1
    //   232: istore_1
    //   233: goto -103 -> 130
    //   236: aload 6
    //   238: invokeinterface 155 1 0
    //   243: astore 5
    //   245: aload 5
    //   247: invokeinterface 160 1 0
    //   252: ifeq -182 -> 70
    //   255: aload 5
    //   257: invokeinterface 164 1 0
    //   262: checkcast 94	com/estrongs/android/recommand/p
    //   265: astore 6
    //   267: aload 6
    //   269: ifnull -24 -> 245
    //   272: aload_0
    //   273: getfield 85	com/estrongs/android/recommand/c:a	Lcom/estrongs/android/recommand/l;
    //   276: ifnull +17 -> 293
    //   279: aload_0
    //   280: getfield 85	com/estrongs/android/recommand/c:a	Lcom/estrongs/android/recommand/l;
    //   283: aload 6
    //   285: invokeinterface 341 2 0
    //   290: ifeq -45 -> 245
    //   293: aload_3
    //   294: aload 6
    //   296: checkcast 343	com/estrongs/android/recommand/m
    //   299: invokeinterface 344 2 0
    //   304: ifeq -59 -> 245
    //   307: aload_0
    //   308: aload 6
    //   310: invokespecial 286	com/estrongs/android/recommand/c:a	(Lcom/estrongs/android/recommand/p;)V
    //   313: goto -68 -> 245
    //   316: astore_3
    //   317: aload_0
    //   318: getfield 66	com/estrongs/android/recommand/c:p	Ljava/util/concurrent/atomic/AtomicBoolean;
    //   321: iconst_1
    //   322: invokevirtual 289	java/util/concurrent/atomic/AtomicBoolean:set	(Z)V
    //   325: aload_3
    //   326: athrow
    //   327: iload_2
    //   328: iconst_2
    //   329: if_icmpge -186 -> 143
    //   332: iload_2
    //   333: iconst_1
    //   334: iadd
    //   335: istore_2
    //   336: goto -288 -> 48
    //   339: astore_3
    //   340: aload 4
    //   342: monitorexit
    //   343: aload_3
    //   344: athrow
    //   345: goto -215 -> 130
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	348	0	this	c
    //   47	186	1	i1	int
    //   45	291	2	i2	int
    //   20	134	3	localHashSet	HashSet
    //   201	5	3	localObject1	Object
    //   207	87	3	localException	Exception
    //   316	10	3	localObject2	Object
    //   339	5	3	localObject3	Object
    //   90	166	5	localObject5	Object
    //   99	210	6	localObject6	Object
    // Exception table:
    //   from	to	target	type
    //   30	44	201	finally
    //   202	205	201	finally
    //   13	30	207	java/lang/Exception
    //   48	70	207	java/lang/Exception
    //   70	101	207	java/lang/Exception
    //   106	116	207	java/lang/Exception
    //   116	128	207	java/lang/Exception
    //   134	143	207	java/lang/Exception
    //   143	152	207	java/lang/Exception
    //   160	192	207	java/lang/Exception
    //   205	207	207	java/lang/Exception
    //   221	231	207	java/lang/Exception
    //   236	245	207	java/lang/Exception
    //   245	267	207	java/lang/Exception
    //   272	293	207	java/lang/Exception
    //   293	313	207	java/lang/Exception
    //   343	345	207	java/lang/Exception
    //   13	30	316	finally
    //   48	70	316	finally
    //   70	101	316	finally
    //   106	116	316	finally
    //   116	128	316	finally
    //   134	143	316	finally
    //   143	152	316	finally
    //   160	192	316	finally
    //   205	207	316	finally
    //   208	212	316	finally
    //   221	231	316	finally
    //   236	245	316	finally
    //   245	267	316	finally
    //   272	293	316	finally
    //   293	313	316	finally
    //   343	345	316	finally
    //   152	160	339	finally
    //   340	343	339	finally
  }
  
  private void m()
  {
    synchronized (k)
    {
      k.clear();
      a(s);
      return;
    }
  }
  
  private static boolean n()
  {
    return (ac.a() > 8) && (!cl.a());
  }
  
  public void a(l paraml)
  {
    a = paraml;
  }
  
  public void b()
  {
    boolean bool2 = true;
    e = b.a();
    d = new a();
    d.a();
    a(a);
    bh.a(1);
    j = new ArrayList();
    f = new ArrayList();
    m = new HashSet();
    k = new HashSet();
    g = new ArrayList();
    if (e()) {
      g();
    }
    if (f()) {
      h();
    }
    boolean bool1 = bool2;
    if (!an.b()) {
      if (!an.d()) {
        break label163;
      }
    }
    label163:
    for (bool1 = bool2;; bool1 = false)
    {
      n = bool1;
      if (!n) {
        break;
      }
      if (!g.isEmpty()) {
        a(s);
      }
      return;
    }
    i();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.recommand.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */