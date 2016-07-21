package com.flurry.sdk;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

public class fm
{
  private int a;
  private List<fu> b;
  private boolean c;
  private boolean d;
  
  public static fm a(fm paramfm1, fm paramfm2)
  {
    if ((paramfm1 == null) || (paramfm2 == null)) {
      return null;
    }
    Object localObject1 = paramfm1.a();
    paramfm2 = paramfm2.a();
    if ((localObject1 == null) || (((List)localObject1).isEmpty()) || (paramfm2 == null) || (paramfm2.isEmpty())) {
      return null;
    }
    localObject1 = (fu)((List)localObject1).get(0);
    paramfm2 = (fu)paramfm2.get(0);
    Object localObject3 = ((fu)localObject1).c();
    paramfm2 = paramfm2.c();
    if ((localObject3 == null) || (paramfm2 == null)) {
      return null;
    }
    if ((!fp.c.equals(((fw)localObject3).a())) || ((!fp.b.equals(paramfm2.a())) && (!fp.c.equals(paramfm2.a())))) {
      return null;
    }
    Object localObject5 = ((fw)localObject3).g();
    Object localObject4 = paramfm2.g();
    if ((localObject4 == null) || (((List)localObject4).isEmpty())) {
      return null;
    }
    Object localObject2 = new ArrayList(1);
    if ((localObject5 == null) || (((List)localObject5).isEmpty())) {
      ((List)localObject2).addAll((Collection)localObject4);
    }
    for (;;)
    {
      localObject4 = new fw.a();
      ((fw.a)localObject4).a(fp.c);
      ((fw.a)localObject4).a(paramfm2.b());
      ((fw.a)localObject4).a(((fw)localObject3).c());
      localObject5 = new ArrayList();
      localObject6 = ((fw)localObject3).d();
      if (localObject6 != null) {
        ((List)localObject5).addAll((Collection)localObject6);
      }
      localObject6 = paramfm2.d();
      if (localObject6 == null) {
        break label462;
      }
      Iterator localIterator = ((List)localObject6).iterator();
      do
      {
        if (!localIterator.hasNext()) {
          break;
        }
      } while (!((List)localObject5).contains((String)localIterator.next()));
      return null;
      localObject5 = (fx)((List)localObject5).get(0);
      localObject4 = (fx)((List)localObject4).get(0);
      localObject5 = ((fx)localObject5).d();
      localObject6 = ((fx)localObject4).d();
      if ((localObject5 == null) || (localObject6 == null)) {
        return null;
      }
      localObject5 = fy.a((fy)localObject5, (fy)localObject6);
      if (localObject5 == null) {
        return null;
      }
      localObject6 = new fx.a();
      ((fx.a)localObject6).a(((fx)localObject4).a());
      ((fx.a)localObject6).a(((fx)localObject4).b());
      ((fx.a)localObject6).a(((fx)localObject4).c());
      ((fx.a)localObject6).a((fy)localObject5);
      ((List)localObject2).add(((fx.a)localObject6).a());
    }
    ((List)localObject5).addAll((Collection)localObject6);
    label462:
    ((fw.a)localObject4).a((List)localObject5);
    localObject5 = new ArrayList();
    Object localObject6 = ((fw)localObject3).e();
    if (localObject6 != null) {
      ((List)localObject5).addAll((Collection)localObject6);
    }
    localObject6 = paramfm2.e();
    if (localObject6 != null) {
      ((List)localObject5).addAll((Collection)localObject6);
    }
    ((fw.a)localObject4).b((List)localObject5);
    localObject5 = new ArrayList();
    localObject3 = ((fw)localObject3).f();
    if (localObject3 != null) {
      ((List)localObject5).addAll((Collection)localObject3);
    }
    localObject3 = paramfm2.f();
    if (localObject3 != null) {
      ((List)localObject5).addAll((Collection)localObject3);
    }
    ((fw.a)localObject4).c((List)localObject5);
    ((fw.a)localObject4).d((List)localObject2);
    localObject2 = ((fw.a)localObject4).a();
    localObject3 = new fu.a();
    ((fu.a)localObject3).a(((fu)localObject1).a());
    ((fu.a)localObject3).a(((fu)localObject1).b());
    ((fu.a)localObject3).a((fw)localObject2);
    localObject2 = ((fu.a)localObject3).a();
    localObject1 = new ArrayList(1);
    ((List)localObject1).add(localObject2);
    localObject2 = new fm.a();
    ((fm.a)localObject2).a((List)localObject1);
    ((fm.a)localObject2).a(paramfm1.b());
    ((fm.a)localObject2).a(fp.b.equals(paramfm2.a()));
    return ((fm.a)localObject2).b();
  }
  
  public List<fu> a()
  {
    return b;
  }
  
  public List<String> a(fs paramfs)
  {
    Object localObject = a();
    if ((localObject != null) && (!((List)localObject).isEmpty()))
    {
      localObject = ((fu)((List)localObject).get(0)).c();
      if (localObject != null)
      {
        localObject = ((fw)localObject).g();
        if ((localObject != null) && (!((List)localObject).isEmpty()))
        {
          localObject = ((fx)((List)localObject).get(0)).d();
          if (localObject != null)
          {
            localObject = ((fy)localObject).c();
            if (localObject != null) {
              return ((jx)localObject).a(paramfs);
            }
          }
        }
      }
    }
    return null;
  }
  
  public List<String> a(ft paramft)
  {
    ArrayList localArrayList = new ArrayList();
    Object localObject = a();
    if ((localObject != null) && (!((List)localObject).isEmpty()))
    {
      localObject = ((fu)((List)localObject).get(0)).c();
      if (localObject != null)
      {
        localObject = ((fw)localObject).g();
        if ((localObject != null) && (!((List)localObject).isEmpty()))
        {
          localObject = ((fx)((List)localObject).get(0)).d();
          if (localObject != null)
          {
            localObject = ((fy)localObject).d();
            if (localObject != null) {
              localArrayList.addAll(((jx)localObject).a(paramft));
            }
          }
        }
      }
    }
    return localArrayList;
  }
  
  public int b()
  {
    return a;
  }
  
  public boolean c()
  {
    return c;
  }
  
  public boolean d()
  {
    return d;
  }
  
  public String e()
  {
    Object localObject = a();
    if ((localObject != null) && (!((List)localObject).isEmpty()))
    {
      localObject = ((fu)((List)localObject).get(0)).c();
      if (localObject != null)
      {
        localObject = ((fw)localObject).d();
        if ((localObject != null) && (!((List)localObject).isEmpty())) {
          return (String)((List)localObject).get(((List)localObject).size() - 1);
        }
      }
    }
    return null;
  }
  
  public String f()
  {
    Object localObject = a();
    if ((localObject != null) && (!((List)localObject).isEmpty()))
    {
      localObject = ((fu)((List)localObject).get(0)).c();
      if (localObject != null)
      {
        localObject = ((fw)localObject).g();
        if ((localObject != null) && (!((List)localObject).isEmpty()))
        {
          localObject = ((fx)((List)localObject).get(0)).d();
          if (localObject != null)
          {
            localObject = ((fy)localObject).e();
            if ((localObject != null) && (((fz)localObject).a() != null)) {
              return ((fz)localObject).a();
            }
          }
        }
      }
    }
    return null;
  }
  
  public List<String> g()
  {
    Object localObject = a();
    if ((localObject != null) && (!((List)localObject).isEmpty()))
    {
      localObject = ((fu)((List)localObject).get(0)).c();
      if (localObject != null) {
        return ((fw)localObject).f();
      }
    }
    return null;
  }
  
  public List<String> h()
  {
    Object localObject = a();
    if ((localObject != null) && (!((List)localObject).isEmpty()))
    {
      localObject = ((fu)((List)localObject).get(0)).c();
      if (localObject != null) {
        return ((fw)localObject).e();
      }
    }
    return null;
  }
  
  public String i()
  {
    List localList = a(ft.b);
    if ((localList != null) && (localList.size() > 0)) {
      return (String)localList.get(0);
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.fm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */