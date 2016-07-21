package com.flurry.sdk;

import android.text.TextUtils;
import android.util.Pair;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;

public class dr
{
  private static final String a = dr.class.getSimpleName();
  private final kk<cm> b = new kk("ad response", new du());
  private final kk<cl> c = new kk("ad request", new dt());
  private final String d;
  private final List<Integer> e;
  private dr.a f;
  private s g;
  private au h;
  private y i;
  private List<au> j;
  private final kb<jg> k = new dr.1(this);
  
  public dr(String paramString)
  {
    d = paramString;
    e = Arrays.asList(new Integer[] { Integer.valueOf(0), Integer.valueOf(1), Integer.valueOf(2), Integer.valueOf(3), Integer.valueOf(4), Integer.valueOf(5) });
    f = dr.a.a;
    d();
  }
  
  /* Error */
  private void a(dr.a parama)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_1
    //   3: astore_2
    //   4: aload_1
    //   5: ifnonnull +7 -> 12
    //   8: getstatic 89	com/flurry/sdk/dr$a:a	Lcom/flurry/sdk/dr$a;
    //   11: astore_2
    //   12: iconst_3
    //   13: getstatic 38	com/flurry/sdk/dr:a	Ljava/lang/String;
    //   16: new 99	java/lang/StringBuilder
    //   19: dup
    //   20: invokespecial 100	java/lang/StringBuilder:<init>	()V
    //   23: ldc 102
    //   25: invokevirtual 106	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   28: aload_0
    //   29: getfield 91	com/flurry/sdk/dr:f	Lcom/flurry/sdk/dr$a;
    //   32: invokevirtual 109	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   35: ldc 111
    //   37: invokevirtual 106	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   40: aload_2
    //   41: invokevirtual 109	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   44: invokevirtual 114	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   47: invokestatic 119	com/flurry/sdk/kg:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   50: getstatic 89	com/flurry/sdk/dr$a:a	Lcom/flurry/sdk/dr$a;
    //   53: aload_0
    //   54: getfield 91	com/flurry/sdk/dr:f	Lcom/flurry/sdk/dr$a;
    //   57: invokevirtual 123	com/flurry/sdk/dr$a:equals	(Ljava/lang/Object;)Z
    //   60: ifeq +62 -> 122
    //   63: getstatic 89	com/flurry/sdk/dr$a:a	Lcom/flurry/sdk/dr$a;
    //   66: aload_2
    //   67: invokevirtual 123	com/flurry/sdk/dr$a:equals	(Ljava/lang/Object;)Z
    //   70: ifne +52 -> 122
    //   73: iconst_3
    //   74: getstatic 38	com/flurry/sdk/dr:a	Ljava/lang/String;
    //   77: new 99	java/lang/StringBuilder
    //   80: dup
    //   81: invokespecial 100	java/lang/StringBuilder:<init>	()V
    //   84: ldc 125
    //   86: invokevirtual 106	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   89: aload_0
    //   90: getfield 71	com/flurry/sdk/dr:d	Ljava/lang/String;
    //   93: invokevirtual 106	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   96: invokevirtual 114	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   99: invokestatic 119	com/flurry/sdk/kg:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   102: invokestatic 130	com/flurry/sdk/kc:a	()Lcom/flurry/sdk/kc;
    //   105: ldc -124
    //   107: aload_0
    //   108: getfield 69	com/flurry/sdk/dr:k	Lcom/flurry/sdk/kb;
    //   111: invokevirtual 135	com/flurry/sdk/kc:a	(Ljava/lang/String;Lcom/flurry/sdk/kb;)V
    //   114: aload_0
    //   115: aload_2
    //   116: putfield 91	com/flurry/sdk/dr:f	Lcom/flurry/sdk/dr$a;
    //   119: aload_0
    //   120: monitorexit
    //   121: return
    //   122: getstatic 89	com/flurry/sdk/dr$a:a	Lcom/flurry/sdk/dr$a;
    //   125: aload_2
    //   126: invokevirtual 123	com/flurry/sdk/dr$a:equals	(Ljava/lang/Object;)Z
    //   129: ifeq -15 -> 114
    //   132: getstatic 89	com/flurry/sdk/dr$a:a	Lcom/flurry/sdk/dr$a;
    //   135: aload_0
    //   136: getfield 91	com/flurry/sdk/dr:f	Lcom/flurry/sdk/dr$a;
    //   139: invokevirtual 123	com/flurry/sdk/dr$a:equals	(Ljava/lang/Object;)Z
    //   142: ifne -28 -> 114
    //   145: iconst_3
    //   146: getstatic 38	com/flurry/sdk/dr:a	Ljava/lang/String;
    //   149: new 99	java/lang/StringBuilder
    //   152: dup
    //   153: invokespecial 100	java/lang/StringBuilder:<init>	()V
    //   156: ldc -119
    //   158: invokevirtual 106	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   161: aload_0
    //   162: getfield 71	com/flurry/sdk/dr:d	Ljava/lang/String;
    //   165: invokevirtual 106	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   168: invokevirtual 114	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   171: invokestatic 119	com/flurry/sdk/kg:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   174: invokestatic 130	com/flurry/sdk/kc:a	()Lcom/flurry/sdk/kc;
    //   177: aload_0
    //   178: getfield 69	com/flurry/sdk/dr:k	Lcom/flurry/sdk/kb;
    //   181: invokevirtual 140	com/flurry/sdk/kc:a	(Lcom/flurry/sdk/kb;)V
    //   184: goto -70 -> 114
    //   187: astore_1
    //   188: aload_0
    //   189: monitorexit
    //   190: aload_1
    //   191: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	192	0	this	dr
    //   0	192	1	parama	dr.a
    //   3	123	2	locala	dr.a
    // Exception table:
    //   from	to	target	type
    //   8	12	187	finally
    //   12	114	187	finally
    //   114	119	187	finally
    //   122	184	187	finally
  }
  
  private void a(s params, au paramau)
  {
    boolean bool1;
    try
    {
      bool1 = dr.a.c.equals(f);
      if (bool1) {
        break label22;
      }
    }
    finally
    {
      try
      {
        label22:
        int i1;
        int i2;
        int n;
        int m;
        cp localcp;
        cx localcx;
        Map localMap;
        di localdi;
        List localList1;
        List localList2;
        ArrayList localArrayList;
        localObject4 = new cl();
        a = System.currentTimeMillis();
        b = js.a().d();
        c = Integer.toString(jt.a());
        d = ((cq)localObject1);
        e = d;
        f = je.a().d();
        g = localList1;
        h = localcx;
        i = bool1;
        j = e;
        k = localcp;
        l = ji.a().c();
        m = ji.a().d();
        n = jo.a().c();
        o = jo.a().d();
        p = localMap;
        q = false;
        r = je.a().l().a();
        s = localList2;
        t = ((List)localObject2);
        u = jf.a().e();
        v = Locale.getDefault().getLanguage();
        w = localArrayList;
        x = i.a().s();
        y = localdi;
        if (i.a().m() != null) {
          break label1116;
        }
        bool1 = true;
        z = bool1;
        A = fd.d();
        B = bool2;
        C = paramau;
        D = localcy;
        E = ((String)localObject3);
        F = lq.c(params.f());
        paramau = c.a(localObject4);
        localObject1 = new kn();
        ((kn)localObject1).a(j.a().g());
        ((kn)localObject1).d(20000);
        ((kn)localObject1).a(kp.a.c);
        ((kn)localObject1).a("Content-Type", "application/x-flurry");
        ((kn)localObject1).a("Accept", "application/x-flurry");
        ((kn)localObject1).a("FM-Checksum", Integer.toString(kk.c(paramau)));
        ((kn)localObject1).a(new kx());
        ((kn)localObject1).b(new kx());
        ((kn)localObject1).a(paramau);
        ((kn)localObject1).a(new dr.4(this, params));
        if ((params instanceof x)) {
          f.a().a("nativeAdRequest", 1);
        }
        jq.a().a(this, (lz)localObject1);
      }
      catch (Exception params)
      {
        Object localObject2;
        Object localObject1;
        Object localObject4;
        cy localcy;
        kg.a(5, a, "Ad request failed with exception: " + params);
        d();
      }
      params = finally;
    }
    return;
    a(dr.a.d);
    localObject2 = params.g();
    Object localObject3 = params.m();
    label57:
    label143:
    label166:
    label336:
    label363:
    boolean bool2;
    if ((params instanceof r))
    {
      localObject1 = cq.b;
      localObject4 = lr.c(lr.j());
      i1 = ((Integer)first).intValue();
      i2 = ((Integer)second).intValue();
      localObject4 = lr.k();
      n = ((Integer)first).intValue();
      m = ((Integer)second).intValue();
      if ((localObject2 == null) || (((ViewGroup)localObject2).getHeight() <= 0)) {
        break label1113;
      }
      m = lr.a(((ViewGroup)localObject2).getHeight());
      if ((localObject2 == null) || (((ViewGroup)localObject2).getWidth() <= 0)) {
        break label1110;
      }
      n = lr.a(((ViewGroup)localObject2).getWidth());
      localcp = new cp();
      d = i2;
      c = i1;
      b = m;
      a = n;
      e = lr.e();
      f = fd.b();
      localcx = fd.c();
      localMap = Collections.emptyMap();
      localdi = new di();
      c = Collections.emptyList();
      a = -1;
      b = -1;
      localObject2 = (Long)lk.a().a("Age");
      localObject4 = (Byte)lk.a().a("Gender");
      if ((localObject4 != null) && (((Byte)localObject4).byteValue() != -1)) {
        b = ((Byte)localObject4).intValue();
      }
      if (localObject2 != null) {
        a = fj.a((Long)localObject2);
      }
      if (localObject3 == null) {
        break label1104;
      }
      bool1 = ((e)localObject3).getEnableTestAds();
      localList1 = fd.e();
      localList2 = fd.f();
      if (!cq.d.equals(cq.d)) {
        break label1029;
      }
      localObject2 = fd.g();
      localArrayList = new ArrayList();
      if (localObject3 != null)
      {
        localObject3 = ((e)localObject3).getFixedAdId();
        if (!TextUtils.isEmpty((CharSequence)localObject3))
        {
          localArrayList.add("FLURRY_VIEWER");
          localArrayList.add(localObject3);
        }
      }
      localObject3 = Collections.emptyMap();
      if (paramau == null) {
        break label1095;
      }
      paramau = paramau.a();
      bool2 = t;
      paramau = u;
      label438:
      localcy = new cy();
      localObject4 = null;
      localObject3 = null;
      if ((params instanceof x))
      {
        localObject3 = (x)params;
        localObject4 = ((x)localObject3).y();
        localObject3 = ((x)localObject3).z();
      }
      if (localObject4 != null) {
        break label1037;
      }
      a = Collections.emptyList();
      label493:
      if (localObject3 != null) {
        break label1047;
      }
      b = Collections.emptyList();
      label506:
      localObject3 = i.a().h().b();
      if (localObject3 != null) {
        break label1092;
      }
      localObject3 = "";
    }
    for (;;)
    {
      if ((params instanceof u))
      {
        localObject1 = cq.c;
        break label57;
      }
      if ((params instanceof x))
      {
        localObject1 = cq.e;
        break label57;
      }
      localObject1 = cq.a;
      break label57;
      label1029:
      localObject2 = Collections.emptyList();
      break label363;
      label1037:
      a = ((List)localObject4);
      break label493;
      label1047:
      b = ((List)localObject3);
      break label506;
      break;
      label1092:
      continue;
      label1095:
      paramau = (au)localObject3;
      bool2 = false;
      break label438;
      label1104:
      bool1 = false;
      break label336;
      label1110:
      break label166;
      label1113:
      break label143;
      label1116:
      bool1 = false;
    }
  }
  
  private void d()
  {
    try
    {
      jq.a().a(this);
      a(dr.a.a);
      i = null;
      g = null;
      h = null;
      j = null;
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  /* Error */
  private void e()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: getstatic 619	com/flurry/sdk/dr$a:b	Lcom/flurry/sdk/dr$a;
    //   5: aload_0
    //   6: getfield 91	com/flurry/sdk/dr:f	Lcom/flurry/sdk/dr$a;
    //   9: invokevirtual 123	com/flurry/sdk/dr$a:equals	(Ljava/lang/Object;)Z
    //   12: istore_1
    //   13: iload_1
    //   14: ifne +6 -> 20
    //   17: aload_0
    //   18: monitorexit
    //   19: return
    //   20: iconst_3
    //   21: getstatic 38	com/flurry/sdk/dr:a	Ljava/lang/String;
    //   24: ldc_w 621
    //   27: invokestatic 119	com/flurry/sdk/kg:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   30: aload_0
    //   31: getstatic 153	com/flurry/sdk/dr$a:c	Lcom/flurry/sdk/dr$a;
    //   34: invokespecial 145	com/flurry/sdk/dr:a	(Lcom/flurry/sdk/dr$a;)V
    //   37: invokestatic 372	com/flurry/sdk/js:a	()Lcom/flurry/sdk/js;
    //   40: new 623	com/flurry/sdk/dr$3
    //   43: dup
    //   44: aload_0
    //   45: invokespecial 624	com/flurry/sdk/dr$3:<init>	(Lcom/flurry/sdk/dr;)V
    //   48: invokevirtual 627	com/flurry/sdk/js:b	(Ljava/lang/Runnable;)V
    //   51: goto -34 -> 17
    //   54: astore_2
    //   55: aload_0
    //   56: monitorexit
    //   57: aload_2
    //   58: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	59	0	this	dr
    //   12	2	1	bool	boolean
    //   54	4	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	13	54	finally
    //   20	51	54	finally
  }
  
  private void f()
  {
    label30:
    au localau;
    Object localObject2;
    Object localObject3;
    try
    {
      boolean bool = dr.a.e.equals(f);
      if (!bool) {
        return;
      }
      Iterator localIterator = j.iterator();
      if (!localIterator.hasNext()) {
        break label218;
      }
      localau = (au)localIterator.next();
      localObject2 = localau.a();
      if (e != null)
      {
        localObject3 = e.iterator();
        while (((Iterator)localObject3).hasNext())
        {
          be localbe = new be((cv)((Iterator)localObject3).next());
          i.a().k().a(localbe);
        }
      }
      localObject2 = d;
    }
    finally {}
    int m = 0;
    for (;;)
    {
      if (m < ((List)localObject2).size())
      {
        localObject3 = fo.a(getb);
        if (localObject3 == null) {
          break label326;
        }
        localau.a(m, (fm)localObject3);
        if (!((fm)localObject3).d()) {
          break label326;
        }
      }
      for (;;)
      {
        if (m >= ((List)localObject2).size()) {
          break label324;
        }
        localau.a(m, ad.a(localau, m));
        m += 1;
        continue;
        label218:
        kg.a(3, a, "Handling ad response for adSpace: " + d + ", size: " + j.size());
        if (j.size() > 0)
        {
          if (i != null) {
            i.a(j);
          }
          js.a().b(new dr.5(this));
        }
        g();
        d();
        break;
        m = 0;
      }
      label324:
      break label30;
      label326:
      m += 1;
    }
  }
  
  private void g()
  {
    ds localds = new ds();
    a = this;
    b = d;
    c = j;
    kc.a().a(localds);
  }
  
  public void a()
  {
    try
    {
      d();
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public void a(s params, y paramy, au paramau)
  {
    for (;;)
    {
      try
      {
        kg.a(3, a, "requestAd: adSpace = " + d);
        if (!dr.a.a.equals(f))
        {
          kg.a(3, a, "requestAds: request pending " + f);
          return;
        }
        if (!jl.a().c())
        {
          kg.a(5, a, "There is no network connectivity (requestAds will fail)");
          g();
          continue;
        }
        g = params;
      }
      finally {}
      h = paramau;
      i = paramy;
      i.a().k().b();
      if (jf.a().c())
      {
        a(dr.a.c);
        js.a().b(new dr.2(this));
      }
      else
      {
        kg.a(3, a, "No reported ids yet; waiting");
        a(dr.a.b);
      }
    }
  }
  
  public void b()
  {
    d();
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.dr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */