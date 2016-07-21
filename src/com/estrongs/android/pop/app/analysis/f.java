package com.estrongs.android.pop.app.analysis;

import android.os.Handler;
import android.os.HandlerThread;
import android.text.TextUtils;
import com.estrongs.android.b.a.a.d;
import com.estrongs.android.b.a.e;
import com.estrongs.android.b.a.p;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.utils.cl;
import com.estrongs.android.pop.utils.w;
import com.estrongs.android.util.ap;
import com.estrongs.android.util.l;
import com.estrongs.fs.h;
import java.text.SimpleDateFormat;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONObject;

public class f
{
  private j a;
  private String b;
  private List<com.estrongs.android.b.a.a> c;
  private CopyOnWriteArrayList<com.estrongs.android.b.a.a> d = new CopyOnWriteArrayList();
  private SimpleDateFormat e = new SimpleDateFormat("yyyy-MM-dd");
  private Handler f;
  private HandlerThread g;
  private y h;
  private String[] i = { "redundancy", "appcatalog", "apprelationfile", "duplicate", "internal_storage", "largefile" };
  private Comparator j = new i(this);
  
  public f(String paramString, y paramy, j paramj)
  {
    b = paramString;
    h = paramy;
    a = paramj;
    g = new HandlerThread("analysis");
    g.start();
    f = new Handler(g.getLooper());
  }
  
  private com.estrongs.android.b.a.a a()
  {
    com.estrongs.android.b.a.a locala = new com.estrongs.android.b.a.a("ad");
    locala.a(4);
    return locala;
  }
  
  private void a(com.estrongs.android.b.a.a.a parama, h paramh)
  {
    t = paramh.getName();
    parama.a(paramh);
    if (parama.m().equals("appcatalog"))
    {
      u = paramh.getAbsolutePath();
      return;
    }
    if (parama.m().equals("internal_storage"))
    {
      paramh = (com.estrongs.android.a.b.f)paramh;
      y = paramh.b();
      u = paramh.e();
      return;
    }
    paramh = (com.estrongs.android.a.b.f)paramh;
    u = paramh.e();
    y = paramh.length();
  }
  
  private void a(com.estrongs.android.b.a.a parama)
  {
    Object localObject2 = (com.estrongs.android.a.b.c)com.estrongs.android.a.b.a().a(b, parama.p());
    if (localObject2 == null) {
      return;
    }
    Object localObject1 = k.a();
    parama = (com.estrongs.android.b.a.a.a)parama;
    parama.d(a.a().f());
    parama.b(true);
    A = ((com.estrongs.android.a.b.c)localObject2).e();
    B = ((com.estrongs.android.a.b.c)localObject2).f();
    localObject2 = ((com.estrongs.android.a.b.c)localObject2).i();
    if (((Set)localObject2).isEmpty())
    {
      parama.c(true);
      return;
    }
    if (((Set)localObject2).size() >= 2)
    {
      Object localObject3 = ((Set)localObject2).iterator();
      localObject2 = (String)((Iterator)localObject3).next();
      localObject3 = (String)((Iterator)localObject3).next();
      n localn = k.a((JSONObject)localObject1, (String)localObject2);
      localObject1 = k.a((JSONObject)localObject1, (String)localObject3);
      t = a;
      u = ((String)localObject2);
      s = f;
      w = a;
      v = f;
      x = ((String)localObject3);
      return;
    }
    localObject2 = (String)((Set)localObject2).iterator().next();
    localObject1 = k.a((JSONObject)localObject1, (String)localObject2);
    t = a;
    u = ((String)localObject2);
    s = f;
  }
  
  private void a(com.estrongs.android.b.a.a parama, com.estrongs.android.a.b.a parama1)
  {
    com.estrongs.android.b.a.a.a locala = (com.estrongs.android.b.a.a.a)parama;
    parama = a.a(parama.m(), parama1, parama.p());
    if ((parama == null) || (parama.size() < 1))
    {
      locala.c(true);
      locala.b(true);
      return;
    }
    if (parama.size() >= 2)
    {
      a(locala, (h)parama.get(0));
      b(locala, (h)parama.get(1));
    }
    for (;;)
    {
      locala.c(false);
      break;
      a(locala, (h)parama.get(0));
    }
  }
  
  private void a(com.estrongs.android.b.a.a parama, com.estrongs.android.a.b.a parama1, boolean paramBoolean)
  {
    if (parama1 == null)
    {
      parama.c(true);
      return;
    }
    if (ap.ai(parama.j()))
    {
      parama1 = (com.estrongs.android.a.b.c)parama1;
      parama.a("size", Long.valueOf(parama1.b()));
      parama.a("number", Integer.valueOf(parama1.e()));
      parama.a("cache", Long.valueOf(parama1.h()));
      parama.a("memory", Long.valueOf(parama1.g()));
    }
    for (;;)
    {
      parama.c(false);
      parama.b(paramBoolean);
      return;
      parama.a("size", Long.valueOf(parama1.b()));
      parama.a("number", Integer.valueOf(parama1.d()));
    }
  }
  
  private void a(com.estrongs.android.b.a.a parama, Map<String, com.estrongs.android.a.b.a> paramMap, boolean paramBoolean)
  {
    if (parama.m() != null) {
      l.d(parama.m());
    }
    if ((parama instanceof com.estrongs.android.b.a.a.b)) {
      if (!parama.h()) {
        b(parama, paramMap, paramBoolean);
      }
    }
    for (;;)
    {
      if (parama.m() != null) {
        l.e(parama.m());
      }
      return;
      if ((!(parama instanceof d)) && (parama.l().equals("pandect")))
      {
        if (paramBoolean) {
          parama.b(true);
        }
        if (!com.estrongs.android.b.a.f.a().c(b)) {
          a(parama, com.estrongs.android.a.b.a().g(b), paramBoolean);
        } else {
          c(parama, com.estrongs.android.a.b.a().d(), paramBoolean);
        }
      }
    }
  }
  
  private void a(List<com.estrongs.android.b.a.a> paramList)
  {
    int k = paramList.size();
    while (k > 0)
    {
      com.estrongs.android.b.a.a locala = (com.estrongs.android.b.a.a)paramList.get(k - 1);
      if ((locala.h()) && (locala.i())) {
        paramList.remove(k - 1);
      }
      k -= 1;
    }
  }
  
  private com.estrongs.android.b.a.a b(String paramString)
  {
    if (cl.a()) {
      return null;
    }
    if ((ap.bC(paramString)) || (ap.ai(paramString))) {
      if (ap.bC(paramString))
      {
        paramString = com.estrongs.android.b.a.f.a().a("analysis-sd-card", "");
        if ((paramString == null) || (paramString.a() == null)) {
          break label136;
        }
        Iterator localIterator = paramString.a().iterator();
        while (localIterator.hasNext())
        {
          paramString = (com.estrongs.android.b.a.a)localIterator.next();
          String str = paramString.l();
          if ((!TextUtils.isEmpty(str)) && (str.equals("recommend")) && (b(paramString))) {
            paramString.a(7);
          }
        }
      }
    }
    for (;;)
    {
      return paramString;
      paramString = com.estrongs.android.b.a.f.a().a("analysis-app-card", "");
      break;
      label136:
      paramString = null;
    }
  }
  
  private CopyOnWriteArrayList<com.estrongs.android.b.a.a> b(List<com.estrongs.android.b.a.a> paramList)
  {
    d.clear();
    if (h != null) {
      h.a(paramList);
    }
    for (;;)
    {
      d.addAll(paramList);
      if (d.size() >= 5)
      {
        d.add(1, a());
        d.add(4, a());
        label67:
        paramList = b(b);
        if (paramList != null) {
          paramList.a(b);
        }
      }
      try
      {
        if (d.size() >= 4) {
          d.add(3, paramList);
        }
      }
      catch (Exception paramList)
      {
        try
        {
          label108:
          paramList = com.estrongs.android.j.c.a(FexApplication.a());
          if (ap.bC(b))
          {
            paramList.a("A_sd_recom_show");
            paramList.c("recommend_card", "A_sd_recom_show");
          }
          for (;;)
          {
            return d;
            if (a.a().f()) {
              break;
            }
            c(paramList);
            break;
            if ((d.size() > 4) || (d.size() < 1)) {
              break label67;
            }
            d.add(1, a());
            break label67;
            d.add(paramList);
            break label108;
            paramList = paramList;
            paramList.printStackTrace();
            break label108;
            if (ap.ai(b))
            {
              paramList.a("A_app_recom_show");
              paramList.c("recommend_card", "A_app_recom_show");
            }
          }
        }
        catch (Exception paramList)
        {
          for (;;)
          {
            paramList.printStackTrace();
          }
        }
      }
    }
  }
  
  private void b(com.estrongs.android.b.a.a.a parama, h paramh)
  {
    w = paramh.getName();
    parama.b(paramh);
    if (parama.m().equals("appcatalog"))
    {
      x = paramh.getAbsolutePath();
      return;
    }
    if (parama.m().equals("internal_storage"))
    {
      paramh = (com.estrongs.android.a.b.f)paramh;
      z = paramh.b();
      x = paramh.e();
      return;
    }
    paramh = (com.estrongs.android.a.b.f)paramh;
    x = paramh.e();
    z = paramh.length();
  }
  
  private void b(com.estrongs.android.b.a.a parama, Map<String, com.estrongs.android.a.b.a> paramMap, boolean paramBoolean)
  {
    com.estrongs.android.b.a.a.b localb = (com.estrongs.android.b.a.a.b)parama;
    parama = localb.m();
    if (!paramBoolean)
    {
      paramMap = (com.estrongs.android.a.b.a)paramMap.get(parama);
      parama = paramMap;
      if (paramMap == null) {
        localb.c(true);
      }
    }
    else
    {
      localb.b(true);
      parama = a.a(localb.j(), localb.m(), localb.p());
    }
    if (parama == null)
    {
      localb.c(true);
      return;
    }
    s = parama.d();
    t = parama.b();
    parama = parama.c();
    if ((parama != null) && (parama.size() > 0))
    {
      if (parama.size() >= 2)
      {
        u = ((h)parama.get(0)).getName();
        if (localb.m().equals("newcreate"))
        {
          v = e.format(Long.valueOf(((h)parama.get(0)).createdTime()));
          y = e.format(Long.valueOf(((h)parama.get(1)).createdTime()));
          localb.a((h)parama.get(0));
          w = ((h)parama.get(0)).length();
          x = ((h)parama.get(1)).getName();
          z = ((h)parama.get(1)).length();
          localb.b((h)parama.get(1));
        }
      }
      for (;;)
      {
        localb.c(false);
        return;
        v = ((h)parama.get(0)).getAbsolutePath();
        y = ((h)parama.get(1)).getAbsolutePath();
        break;
        u = ((h)parama.get(0)).getName();
        v = ((h)parama.get(0)).getAbsolutePath();
        w = ((h)parama.get(0)).length();
        localb.a((h)parama.get(0));
        localb.b(null);
      }
    }
    localb.c(true);
  }
  
  private boolean b(com.estrongs.android.b.a.a parama)
  {
    return (parama != null) && ((parama instanceof p)) && (!w.a(((p)parama).e("key")));
  }
  
  private void c(com.estrongs.android.b.a.a parama, Map<String, com.estrongs.android.a.b.a> paramMap, boolean paramBoolean)
  {
    if ((paramMap == null) || (paramMap.size() == 0))
    {
      parama.c(true);
      return;
    }
    parama.a("img", Long.valueOf(((com.estrongs.android.a.b.a)paramMap.get("pic://")).b()));
    parama.a("video", Long.valueOf(((com.estrongs.android.a.b.a)paramMap.get("video://")).b()));
    parama.a("audio", Long.valueOf(((com.estrongs.android.a.b.a)paramMap.get("music://")).b()));
    parama.a("doc", Long.valueOf(((com.estrongs.android.a.b.a)paramMap.get("book://")).b()));
    parama.a("apk", Long.valueOf(((com.estrongs.android.a.b.a)paramMap.get("apk://")).b()));
    parama.a("other", Long.valueOf(((com.estrongs.android.a.b.a)paramMap.get("file://")).b()));
    parama.c(false);
    parama.b(paramBoolean);
  }
  
  private void c(List<com.estrongs.android.b.a.a> paramList)
  {
    String[] arrayOfString = i;
    int m = arrayOfString.length;
    int k = 0;
    for (;;)
    {
      if (k < m)
      {
        String str1 = arrayOfString[k];
        Iterator localIterator = paramList.iterator();
        com.estrongs.android.b.a.a locala;
        String str2;
        do
        {
          if (!localIterator.hasNext()) {
            break;
          }
          locala = (com.estrongs.android.b.a.a)localIterator.next();
          str2 = locala.m();
        } while ((TextUtils.isEmpty(str2)) || (!str2.equals(str1)));
        locala.d(true);
      }
      return;
      k += 1;
    }
  }
  
  public void a(String paramString)
  {
    if (TextUtils.isEmpty(b)) {
      return;
    }
    f.post(new g(this, paramString));
  }
  
  protected void a(Map<String, com.estrongs.android.a.b.a> paramMap, boolean paramBoolean, List<com.estrongs.android.b.a.a> paramList)
  {
    try
    {
      if ((ap.bl(b)) || (ap.V(b)) || (ap.Z(b)) || (ap.ae(b)) || (ap.aY(b)) || (ap.X(b)))
      {
        localIterator = paramList.iterator();
        while (localIterator.hasNext()) {
          a((com.estrongs.android.b.a.a)localIterator.next(), paramMap, paramBoolean);
        }
      }
      if (!ap.ai(b)) {
        break label231;
      }
    }
    finally {}
    paramMap = com.estrongs.android.a.b.a().e();
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      com.estrongs.android.b.a.a locala = (com.estrongs.android.b.a.a)localIterator.next();
      if ((locala instanceof com.estrongs.android.b.a.a.a))
      {
        if (locala.m().equals("sensitive_permission")) {
          a(locala);
        } else {
          a(locala, paramMap);
        }
      }
      else if (locala.l().equals("pandect")) {
        a(locala, com.estrongs.android.a.b.a().a(b, locala.p()), paramBoolean);
      }
    }
    label231:
    a(paramList);
    a.a(b(paramList), b);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.analysis.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */