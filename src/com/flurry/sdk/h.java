package com.flurry.sdk;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class h
{
  private static final String a = h.class.getSimpleName();
  private static Map<String, az> b = Collections.unmodifiableMap(new h.1());
  private static Set<az> c = Collections.unmodifiableSet(new h.2());
  private final kb<c> d = new h.3(this);
  
  private void a(b paramb, List<a> paramList)
  {
    Iterator localIterator = paramList.iterator();
    do
    {
      if (!localIterator.hasNext()) {
        break;
      }
    } while ((!((a)localIterator.next()).a().equals(az.f)) || (!b.containsValue(bb.d.a())));
    for (int i = 1;; i = 0)
    {
      if (i == 0)
      {
        kg.a(3, "VerifyPackageLog", "onPackageVerified() no nextAdUnit or different originator, ready to fire PRE-RENDER. ");
        c(paramb, paramList);
      }
      return;
    }
  }
  
  private void a(c paramc)
  {
    Object localObject1 = a;
    Object localObject2 = a.a();
    List localList = a(((b)localObject1).d(), (b)localObject1);
    f.a().a((String)localObject2, 1);
    i.a().n().a((b)localObject1);
    if (localList.isEmpty())
    {
      localObject2 = b.entrySet().iterator();
      while (((Iterator)localObject2).hasNext())
      {
        Map.Entry localEntry = (Map.Entry)((Iterator)localObject2).next();
        if (((String)localEntry.getKey()).equals(a.a())) {
          localList.add(new a((az)localEntry.getValue(), b, (b)localObject1));
        }
      }
    }
    switch (h.4.a[a.ordinal()])
    {
    }
    for (;;)
    {
      kg.a(3, a, "Event not handled: " + a + " for adSpace:" + ((b)localObject1).c().p());
      for (;;)
      {
        a(paramc, localList);
        return;
        k((b)localObject1, localList);
        continue;
        d((b)localObject1, localList);
        continue;
        e((b)localObject1, localList);
        continue;
        f((b)localObject1, localList);
        continue;
        g((b)localObject1, localList);
        continue;
        h((b)localObject1, localList);
        continue;
        i((b)localObject1, localList);
        continue;
        j((b)localObject1, localList);
        continue;
        i((b)localObject1);
        continue;
        m((b)localObject1, localList);
        continue;
        localObject1 = localList.iterator();
        while (((Iterator)localObject1).hasNext())
        {
          localObject2 = (a)((Iterator)localObject1).next();
          if (((a)localObject2).a().equals(az.m)) {
            ((a)localObject2).a("is_privacy", "true");
          }
        }
        continue;
        c((b)localObject1);
        continue;
        d((b)localObject1);
        continue;
        c((b)localObject1);
        continue;
        a((b)localObject1);
        continue;
        b((b)localObject1);
        continue;
        e((b)localObject1);
        continue;
        f((b)localObject1);
        continue;
        a((b)localObject1, localList);
        continue;
        b((b)localObject1, localList);
        continue;
        j((b)localObject1);
        continue;
        k((b)localObject1);
      }
      i.a().a(((b)localObject1).c().e(), bb.Z, true, Collections.emptyMap());
    }
  }
  
  private void a(c paramc, List<a> paramList)
  {
    a locala = null;
    Iterator localIterator1 = paramList.iterator();
    paramList = locala;
    if (localIterator1.hasNext())
    {
      locala = (a)localIterator1.next();
      if (!locala.a().equals(az.c)) {
        break label237;
      }
      locala.a("__sendToServer", "true");
      paramList = locala;
    }
    label237:
    for (;;)
    {
      if (locala.a().equals(az.l))
      {
        Iterator localIterator2 = cb.entrySet().iterator();
        while (localIterator2.hasNext())
        {
          Map.Entry localEntry = (Map.Entry)localIterator2.next();
          locala.a((String)localEntry.getKey(), (String)localEntry.getValue());
        }
      }
      kg.d(a, locala.toString());
      i.a().o().a(locala, b + 1);
      break;
      if (paramList == null)
      {
        paramList = new HashMap();
        paramList.put("__sendToServer", "false");
        paramList = new a(az.c, paramList, a);
        kg.d(a, paramList.toString());
        i.a().o().a(paramList, b + 1);
      }
      return;
    }
  }
  
  private void b(b paramb, List<a> paramList)
  {
    if (b.containsValue(bb.d.a()))
    {
      kg.a(3, "VerifyPackageLog", "onPackageNotVerified() ready to fire PRE-RENDER.");
      c(paramb, paramList);
    }
  }
  
  private void c(b paramb, List<a> paramList)
  {
    kg.a(3, "VerifyPackageLog", "onStartPrerender() Ready to pre-render.");
    paramb.b().i().e();
  }
  
  private void d()
  {
    gr localgr = new gr();
    e = gr.a.b;
    localgr.b();
  }
  
  private void d(b paramb, List<a> paramList)
  {
    paramList = paramb.c().m();
    if (!paramList.d())
    {
      fn.d(paramb.c(), a.a(), df);
      paramList.c(true);
      paramb.c().a(paramList);
    }
  }
  
  private void e(b paramb)
  {
    kg.a(3, a, "Firing onAdImpressionLogged, adObject=" + paramb.b());
    d locald = new d();
    a = paramb.b();
    b = d.a.j;
    locald.b();
  }
  
  private void e(b paramb, List<a> paramList)
  {
    fn.e(paramb.c(), a.a(), df);
    paramList = paramb.c().m();
    paramList.a(true);
    paramb.c().a(paramList);
  }
  
  private void f(b paramb)
  {
    if ((paramb.b() instanceof x)) {
      f.a().a("nativeAdFilled", 1);
    }
  }
  
  private void f(b paramb, List<a> paramList)
  {
    fn.f(paramb.c(), a.a(), df);
    paramList = paramb.c().m();
    paramList.d(true);
    paramb.c().a(paramList);
  }
  
  private void g(b paramb)
  {
    kg.a(3, a, "Firing onRenderFailed, adObject=" + paramb.b());
    d locald = new d();
    a = paramb.b();
    b = d.a.d;
    locald.b();
  }
  
  private void g(b paramb, List<a> paramList)
  {
    fn.g(paramb.c(), a.a(), df);
    paramList = paramb.c().m();
    paramList.e(true);
    paramb.c().a(paramList);
  }
  
  private void h(b paramb, List<a> paramList)
  {
    fn.h(paramb.c(), a.a(), df);
    paramList = paramb.c().m();
    paramList.f(true);
    paramb.c().a(paramList);
  }
  
  private boolean h(b paramb)
  {
    if ((String)b.remove("binding_3rd_party") != null) {}
    for (boolean bool = true;; bool = false)
    {
      if (ed.get(0)).a == 4) {
        return true;
      }
      return bool;
    }
  }
  
  private void i(b paramb)
  {
    i.a().l().a(paramb.b());
    i.a().l().g();
  }
  
  private void i(b paramb, List<a> paramList)
  {
    fn.i(paramb.c(), a.a(), df);
    if (TextUtils.isEmpty((String)b.get("doNotRemoveAssets")))
    {
      i.a().l().a(paramb.b());
      i.a().l().g();
    }
    kg.a(3, a, "initLayout onVideoCompleted " + paramb.a());
    if (en)
    {
      kg.a(3, a, "Ad unit is rewardable, onVideoCompleted listener will fire");
      kg.a(3, a, "Firing onVideoCompleted, adObject=" + paramb.b());
      paramList = new d();
      a = paramb.b();
      b = d.a.k;
      paramList.b();
      return;
    }
    kg.a(3, a, "Ad unit is not rewardable, onVideoCompleted listener will not fire");
  }
  
  private void j(b paramb)
  {
    kg.a(3, a, "Firing onExpanded, adObject=" + paramb.b());
    d locald = new d();
    a = paramb.b();
    b = d.a.l;
    locald.b();
  }
  
  private void j(b paramb, List<a> paramList)
  {
    paramb.c().p();
    kg.a(3, a, "Firing onClicked, adObject=" + paramb.b());
    if ((paramb.b() instanceof x)) {
      f.a().a("nativeAdClick", 1);
    }
    paramList = new d();
    a = paramb.b();
    b = d.a.h;
    paramList.b();
    paramList = paramb.c();
    Object localObject = paramList.g();
    if (localObject != null)
    {
      gk localgk = paramb.c().m();
      localObject = ((fm)localObject).i();
      if ((localgk != null) && (!TextUtils.isEmpty((CharSequence)localObject)))
      {
        paramList.a(localgk);
        i.a().o().a(paramb.a(), (String)localObject, true, paramb.b());
      }
      if ((localgk != null) && (!localgk.j()))
      {
        localgk.i(true);
        paramList.a(localgk);
        fn.c(paramb.c(), a.a(), df);
      }
    }
  }
  
  private void k(b paramb)
  {
    kg.a(3, a, "Firing onCollapsed, adObject=" + paramb.b());
    d locald = new d();
    a = paramb.b();
    b = d.a.m;
    locald.b();
  }
  
  private void k(b paramb, List<a> paramList)
  {
    boolean bool = h(paramb);
    if ((b.remove("preRender") == null) && (bool != true)) {
      g(paramb);
    }
    for (;;)
    {
      fn.b(paramb.c(), a.a(), df);
      if (paramb.c().l()) {
        d();
      }
      i.a().l().c(paramb.c());
      i.a().l().a(paramb.b());
      i.a().l().g();
      return;
      l(paramb, paramList);
    }
  }
  
  private void l(b paramb, List<a> paramList)
  {
    paramList = paramList.iterator();
    a locala;
    do
    {
      if (!paramList.hasNext()) {
        break;
      }
      locala = (a)paramList.next();
    } while (!az.f.equals(locala.a()));
    for (int i = 0;; i = 1)
    {
      if (i != 0)
      {
        kg.a(3, a, "Firing onFetchFailed, adObject=" + paramb.b());
        paramList = new d();
        a = paramb.b();
        b = d.a.b;
        paramList.b();
      }
      return;
    }
  }
  
  private void m(b paramb, List<a> paramList)
  {
    fn.a(paramb.c(), a.a(), df);
    Iterator localIterator = paramList.iterator();
    a locala;
    do
    {
      if (!localIterator.hasNext()) {
        break;
      }
      locala = (a)localIterator.next();
    } while (!c.contains(locala.a()));
    for (int i = 1;; i = 0)
    {
      if (i == 0)
      {
        paramList.add(0, new a(az.g, Collections.emptyMap(), paramb));
        i.a().l().a(paramb.b());
        i.a().l().g();
      }
      return;
    }
  }
  
  public List<a> a(cj paramcj, b paramb)
  {
    ArrayList localArrayList = new ArrayList();
    paramcj = e;
    String str3 = a.a();
    Iterator localIterator1 = paramcj.iterator();
    while (localIterator1.hasNext())
    {
      paramcj = (cr)localIterator1.next();
      if (a.equals(str3))
      {
        Iterator localIterator2 = b.iterator();
        while (localIterator2.hasNext())
        {
          String str2 = (String)localIterator2.next();
          HashMap localHashMap = new HashMap();
          int i = str2.indexOf('?');
          paramcj = str2;
          if (i != -1)
          {
            String str1 = str2.substring(0, i);
            str2 = str2.substring(i + 1);
            paramcj = str2;
            if (str2.contains("%{eventParams}"))
            {
              paramcj = str2.replace("%{eventParams}", "");
              localHashMap.putAll(b);
            }
            localHashMap.putAll(lt.h(paramcj));
            paramcj = str1;
          }
          localArrayList.add(new a(a.c(paramcj), localHashMap, paramb));
        }
      }
    }
    return localArrayList;
  }
  
  public void a()
  {
    kg.a(3, a, "Unregister Event Handler ");
    kc.a().a(d);
  }
  
  public void a(b paramb)
  {
    kg.a(3, a, "Firing onOpen, adObject=" + paramb.b());
    d locald = new d();
    a = paramb.b();
    b = d.a.e;
    locald.b();
  }
  
  public void b()
  {
    kg.a(3, a, "Registered Event Handler ");
    kc.a().a("com.flurry.android.impl.ads.AdEvent", d);
  }
  
  public void b(b paramb)
  {
    kg.a(3, a, "Firing onAppExit, adObject=" + paramb.b());
    d locald = new d();
    a = paramb.b();
    b = d.a.g;
    locald.b();
    d();
  }
  
  public void c(b paramb)
  {
    kg.a(3, a, "Firing onClose, adObject=" + paramb.b());
    d locald = new d();
    a = paramb.b();
    b = d.a.f;
    locald.b();
    d();
  }
  
  public void d(b paramb)
  {
    kg.a(3, a, "Firing onVideoClose, adObject=" + paramb.b());
    d locald = new d();
    a = paramb.b();
    b = d.a.f;
    locald.b();
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */