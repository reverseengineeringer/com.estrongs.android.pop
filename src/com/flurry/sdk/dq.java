package com.flurry.sdk;

import android.text.TextUtils;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeSet;

public class dq
{
  private static final String a = dq.class.getSimpleName();
  private final String b;
  private final dr c;
  private final TreeSet<au> d;
  private final TreeSet<au> e;
  private dq.a f;
  private s g;
  private dr h;
  private y i;
  private au j;
  private au k;
  private int l;
  private long m;
  private long n;
  private long o;
  private long p;
  private long q;
  private volatile boolean r = false;
  private final kb<ln> s = new dq.1(this);
  private final kb<ae> t = new dq.5(this);
  private final kb<ds> u = new dq.6(this);
  
  public dq(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      throw new IllegalArgumentException("adSpace cannot be null");
    }
    b = paramString;
    c = new dr(paramString);
    d = new TreeSet();
    e = new TreeSet();
    f = dq.a.a;
    d();
  }
  
  private void a(au paramau, int paramInt, fm paramfm)
  {
    try
    {
      String str = paramfm.e();
      kn localkn = new kn();
      localkn.a(str);
      localkn.d(20000);
      localkn.b(new lc());
      localkn.a(new dq.2(this, str, paramfm, paramInt, paramau));
      jq.a().a(this, localkn);
      return;
    }
    finally
    {
      paramau = finally;
      throw paramau;
    }
  }
  
  private void a(au paramau, ba paramba)
  {
    try
    {
      HashMap localHashMap = new HashMap();
      localHashMap.put("preRender", "true");
      ba localba = paramba;
      if (paramba == null) {
        localba = ba.y;
      }
      localHashMap.put("errorCode", Integer.toString(localba.a()));
      fa.a(bb.g, localHashMap, g.f(), g, paramau, 0);
      return;
    }
    finally {}
  }
  
  private void a(au paramau, String paramString)
  {
    try
    {
      kg.a(3, a, "Pre-render: HTTP get for url: " + paramString);
      kn localkn = new kn();
      localkn.a(paramString);
      localkn.d(20000);
      localkn.b(new lc());
      localkn.a(new dq.4(this, paramString, paramau));
      jq.a().a(this, localkn);
      return;
    }
    finally
    {
      paramau = finally;
      throw paramau;
    }
  }
  
  /* Error */
  private void a(dq.a parama)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_1
    //   3: astore_2
    //   4: aload_1
    //   5: ifnonnull +7 -> 12
    //   8: getstatic 104	com/flurry/sdk/dq$a:a	Lcom/flurry/sdk/dq$a;
    //   11: astore_2
    //   12: iconst_3
    //   13: getstatic 50	com/flurry/sdk/dq:a	Ljava/lang/String;
    //   16: new 195	java/lang/StringBuilder
    //   19: dup
    //   20: invokespecial 196	java/lang/StringBuilder:<init>	()V
    //   23: ldc -39
    //   25: invokevirtual 202	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   28: aload_0
    //   29: getfield 106	com/flurry/sdk/dq:f	Lcom/flurry/sdk/dq$a;
    //   32: invokevirtual 220	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   35: ldc -34
    //   37: invokevirtual 202	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   40: aload_2
    //   41: invokevirtual 220	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   44: ldc -32
    //   46: invokevirtual 202	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   49: aload_0
    //   50: getfield 88	com/flurry/sdk/dq:b	Ljava/lang/String;
    //   53: invokevirtual 202	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   56: invokevirtual 204	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   59: invokestatic 209	com/flurry/sdk/kg:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   62: getstatic 104	com/flurry/sdk/dq$a:a	Lcom/flurry/sdk/dq$a;
    //   65: aload_0
    //   66: getfield 106	com/flurry/sdk/dq:f	Lcom/flurry/sdk/dq$a;
    //   69: invokevirtual 228	com/flurry/sdk/dq$a:equals	(Ljava/lang/Object;)Z
    //   72: ifeq +84 -> 156
    //   75: getstatic 104	com/flurry/sdk/dq$a:a	Lcom/flurry/sdk/dq$a;
    //   78: aload_2
    //   79: invokevirtual 228	com/flurry/sdk/dq$a:equals	(Ljava/lang/Object;)Z
    //   82: ifne +74 -> 156
    //   85: iconst_3
    //   86: getstatic 50	com/flurry/sdk/dq:a	Ljava/lang/String;
    //   89: new 195	java/lang/StringBuilder
    //   92: dup
    //   93: invokespecial 196	java/lang/StringBuilder:<init>	()V
    //   96: ldc -26
    //   98: invokevirtual 202	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   101: aload_0
    //   102: getfield 88	com/flurry/sdk/dq:b	Ljava/lang/String;
    //   105: invokevirtual 202	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   108: invokevirtual 204	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   111: invokestatic 209	com/flurry/sdk/kg:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   114: invokestatic 235	com/flurry/sdk/lo:a	()Lcom/flurry/sdk/lo;
    //   117: aload_0
    //   118: getfield 64	com/flurry/sdk/dq:s	Lcom/flurry/sdk/kb;
    //   121: invokevirtual 238	com/flurry/sdk/lo:a	(Lcom/flurry/sdk/kb;)V
    //   124: invokestatic 243	com/flurry/sdk/kc:a	()Lcom/flurry/sdk/kc;
    //   127: ldc -11
    //   129: aload_0
    //   130: getfield 69	com/flurry/sdk/dq:t	Lcom/flurry/sdk/kb;
    //   133: invokevirtual 248	com/flurry/sdk/kc:a	(Ljava/lang/String;Lcom/flurry/sdk/kb;)V
    //   136: invokestatic 243	com/flurry/sdk/kc:a	()Lcom/flurry/sdk/kc;
    //   139: ldc -6
    //   141: aload_0
    //   142: getfield 74	com/flurry/sdk/dq:u	Lcom/flurry/sdk/kb;
    //   145: invokevirtual 248	com/flurry/sdk/kc:a	(Ljava/lang/String;Lcom/flurry/sdk/kb;)V
    //   148: aload_0
    //   149: aload_2
    //   150: putfield 106	com/flurry/sdk/dq:f	Lcom/flurry/sdk/dq$a;
    //   153: aload_0
    //   154: monitorexit
    //   155: return
    //   156: getstatic 104	com/flurry/sdk/dq$a:a	Lcom/flurry/sdk/dq$a;
    //   159: aload_2
    //   160: invokevirtual 228	com/flurry/sdk/dq$a:equals	(Ljava/lang/Object;)Z
    //   163: ifeq -15 -> 148
    //   166: getstatic 104	com/flurry/sdk/dq$a:a	Lcom/flurry/sdk/dq$a;
    //   169: aload_0
    //   170: getfield 106	com/flurry/sdk/dq:f	Lcom/flurry/sdk/dq$a;
    //   173: invokevirtual 228	com/flurry/sdk/dq$a:equals	(Ljava/lang/Object;)Z
    //   176: ifne -28 -> 148
    //   179: iconst_3
    //   180: getstatic 50	com/flurry/sdk/dq:a	Ljava/lang/String;
    //   183: new 195	java/lang/StringBuilder
    //   186: dup
    //   187: invokespecial 196	java/lang/StringBuilder:<init>	()V
    //   190: ldc -4
    //   192: invokevirtual 202	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   195: aload_0
    //   196: getfield 88	com/flurry/sdk/dq:b	Ljava/lang/String;
    //   199: invokevirtual 202	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   202: invokevirtual 204	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   205: invokestatic 209	com/flurry/sdk/kg:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   208: invokestatic 235	com/flurry/sdk/lo:a	()Lcom/flurry/sdk/lo;
    //   211: aload_0
    //   212: getfield 64	com/flurry/sdk/dq:s	Lcom/flurry/sdk/kb;
    //   215: invokevirtual 254	com/flurry/sdk/lo:b	(Lcom/flurry/sdk/kb;)V
    //   218: invokestatic 243	com/flurry/sdk/kc:a	()Lcom/flurry/sdk/kc;
    //   221: aload_0
    //   222: getfield 69	com/flurry/sdk/dq:t	Lcom/flurry/sdk/kb;
    //   225: invokevirtual 255	com/flurry/sdk/kc:a	(Lcom/flurry/sdk/kb;)V
    //   228: invokestatic 243	com/flurry/sdk/kc:a	()Lcom/flurry/sdk/kc;
    //   231: aload_0
    //   232: getfield 74	com/flurry/sdk/dq:u	Lcom/flurry/sdk/kb;
    //   235: invokevirtual 255	com/flurry/sdk/kc:a	(Lcom/flurry/sdk/kb;)V
    //   238: goto -90 -> 148
    //   241: astore_1
    //   242: aload_0
    //   243: monitorexit
    //   244: aload_1
    //   245: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	246	0	this	dq
    //   0	246	1	parama	dq.a
    //   3	157	2	locala	dq.a
    // Exception table:
    //   from	to	target	type
    //   8	12	241	finally
    //   12	148	241	finally
    //   148	153	241	finally
    //   156	238	241	finally
  }
  
  private void a(String paramString, al paramal)
  {
    try
    {
      if ((dq.a.e.equals(f)) && (i.a().l().a(j, paramString)))
      {
        kg.a(3, a, "Detected asset status change for asset:" + paramString + " status:" + paramal);
        if ((al.d.equals(paramal)) || (al.g.equals(paramal))) {
          js.a().b(new dq.11(this));
        }
      }
      return;
    }
    finally {}
  }
  
  private void a(List<au> paramList)
  {
    au localau;
    for (;;)
    {
      try
      {
        boolean bool = dq.a.d.equals(f);
        if (!bool) {
          return;
        }
        if ((paramList == null) || (paramList.isEmpty()) || (paramList.size() > 1))
        {
          o();
          continue;
        }
        localau = (au)paramList.get(0);
      }
      finally {}
      if (!at)
      {
        o();
      }
      else
      {
        paramList = ad;
        if ((paramList != null) && (!paramList.isEmpty()) && (get0a != 6)) {
          break;
        }
        o();
      }
    }
    List localList = null;
    paramList = localList;
    if (localau.a() != null)
    {
      Map localMap = au;
      paramList = localList;
      if (localMap != null)
      {
        paramList = localList;
        if (localMap.containsKey("GROUP_ID")) {
          paramList = (String)localMap.get("GROUP_ID");
        }
      }
    }
    if (paramList == null)
    {
      paramList = ad;
      localList = k.a().d;
      localList.clear();
      localList.addAll(paramList);
      ad = localList;
      ag = k.a().g;
      if ((au != null) && (au.isEmpty())) {
        au = k.a().u;
      }
    }
    for (j = localau;; j = localau)
    {
      a(dq.a.e);
      js.a().b(new dq.9(this));
      break;
    }
  }
  
  private void g()
  {
    try
    {
      if (dq.a.b.equals(f))
      {
        d.addAll(i.c());
        if (!d.isEmpty()) {
          j = ((au)d.pollFirst());
        }
        a(dq.a.e);
        js.a().b(new dq.8(this));
      }
      return;
    }
    finally {}
  }
  
  private void h()
  {
    try
    {
      if ((m > 0L) && (System.currentTimeMillis() > m))
      {
        fc.a(g, ba.u);
        d();
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  private void i()
  {
    try
    {
      if ((n > 0L) && (System.currentTimeMillis() > n)) {
        o();
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  private void j()
  {
    for (;;)
    {
      try
      {
        if ((p > 0L) && (System.currentTimeMillis() > p))
        {
          a(j, ba.l);
          d();
          return;
        }
        if ((o <= 0L) || (System.currentTimeMillis() <= o)) {
          continue;
        }
        if ((dq.a.e.equals(f)) && (j != null) && (!j.o()) && (j.n()))
        {
          a(dq.a.f);
          js.a().a(new dq.10(this));
          continue;
        }
        n();
      }
      finally {}
      m();
    }
  }
  
  private void k()
  {
    try
    {
      if ((q > 0L) && (System.currentTimeMillis() > q))
      {
        jq.a().a(this);
        a(j, ba.n);
        d();
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  private void l()
  {
    for (;;)
    {
      try
      {
        boolean bool = dq.a.c.equals(f);
        if (!bool) {
          return;
        }
        if (j == null)
        {
          kg.a(6, a, "An auction is required, but there is no ad unit!");
          fc.a(g, ba.c);
          d();
          continue;
        }
        a(dq.a.d);
      }
      finally {}
      long l1 = j.a().o;
      if (l1 > 0L)
      {
        kg.a(3, a, "Setting CSRTB auction timeout for " + l1 + " ms");
        n = (l1 + System.currentTimeMillis());
      }
      k = j;
      c.a(g, null, j);
    }
  }
  
  private void m()
  {
    label79:
    ab localab;
    label87:
    Object localObject2;
    for (;;)
    {
      try
      {
        boolean bool = dq.a.e.equals(f);
        if (!bool) {
          return;
        }
        if (g.f() == null)
        {
          fc.a(g, ba.d);
          d();
          continue;
        }
        if (!lr.a()) {
          break label79;
        }
      }
      finally {}
      fc.a(g, ba.w);
      d();
      continue;
      localab = i.a().l();
      if (j == null) {
        break;
      }
      localObject2 = j.a().d;
      if ((localObject2 != null) && (!((List)localObject2).isEmpty())) {
        break label828;
      }
      a(j, ba.e);
      d();
    }
    for (;;)
    {
      fm localfm;
      if (i1 < ((List)localObject2).size())
      {
        if (geta == 6)
        {
          j.a().t = true;
          a(dq.a.c);
          l();
          break;
        }
        localfm = j.d(i1);
        if ((localfm == null) || (localfm.c())) {
          break label833;
        }
        if (!localfm.d()) {
          break label441;
        }
      }
      p = 0L;
      long l1;
      if ((j.o()) || (j.n()))
      {
        localObject2 = localab.a(j);
        l1 = j.a().p;
        kg.a(3, a, "Pre-caching required for ad, AdUnitCachedStatus: " + localObject2 + ", skip time limit: " + l1);
        if ((!ag.d.equals(localObject2)) && (l1 > 0L) && (o == 0L))
        {
          kg.a(3, a, "Setting skip timer for " + l1 + " ms");
          o = (System.currentTimeMillis() + l1);
        }
        if (ag.d.equals(localObject2)) {
          kg.a(3, a, "Pre-caching completed, ad may proceed");
        }
      }
      for (;;)
      {
        if (j != null) {
          break label804;
        }
        i.a().a(null, bb.e, true, Collections.emptyMap());
        fc.a(g, ba.u);
        d();
        break;
        label441:
        l1 = j.a().o;
        if ((l1 > 0L) && (p == 0L))
        {
          kg.a(3, a, "Setting VAST resolve timeout for " + l1 + " ms");
          p = (l1 + System.currentTimeMillis());
        }
        a(j, i1, localfm);
        break;
        if (ag.b.equals(localObject2))
        {
          if (l1 == 0L)
          {
            kg.a(3, a, "No skip timer");
            n();
            break label87;
          }
          if (l1 <= 0L) {
            break label87;
          }
          if (System.currentTimeMillis() > o)
          {
            kg.a(3, a, "Skip timer expired");
            n();
            break label87;
          }
          kg.a(3, a, "Waiting for skip timer");
          break;
        }
        if (l1 == 0L)
        {
          kg.a(3, a, "No skip timer");
          n();
          break label87;
        }
        i1 = l + 1;
        l = i1;
        if (i1 > 1)
        {
          if (j.o())
          {
            kg.a(3, a, "Too many precaching attempts, precaching failed");
            a(j, ba.g);
            d();
            break;
          }
          if (dq.a.e.equals(f))
          {
            kg.a(3, a, "Too many precaching attempts, precaching failed. Trying streaming now.");
            continue;
          }
          kg.a(3, a, "Do nothing. State change request tick must have started prepare.");
          break;
        }
        i1 = localab.b(j);
        if (i1 > 0)
        {
          kg.a(3, a, "Requesting " + i1 + " asset(s), attempt #" + l);
          break;
        }
        kg.a(3, a, "No assets to cache");
        continue;
        kg.a(3, a, "Pre-caching not required for ad");
      }
      label804:
      a(dq.a.f);
      js.a().a(new dq.12(this));
      break;
      label828:
      int i1 = 0;
      continue;
      label833:
      i1 += 1;
    }
  }
  
  /* Error */
  private void n()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: getstatic 268	com/flurry/sdk/dq$a:e	Lcom/flurry/sdk/dq$a;
    //   5: aload_0
    //   6: getfield 106	com/flurry/sdk/dq:f	Lcom/flurry/sdk/dq$a;
    //   9: invokevirtual 228	com/flurry/sdk/dq$a:equals	(Ljava/lang/Object;)Z
    //   12: istore_1
    //   13: iload_1
    //   14: ifne +6 -> 20
    //   17: aload_0
    //   18: monitorexit
    //   19: return
    //   20: aload_0
    //   21: getfield 278	com/flurry/sdk/dq:j	Lcom/flurry/sdk/au;
    //   24: invokevirtual 327	com/flurry/sdk/au:a	()Lcom/flurry/sdk/co;
    //   27: getfield 362	com/flurry/sdk/co:g	Ljava/lang/String;
    //   30: astore_2
    //   31: iconst_3
    //   32: getstatic 50	com/flurry/sdk/dq:a	Ljava/lang/String;
    //   35: new 195	java/lang/StringBuilder
    //   38: dup
    //   39: invokespecial 196	java/lang/StringBuilder:<init>	()V
    //   42: ldc_w 558
    //   45: invokevirtual 202	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   48: aload_0
    //   49: getfield 88	com/flurry/sdk/dq:b	Ljava/lang/String;
    //   52: invokevirtual 202	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   55: ldc_w 560
    //   58: invokevirtual 202	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   61: aload_2
    //   62: invokevirtual 220	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   65: invokevirtual 204	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   68: invokestatic 209	com/flurry/sdk/kg:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   71: aload_0
    //   72: getfield 100	com/flurry/sdk/dq:e	Ljava/util/TreeSet;
    //   75: aload_0
    //   76: getfield 278	com/flurry/sdk/dq:j	Lcom/flurry/sdk/au;
    //   79: invokevirtual 563	java/util/TreeSet:add	(Ljava/lang/Object;)Z
    //   82: pop
    //   83: aload_0
    //   84: aconst_null
    //   85: putfield 278	com/flurry/sdk/dq:j	Lcom/flurry/sdk/au;
    //   88: aload_0
    //   89: getfield 100	com/flurry/sdk/dq:e	Ljava/util/TreeSet;
    //   92: aload_0
    //   93: getfield 98	com/flurry/sdk/dq:d	Ljava/util/TreeSet;
    //   96: invokevirtual 391	java/util/TreeSet:addAll	(Ljava/util/Collection;)Z
    //   99: pop
    //   100: aload_0
    //   101: getfield 98	com/flurry/sdk/dq:d	Ljava/util/TreeSet;
    //   104: invokevirtual 564	java/util/TreeSet:clear	()V
    //   107: aload_0
    //   108: getfield 98	com/flurry/sdk/dq:d	Ljava/util/TreeSet;
    //   111: aload_0
    //   112: getfield 385	com/flurry/sdk/dq:i	Lcom/flurry/sdk/y;
    //   115: invokevirtual 390	com/flurry/sdk/y:c	()Ljava/util/List;
    //   118: invokevirtual 391	java/util/TreeSet:addAll	(Ljava/util/Collection;)Z
    //   121: pop
    //   122: aload_0
    //   123: getfield 98	com/flurry/sdk/dq:d	Ljava/util/TreeSet;
    //   126: invokevirtual 392	java/util/TreeSet:isEmpty	()Z
    //   129: ifne +17 -> 146
    //   132: aload_0
    //   133: aload_0
    //   134: getfield 98	com/flurry/sdk/dq:d	Ljava/util/TreeSet;
    //   137: invokevirtual 396	java/util/TreeSet:pollFirst	()Ljava/lang/Object;
    //   140: checkcast 324	com/flurry/sdk/au
    //   143: putfield 278	com/flurry/sdk/dq:j	Lcom/flurry/sdk/au;
    //   146: invokestatic 569	com/flurry/sdk/f:a	()Lcom/flurry/sdk/f;
    //   149: ldc_w 571
    //   152: iconst_1
    //   153: invokevirtual 574	com/flurry/sdk/f:a	(Ljava/lang/String;I)V
    //   156: aload_0
    //   157: iconst_0
    //   158: putfield 531	com/flurry/sdk/dq:l	I
    //   161: aload_0
    //   162: lconst_0
    //   163: putfield 426	com/flurry/sdk/dq:o	J
    //   166: goto -149 -> 17
    //   169: astore_2
    //   170: aload_0
    //   171: monitorexit
    //   172: aload_2
    //   173: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	174	0	this	dq
    //   12	2	1	bool	boolean
    //   30	32	2	str	String
    //   169	4	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	13	169	finally
    //   20	146	169	finally
    //   146	166	169	finally
  }
  
  private void o()
  {
    for (;;)
    {
      try
      {
        if (!dq.a.c.equals(f))
        {
          boolean bool = dq.a.d.equals(f);
          if (!bool) {
            return;
          }
        }
        Iterator localIterator = fd.a((cj)j.a().d.get(0), new b(bb.e, null, null, null, null)).iterator();
        int i1;
        if (localIterator.hasNext())
        {
          a locala = (a)localIterator.next();
          if (az.f.equals(locala.a()))
          {
            i1 = 0;
            fa.a(bb.e, Collections.emptyMap(), g.f(), g, j, 0);
            if (i1 == 1) {
              a(j, ba.m);
            }
            d();
          }
        }
        else
        {
          i1 = 1;
        }
      }
      finally {}
    }
  }
  
  private void p()
  {
    try
    {
      lt.a();
      boolean bool = dq.a.f.equals(f);
      if (!bool) {}
      for (;;)
      {
        return;
        kg.a(3, a, "Preparing ad");
        if (g.f() != null) {
          break;
        }
        a(j, ba.d);
        d();
      }
      fa.a(bb.d, Collections.emptyMap(), g.f(), g, j, 1);
    }
    finally {}
    g.a(j);
    Iterator localIterator = fd.a((cj)j.a().d.get(0), new b(bb.d, null, null, null, null)).iterator();
    int i1 = 0;
    for (;;)
    {
      if (localIterator.hasNext())
      {
        a locala = (a)localIterator.next();
        if (az.i.equals(locala.a())) {
          i1 = 1;
        }
      }
      else
      {
        if (i1 != 0)
        {
          a(dq.a.g);
          break;
        }
        e();
        break;
      }
    }
  }
  
  private void q()
  {
    int i1 = 0;
    for (;;)
    {
      try
      {
        boolean bool = dq.a.h.equals(f);
        if (!bool) {
          return;
        }
        kg.a(3, a, "Pre-rendering ad");
        List localList = j.a().d;
        if (i1 >= localList.size()) {
          break label118;
        }
        localObject2 = j.d(i1);
        if ((localObject2 != null) && ((!((fm)localObject2).c()) || (((fm)localObject2).d())))
        {
          a(j, ba.f);
          d();
          continue;
        }
        i1 += 1;
      }
      finally {}
      continue;
      label118:
      Object localObject2 = i.a().l();
      if (j.o())
      {
        kg.a(3, a, "Precaching required for ad, copying assets");
        localObject2 = ((ab)localObject2).a(j);
        if (ag.d.equals(localObject2))
        {
          f.a().a("precachingAdAssetsAvailable", 1);
          if (!i.a().l().a(g, j))
          {
            kg.a(3, a, "Could not copy required ad assets");
            f.a().a("precachingAdAssetCopyFailed", 1);
            a(j, ba.h);
            d();
          }
        }
        else
        {
          kg.a(3, a, "Ad assets incomplete");
          f.a().a("precachingAdAssetsIncomplete", 1);
          a(j, ba.i);
          d();
        }
      }
      else if (j.n())
      {
        kg.a(3, a, "Precaching optional for ad, copying assets");
        i.a().l().a(g, j);
      }
      fa.a(bb.O, Collections.emptyMap(), g.f(), g, j, 0);
      cj localcj = (cj)((List)localObject1).get(0);
      if (a == 1)
      {
        kg.a(3, a, "Binding is HTML_URL, pre-render required");
        long l1 = j.a().o;
        if (l1 > 0L)
        {
          kg.a(3, a, "Setting pre-render timeout for " + l1 + " ms");
          q = (l1 + System.currentTimeMillis());
        }
        a(j, b);
      }
      else
      {
        fc.a(g);
        d();
      }
    }
  }
  
  public void a()
  {
    try
    {
      d();
      c.a();
      d.clear();
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public void a(s params, dr paramdr, y paramy)
  {
    if ((params == null) || (paramdr == null) || (paramy == null)) {}
    for (;;)
    {
      return;
      try
      {
        kg.a(3, a, "fetchAd: adObject=" + params);
        if ((!dq.a.a.equals(f)) && (!dq.a.g.equals(f))) {
          continue;
        }
        g = params;
        i = paramy;
        h = paramdr;
        if (!jl.a().c())
        {
          kg.a(5, a, "There is no network connectivity (ad will not fetch)");
          fc.a(g, ba.b);
          d();
          continue;
        }
      }
      finally {}
      i.a().l().g();
      if (d.isEmpty()) {
        d.addAll(i.c());
      }
      if (d.isEmpty())
      {
        a(dq.a.b);
        if (15000L > 0L)
        {
          kg.a(3, a, "Setting ad request timeout for " + 15000L + " ms");
          m = (15000L + System.currentTimeMillis());
        }
        kg.a(3, a, "AdCacheState: Cache empty. Fetching new ad.");
        h.a(g, i, null);
      }
      else
      {
        kg.a(3, a, "AdCacheState: Found " + (i.b() + d.size()) + " ads in cache. Using 1 now.");
        j = ((au)d.pollFirst());
        a(dq.a.e);
        js.a().b(new dq.7(this));
      }
    }
  }
  
  public void b()
  {
    try
    {
      d.clear();
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public void c()
  {
    try
    {
      if (h != null) {
        h.b();
      }
      d();
      return;
    }
    finally {}
  }
  
  public void d()
  {
    try
    {
      kg.a(3, a, "Fetch finished for adObject:" + g + " adSpace:" + b);
      c.b();
      jq.a().a(this);
      a(dq.a.a);
      if (i != null) {
        i.a(e);
      }
      e.clear();
      g = null;
      h = null;
      i = null;
      j = null;
      k = null;
      l = 0;
      m = 0L;
      n = 0L;
      o = 0L;
      p = 0L;
      q = 0L;
      return;
    }
    finally {}
  }
  
  public void e()
  {
    try
    {
      a(dq.a.h);
      js.a().b(new dq.3(this));
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.dq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */