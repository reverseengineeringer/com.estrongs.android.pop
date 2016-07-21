package com.flurry.sdk;

import android.location.Location;
import com.flurry.android.AdCreative;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;

public class fd
{
  private static final AtomicInteger a = new AtomicInteger(0);
  
  public static int a()
  {
    return a.incrementAndGet();
  }
  
  public static AdCreative a(cn paramcn)
  {
    if (paramcn == null) {
      return null;
    }
    return new AdCreative(b, a, d, c, e);
  }
  
  public static AdCreative a(co paramco)
  {
    if (paramco == null) {
      return null;
    }
    paramco = d;
    if ((paramco == null) || (paramco.isEmpty())) {
      return null;
    }
    paramco = (cj)paramco.get(0);
    if (paramco == null) {
      return null;
    }
    paramco = d;
    if (paramco == null) {
      return null;
    }
    return a(paramco);
  }
  
  public static List<a> a(cj paramcj, b paramb)
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
          paramcj = (CharSequence)localIterator2.next();
          HashMap localHashMap = new HashMap();
          String str2 = paramcj.toString();
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
  
  public static List<de> a(List<ay> paramList)
  {
    ArrayList localArrayList = new ArrayList();
    if (paramList == null) {
      return localArrayList;
    }
    Iterator localIterator1 = paramList.iterator();
    while (localIterator1.hasNext())
    {
      ay localay = (ay)localIterator1.next();
      de localde = new de();
      a = localay.c();
      if (localay.b() == null) {
        paramList = "";
      }
      for (;;)
      {
        b = paramList;
        paramList = new ArrayList();
        try
        {
          Iterator localIterator2 = localay.d().iterator();
          while (localIterator2.hasNext())
          {
            Object localObject = (ax)localIterator2.next();
            if (((ax)localObject).b())
            {
              dd localdd = new dd();
              a = ((ax)localObject).a();
              c = ((ax)localObject).c();
              localObject = ((ax)localObject).d();
              HashMap localHashMap = new HashMap();
              localHashMap.putAll((Map)localObject);
              b = localHashMap;
              paramList.add(localdd);
            }
          }
          paramList = localay.b();
        }
        finally {}
      }
      c = paramList;
      if (paramList.size() > 0) {
        localArrayList.add(localde);
      }
    }
    return localArrayList;
  }
  
  public static dc b()
  {
    int i = lr.j();
    if (i == 1) {
      return dc.a;
    }
    if (i == 2) {
      return dc.b;
    }
    return dc.c;
  }
  
  public static cx c()
  {
    cx localcx = new cx();
    Location localLocation = jj.a().e();
    if (localLocation != null)
    {
      double d1 = (float)localLocation.getLatitude();
      double d2 = (float)localLocation.getLongitude();
      a = ((float)lt.a(d1, 3));
      b = ((float)lt.a(d2, 3));
    }
    return localcx;
  }
  
  public static List<String> d()
  {
    ArrayList localArrayList = new ArrayList();
    Object localObject = ju.a().c();
    if ((localObject != null) && (!((HashMap)localObject).isEmpty()))
    {
      localObject = ((HashMap)localObject).keySet().iterator();
      while (((Iterator)localObject).hasNext()) {
        localArrayList.add((String)((Iterator)localObject).next());
      }
    }
    return localArrayList;
  }
  
  public static List<ck> e()
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = jf.a().h().entrySet().iterator();
    if (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      ck localck = new ck();
      a = getKeyd;
      if (getKeye) {}
      for (b = new String((byte[])localEntry.getValue());; b = lt.b((byte[])localEntry.getValue()))
      {
        localArrayList.add(localck);
        break;
      }
    }
    return localArrayList;
  }
  
  public static List<cu> f()
  {
    ArrayList localArrayList = new ArrayList();
    i.a().k().b();
    Iterator localIterator = i.a().k().a().iterator();
    while (localIterator.hasNext())
    {
      be localbe = (be)localIterator.next();
      cu localcu = new cu();
      a = localbe.b();
      b = localbe.c();
      d = localbe.e();
      c = localbe.d();
      e = localbe.k();
      f = localbe.f();
      g = localbe.j();
      h = localbe.g();
      i = localbe.h();
      j = localbe.i();
      localArrayList.add(localcu);
    }
    return localArrayList;
  }
  
  public static List<dh> g()
  {
    ArrayList localArrayList = new ArrayList();
    i.a().n().b();
    Iterator localIterator = i.a().n().a().iterator();
    while (localIterator.hasNext())
    {
      bg localbg = (bg)localIterator.next();
      dh localdh = new dh();
      a = localbg.a();
      b = localbg.e();
      c = localbg.c();
      localArrayList.add(localdh);
    }
    return localArrayList;
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.fd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */