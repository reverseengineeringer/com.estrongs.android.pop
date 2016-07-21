package com.google.android.gms.internal;

import android.os.Bundle;
import android.view.View;
import com.google.android.gms.ads.formats.b;
import com.google.android.gms.ads.internal.formats.c;
import com.google.android.gms.dynamic.e;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@me
public class ix
  extends ip
{
  private final com.google.android.gms.ads.a.h a;
  
  public ix(com.google.android.gms.ads.a.h paramh)
  {
    a = paramh;
  }
  
  public String a()
  {
    return a.e();
  }
  
  public void a(e parame)
  {
    a.b((View)com.google.android.gms.dynamic.h.a(parame));
  }
  
  public List b()
  {
    Object localObject = a.f();
    if (localObject != null)
    {
      ArrayList localArrayList = new ArrayList();
      localObject = ((List)localObject).iterator();
      while (((Iterator)localObject).hasNext())
      {
        b localb = (b)((Iterator)localObject).next();
        localArrayList.add(new c(localb.a(), localb.b()));
      }
      return localArrayList;
    }
    return null;
  }
  
  public void b(e parame)
  {
    a.a((View)com.google.android.gms.dynamic.h.a(parame));
  }
  
  public String c()
  {
    return a.g();
  }
  
  public dr d()
  {
    b localb = a.h();
    if (localb != null) {
      return new c(localb.a(), localb.b());
    }
    return null;
  }
  
  public String e()
  {
    return a.i();
  }
  
  public double f()
  {
    return a.j();
  }
  
  public String g()
  {
    return a.k();
  }
  
  public String h()
  {
    return a.l();
  }
  
  public void i()
  {
    a.d();
  }
  
  public boolean j()
  {
    return a.a();
  }
  
  public boolean k()
  {
    return a.b();
  }
  
  public Bundle l()
  {
    return a.c();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ix
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */