package com.estrongs.android.pop.app.finder;

import android.app.Activity;
import android.view.View;
import com.estrongs.android.pop.app.finder.data.FinderGroupData;
import com.estrongs.android.pop.app.finder.data.FinderGroupData.GroupType;
import com.estrongs.android.pop.app.finder.data.FinderItemData;
import com.estrongs.android.util.ap;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class a
{
  private static a a;
  private f b;
  private View c;
  private String d;
  private Map<FinderGroupData.GroupType, FinderGroupData> e;
  private Map<FinderGroupData.GroupType, FinderGroupData> f;
  private e g;
  private Activity h;
  
  public static a a()
  {
    if (a == null) {
      a = new a();
    }
    return a;
  }
  
  public void a(Activity paramActivity)
  {
    a(paramActivity, d);
  }
  
  public void a(Activity paramActivity, String paramString)
  {
    boolean bool2 = true;
    if ((b == null) || (c == null) || (h == null) || (h.isFinishing()))
    {
      h = paramActivity;
      c = paramActivity.findViewById(2131624510);
      b = new f(paramActivity);
      b.a(Collections.EMPTY_LIST);
    }
    boolean bool1;
    if ((d == null) || (!d.equals(paramString)))
    {
      bool1 = true;
      paramActivity = b;
      if (bool1) {
        break label136;
      }
    }
    for (;;)
    {
      paramActivity.a(bool2);
      b.a(c);
      new d(this, paramString, bool1).a();
      return;
      bool1 = false;
      break;
      label136:
      bool2 = false;
    }
  }
  
  public void a(e parame)
  {
    g = parame;
  }
  
  public boolean b()
  {
    return (b != null) && (b.a());
  }
  
  public void c()
  {
    if (b != null) {
      b.b();
    }
  }
  
  public void d()
  {
    if (b != null) {
      new d(this, d, true).a();
    }
  }
  
  public void e()
  {
    e = f;
    Iterator localIterator1 = e.values().iterator();
    while (localIterator1.hasNext())
    {
      Iterator localIterator2 = ((FinderGroupData)localIterator1.next()).a().iterator();
      while (localIterator2.hasNext())
      {
        FinderItemData localFinderItemData = (FinderItemData)localIterator2.next();
        localFinderItemData.b(localFinderItemData.a());
      }
    }
    if (g != null) {
      g.o_();
    }
  }
  
  public Collection<FinderGroupData> f()
  {
    return e.values();
  }
  
  public void g()
  {
    boolean bool2 = true;
    Object localObject2 = (FinderGroupData)e.get(FinderGroupData.GroupType.Additional);
    Object localObject1 = (FinderGroupData)e.get(FinderGroupData.GroupType.Type);
    int j;
    int i;
    if ((localObject1 != null) && (localObject2 != null))
    {
      if ((!ap.bx(d)) && (!ap.bl(d))) {
        break label182;
      }
      j = 1;
      if ((j == 0) && (!ap.ai(d))) {
        break label187;
      }
      i = 1;
      label85:
      if ((j == 0) && (!ap.ae(d))) {
        break label192;
      }
      j = 1;
      label101:
      localObject2 = ((FinderGroupData)localObject2).b(2131231489);
      FinderItemData localFinderItemData = ((FinderGroupData)localObject1).b(2131231129);
      if (localFinderItemData != null)
      {
        if ((i == 0) || (((FinderItemData)localObject2).a())) {
          break label197;
        }
        bool1 = true;
        label138:
        localFinderItemData.c(bool1);
      }
      localObject1 = ((FinderGroupData)localObject1).b(2131231130);
      if (localObject1 != null) {
        if ((j == 0) || (((FinderItemData)localObject2).a())) {
          break label202;
        }
      }
    }
    label182:
    label187:
    label192:
    label197:
    label202:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      ((FinderItemData)localObject1).c(bool1);
      return;
      j = 0;
      break;
      i = 0;
      break label85;
      j = 0;
      break label101;
      bool1 = false;
      break label138;
    }
  }
  
  public c h()
  {
    c localc = new c();
    Object localObject1 = f();
    if (localObject1 != null)
    {
      ArrayList localArrayList1 = new ArrayList();
      ArrayList localArrayList2 = new ArrayList();
      ArrayList localArrayList3 = new ArrayList();
      localObject1 = ((Collection)localObject1).iterator();
      while (((Iterator)localObject1).hasNext())
      {
        Object localObject2 = (FinderGroupData)((Iterator)localObject1).next();
        List localList = ((FinderGroupData)localObject2).b();
        if ((localList != null) && (localList.size() >= 1)) {
          switch (b.a[d.ordinal()])
          {
          default: 
            break;
          case 1: 
            localObject2 = localList.iterator();
            while (((Iterator)localObject2).hasNext()) {
              localArrayList2.add(((FinderItemData)((Iterator)localObject2).next()).d());
            }
          case 2: 
            localc.a(((FinderItemData)localList.get(0)).f(), ((FinderItemData)localList.get(0)).g());
            break;
          case 3: 
            localc.b(((FinderItemData)localList.get(0)).h(), ((FinderItemData)localList.get(0)).i());
            break;
          case 4: 
            localObject2 = localList.iterator();
            while (((Iterator)localObject2).hasNext()) {
              localArrayList1.add(((FinderItemData)((Iterator)localObject2).next()).e());
            }
          case 5: 
            localObject2 = localList.iterator();
            while (((Iterator)localObject2).hasNext()) {
              localArrayList3.add(((FinderItemData)((Iterator)localObject2).next()).j());
            }
          }
        }
      }
      if (localArrayList1.size() < 1)
      {
        localObject1 = ((FinderGroupData)e.get(FinderGroupData.GroupType.Type)).a().iterator();
        while (((Iterator)localObject1).hasNext()) {
          localArrayList1.add(((FinderItemData)((Iterator)localObject1).next()).e());
        }
      }
      localc.a(localArrayList1);
      localc.c(localArrayList3);
      localc.b(localArrayList2);
    }
    return localc;
  }
  
  public void i()
  {
    d = null;
    e = null;
    f = null;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.finder.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */