package com.estrongs.android.a;

import android.text.TextUtils;
import com.estrongs.android.a.b.a;
import com.estrongs.android.a.b.m;
import com.estrongs.android.a.b.u;
import com.estrongs.android.util.ap;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.CountDownLatch;

public final class b
{
  private static final String a = b.class.getSimpleName();
  private static final b r = new b();
  private v b;
  private q c;
  private l d;
  private ab e;
  private CopyOnWriteArrayList<j> f = new CopyOnWriteArrayList();
  private final j g = new c(this);
  private final j h = new d(this);
  private final j i = new g(this);
  private final j j = new f(this);
  private final j k = new e(this);
  private volatile boolean l = false;
  private volatile boolean m = false;
  private volatile boolean n = false;
  private volatile boolean o = false;
  private String p = null;
  private CountDownLatch q;
  
  public static final b a()
  {
    return r;
  }
  
  private void b(String paramString, j paramj)
  {
    String str = paramString;
    if (paramString.startsWith("file://")) {
      str = "/";
    }
    m = false;
    c = new q(paramj);
    c.a(str);
  }
  
  private void c(String paramString, j paramj)
  {
    o = false;
    e = new ab(paramj);
    e.a(paramString);
  }
  
  private void j()
  {
    List localList = l.a();
    b = new v(j);
    b.a(localList);
  }
  
  private void j(String paramString)
  {
    if ((ap.bp(paramString)) || (p.startsWith("file://"))) {
      paramString = com.estrongs.android.cleaner.j.d();
    }
    for (;;)
    {
      l = false;
      b = new v(g);
      b.a(paramString);
      return;
      String str = paramString;
      if (paramString.charAt(paramString.length() - 1) == File.separatorChar) {
        str = paramString.substring(0, paramString.length() - 1);
      }
      paramString = new ArrayList();
      paramString.add(str);
    }
  }
  
  private a k(String paramString)
  {
    com.estrongs.android.util.l.e(a, "getMediaOverview:" + paramString);
    if ((TextUtils.isEmpty(paramString)) || (!ap.ah(paramString))) {
      return null;
    }
    long l1 = System.currentTimeMillis();
    if (o) {}
    for (paramString = e.b(paramString);; paramString = new a())
    {
      long l2 = System.currentTimeMillis();
      com.estrongs.android.util.l.e(a, "getOverview: " + (l2 - l1) + " ms");
      return paramString;
    }
  }
  
  private void k()
  {
    n = false;
    Object localObject1 = l.a();
    HashMap localHashMap = new HashMap();
    localObject1 = ((List)localObject1).iterator();
    while (((Iterator)localObject1).hasNext())
    {
      Object localObject2 = (String)((Iterator)localObject1).next();
      localObject2 = b.f((String)localObject2);
      if (localObject2 != null)
      {
        localObject2 = ((com.estrongs.android.a.b.g)localObject2).c().iterator();
        while (((Iterator)localObject2).hasNext())
        {
          Object localObject3 = (com.estrongs.fs.h)((Iterator)localObject2).next();
          if ((localObject3 instanceof com.estrongs.android.a.b.g))
          {
            localObject3 = (com.estrongs.android.a.b.g)localObject3;
            localHashMap.put(((com.estrongs.android.a.b.g)localObject3).getAbsolutePath(), localObject3);
          }
        }
      }
    }
    d = new l(localHashMap, i);
    d.b();
  }
  
  private boolean l()
  {
    return l & m & n & o;
  }
  
  public a a(String paramString)
  {
    paramString = ap.bV(paramString);
    if (l) {
      return b.a(paramString);
    }
    if (m) {
      return c.c(paramString);
    }
    return new a();
  }
  
  public a a(String paramString, int paramInt)
  {
    paramString = ap.bV(paramString);
    if (l) {
      return b.a(paramString, paramInt);
    }
    return new a();
  }
  
  public a a(String paramString1, String paramString2)
  {
    paramString1 = ap.bV(paramString1);
    if (TextUtils.isEmpty(paramString1)) {
      return null;
    }
    if (ap.ai(paramString1))
    {
      if (n) {
        return d.b(paramString2);
      }
      return new com.estrongs.android.a.b.c();
    }
    if (ap.ah(p)) {
      return k(paramString1);
    }
    if (l) {
      return b.g(paramString1);
    }
    if (m) {
      return c.b(paramString1);
    }
    return new a();
  }
  
  public void a(com.estrongs.android.a.b.f paramf)
  {
    Object localObject = paramf.a();
    paramf = new ArrayList(((List)localObject).size());
    localObject = ((List)localObject).iterator();
    int i1 = 0;
    if (((Iterator)localObject).hasNext())
    {
      com.estrongs.android.a.b.l locall = new com.estrongs.android.a.b.l(((com.estrongs.android.a.b.g)((Iterator)localObject).next()).getAbsolutePath());
      if (locall.h()) {
        break label93;
      }
      i1 = 1;
      paramf.add(locall);
    }
    label93:
    for (;;)
    {
      break;
      if (i1 != 0) {
        b.c(paramf);
      }
      return;
    }
  }
  
  public void a(j paramj)
  {
    if (paramj == null) {
      return;
    }
    if (l())
    {
      paramj.a(p);
      return;
    }
    f.add(paramj);
  }
  
  public void a(String paramString, j paramj)
  {
    com.estrongs.android.util.l.e(a, "schema: " + paramString);
    if (TextUtils.isEmpty(paramString)) {}
    do
    {
      return;
      if (paramj == null)
      {
        com.estrongs.android.util.l.e(a, "Analysis Callback is null!");
        return;
      }
      f.clear();
      f.add(paramj);
      p = ap.bV(paramString);
      if ((com.estrongs.android.cleaner.j.d().contains(p)) || (ap.bp(p)) || (p.startsWith("file://")) || (ap.bC(p)))
      {
        com.estrongs.android.util.l.e(a, "analyze disk and lib");
        n = true;
        o = true;
        b(p, h);
        j(p);
        return;
      }
      if (ap.ai(p))
      {
        com.estrongs.android.util.l.c(a, "analyze app only");
        m = true;
        o = true;
        q = new CountDownLatch(1);
        j();
        new Thread(new h(this)).start();
        return;
      }
      if (p.startsWith("/"))
      {
        com.estrongs.android.util.l.e(a, "analyze disk only");
        m = true;
        n = true;
        o = true;
        j(p);
        return;
      }
      if ((ap.ah(p)) || (ap.aY(p)))
      {
        com.estrongs.android.util.l.e(a, "analyze media only");
        l = true;
        n = true;
        m = true;
        c(p, k);
        return;
      }
      com.estrongs.android.util.l.e(a, "no any analysis!!!");
    } while (paramj == null);
    paramj.a(p);
  }
  
  public void a(List<com.estrongs.fs.h> paramList, k paramk)
  {
    if ((paramList == null) || (paramList.isEmpty())) {
      return;
    }
    new Thread(new i(this, paramList, paramk)).start();
  }
  
  public a b(String paramString, int paramInt)
  {
    paramString = ap.bV(paramString);
    if (ap.ah(paramString)) {
      return e.d(paramString, paramInt);
    }
    if (!l) {
      return new a();
    }
    return b.b(paramString, paramInt);
  }
  
  public u b(String paramString)
  {
    paramString = ap.bV(paramString);
    if (ap.ah(paramString)) {
      return e.f(paramString);
    }
    if (!l) {
      return new u();
    }
    return b.b(paramString);
  }
  
  public void b()
  {
    if (b != null) {
      b.a();
    }
    if (c != null) {
      c.a();
    }
    if (d != null) {
      d.c();
    }
    if (e != null) {
      e.a();
    }
  }
  
  public void b(j paramj)
  {
    if ((paramj == null) || (f == null)) {
      return;
    }
    f.remove(paramj);
  }
  
  public a c()
  {
    if (!l) {
      localObject = new a();
    }
    List localList;
    do
    {
      return (a)localObject;
      localObject = b.b();
      localList = ((a)localObject).c();
    } while (localList.size() != 1);
    Object localObject = (com.estrongs.android.a.b.g)localList.get(0);
    return new a(((com.estrongs.android.a.b.g)localObject).c(), ((com.estrongs.android.a.b.g)localObject).b(), ((com.estrongs.android.a.b.g)localObject).a(), ((com.estrongs.android.a.b.g)localObject).length());
  }
  
  public a c(String paramString)
  {
    paramString = ap.bV(paramString);
    if (ap.ah(paramString)) {
      return e.c(paramString);
    }
    if (l) {
      return b.c(paramString);
    }
    if (m) {
      return c.d(paramString);
    }
    return new a();
  }
  
  public a c(String paramString, int paramInt)
  {
    paramString = ap.bV(paramString);
    if (ap.ah(paramString)) {
      return e.a(paramString, paramInt);
    }
    if (l) {
      return b.c(paramString, paramInt);
    }
    return new a();
  }
  
  public a d(String paramString)
  {
    paramString = ap.bV(paramString);
    if (l) {
      return b.d(paramString);
    }
    if (m) {
      return c.e(paramString);
    }
    return new a();
  }
  
  public a d(String paramString, int paramInt)
  {
    paramString = ap.bV(paramString);
    if (l) {
      return b.d(paramString, paramInt);
    }
    return new a();
  }
  
  public Map<String, a> d()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("pic://", g("pic://"));
    localHashMap.put("video://", g("video://"));
    localHashMap.put("music://", g("music://"));
    localHashMap.put("book://", g("book://"));
    localHashMap.put("apk://", g("apk://"));
    localHashMap.put("file://", g(p));
    return localHashMap;
  }
  
  public final a e()
  {
    if (!n) {
      return new m();
    }
    HashMap localHashMap = new HashMap();
    localHashMap.put("Memory", d.h());
    localHashMap.put("Cache", d.g());
    localHashMap.put("Battery", d.j());
    localHashMap.put("Associated", l.k());
    return new m(localHashMap, 0, 0, 0L);
  }
  
  public a e(String paramString, int paramInt)
  {
    paramString = ap.bV(paramString);
    if (ap.ah(p)) {
      return e.e(paramString, paramInt);
    }
    if (!l) {
      return new a();
    }
    return b.e(paramString, paramInt);
  }
  
  public m e(String paramString)
  {
    paramString = ap.bV(paramString);
    com.estrongs.android.util.l.e(a, "getRedundantFileList:" + paramString);
    if (ap.ah(p)) {
      return e.g(paramString);
    }
    if (!l) {
      return new m();
    }
    return b.e(paramString);
  }
  
  public final a f()
  {
    return new a(l.k(), 0, 0, 0L);
  }
  
  public a f(String paramString, int paramInt)
  {
    return e.c(paramString, paramInt);
  }
  
  public u f(String paramString)
  {
    paramString = ap.bV(paramString);
    com.estrongs.android.util.l.e(a, "getSimilarImageFileList:" + paramString);
    if (!o) {
      return new u();
    }
    long l1 = System.currentTimeMillis();
    paramString = e.e(paramString);
    long l2 = System.currentTimeMillis();
    com.estrongs.android.util.l.e(a, "getSimilarImageFileList: " + (l2 - l1) + " ms");
    return paramString;
  }
  
  public final a g()
  {
    if (!n) {
      return new m();
    }
    return new m(d.i(), 0, 0, 0L);
  }
  
  public a g(String paramString)
  {
    return a(paramString, null);
  }
  
  public final a g(String paramString, int paramInt)
  {
    return e.b(paramString, paramInt);
  }
  
  public final a h(String paramString, int paramInt)
  {
    return e.f(paramString, paramInt);
  }
  
  public final com.estrongs.android.a.b.d h(String paramString)
  {
    return e.d(paramString);
  }
  
  public final a i(String paramString)
  {
    return e.h(paramString);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.a.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */