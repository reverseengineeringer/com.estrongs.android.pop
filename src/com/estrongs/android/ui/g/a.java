package com.estrongs.android.ui.g;

import android.content.Context;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.esclasses.e;
import com.estrongs.android.ui.pcs.r;
import com.estrongs.android.util.ak;
import com.estrongs.android.util.am;
import com.estrongs.android.util.y;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Random;

public class a
{
  private static a a = null;
  private Context b;
  private List<c> c;
  private Object d = new Object();
  
  public a(Context paramContext)
  {
    b = paramContext;
    d();
    if (b(true)) {
      f();
    }
  }
  
  public static a a(Context paramContext)
  {
    if (a == null) {
      a = new a(paramContext);
    }
    return a;
  }
  
  private boolean b(boolean paramBoolean)
  {
    long l = ad.a(b).aI();
    if (System.currentTimeMillis() - l < 86400000L) {
      return false;
    }
    if (paramBoolean) {
      return ak.b();
    }
    return ak.d();
  }
  
  public static void c()
  {
    try
    {
      if (a != null)
      {
        Object localObject = ac;
        if (localObject != null)
        {
          localObject = ((List)localObject).iterator();
          while (((Iterator)localObject).hasNext())
          {
            c localc = (c)((Iterator)localObject).next();
            if (localc != null) {
              localc.i();
            }
          }
        }
        a = null;
        return;
      }
    }
    catch (Exception localException) {}
  }
  
  private void d()
  {
    c = c.b(am.b(b) + "pushInfo.dat");
  }
  
  private void e()
  {
    if ((c == null) || (a())) {}
    for (;;)
    {
      return;
      if (ak.b())
      {
        Iterator localIterator = c.iterator();
        while (localIterator.hasNext())
        {
          c localc = (c)localIterator.next();
          if (localc != null) {
            localc.c(b);
          }
        }
      }
    }
  }
  
  private void f()
  {
    Object localObject2 = Locale.getDefault().toString();
    int i = ((String)localObject2).indexOf('_');
    Object localObject1 = localObject2;
    if (i > 0) {
      localObject1 = ((String)localObject2).substring(0, i);
    }
    if (e.a != null) {
      if ((!e.a.equalsIgnoreCase("CN")) && (!e.a.equalsIgnoreCase("TW"))) {
        break label163;
      }
    }
    label163:
    for (localObject1 = "cn";; localObject1 = "en")
    {
      localObject2 = "http://www.estrongs.com/console/service/0918/?" + "lang=" + (String)localObject1;
      localObject1 = am.b(b) + "pushInfo.dat";
      localObject2 = new y((String)localObject2);
      b localb = new b(this, (String)localObject1);
      ((y)localObject2).a((String)localObject1 + ".tmp");
      ((y)localObject2).a(localb);
      ((y)localObject2).c();
      return;
    }
  }
  
  private void g()
  {
    ad.a(b).aH();
    String str = am.b(b) + "pushInfo.dat";
    synchronized (d)
    {
      c = c.b(str);
      if (!a()) {
        e();
      }
      return;
    }
  }
  
  public c a(int paramInt)
  {
    for (;;)
    {
      c localc;
      synchronized (d)
      {
        if ((c == null) || (!a())) {
          return null;
        }
        LinkedList localLinkedList = new LinkedList();
        localObject3 = c.iterator();
        if (!((Iterator)localObject3).hasNext()) {
          break;
        }
        localc = (c)((Iterator)localObject3).next();
        if ((localc.f(b)) || (localc.i(b))) {
          continue;
        }
        if (!localc.g()) {
          break label159;
        }
        if ("action_recomm_pcs".equals(localc.b()))
        {
          if ((!r.a().c()) && (r.a().b())) {
            continue;
          }
          localLinkedList.add(localc);
        }
      }
      ((LinkedList)localObject2).add(localc);
      continue;
      label159:
      if ((localc.e() > paramInt) && (!localc.d(b))) {
        ((LinkedList)localObject2).add(localc);
      }
    }
    if (((LinkedList)localObject2).size() == 0) {
      return null;
    }
    Object localObject3 = ((LinkedList)localObject2).iterator();
    for (paramInt = 0; ((Iterator)localObject3).hasNext(); paramInt = ((c)((Iterator)localObject3).next()).f() + paramInt) {}
    if (paramInt == 0) {
      return null;
    }
    paramInt = new Random().nextInt(paramInt);
    Iterator localIterator = ((LinkedList)localObject2).iterator();
    while (localIterator.hasNext())
    {
      localObject3 = (c)localIterator.next();
      int i = paramInt - ((c)localObject3).f();
      paramInt = i;
      if (i < 0) {
        return (c)localObject3;
      }
    }
    return null;
  }
  
  public void a(boolean paramBoolean)
  {
    if (b(paramBoolean)) {
      f();
    }
  }
  
  public boolean a()
  {
    label82:
    label84:
    for (;;)
    {
      synchronized (d)
      {
        if (c == null) {
          return false;
        }
        bool = true;
        Iterator localIterator = c.iterator();
        if (localIterator.hasNext())
        {
          c localc = (c)localIterator.next();
          if (localc == null) {
            break label82;
          }
          if (!localc.b(b)) {
            break label82;
          }
        }
        else
        {
          return bool;
        }
      }
      break label84;
      boolean bool = false;
    }
  }
  
  public c b()
  {
    for (;;)
    {
      int i;
      synchronized (d)
      {
        if ((c != null) && (c.size() > 0))
        {
          i = 0;
          if (i >= c.size()) {
            break label91;
          }
          c localc = (c)c.get(i);
          if ("com.baidu.appsearch".equals(localc.b())) {
            return localc;
          }
        }
        else
        {
          a(false);
        }
      }
      i += 1;
      continue;
      label91:
      Object localObject2 = null;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.g.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */