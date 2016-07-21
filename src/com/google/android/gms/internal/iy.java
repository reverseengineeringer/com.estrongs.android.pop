package com.google.android.gms.internal;

import android.os.Bundle;
import android.view.View;
import com.google.android.gms.ads.a.i;
import com.google.android.gms.ads.formats.b;
import com.google.android.gms.ads.internal.formats.c;
import com.google.android.gms.dynamic.e;
import com.google.android.gms.dynamic.h;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@me
public class iy
  extends is
{
  private final i a;
  
  public iy(i parami)
  {
    a = parami;
  }
  
  public String a()
  {
    return a.e();
  }
  
  public void a(e parame)
  {
    a.b((View)h.a(parame));
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
    a.a((View)h.a(parame));
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
  
  public String f()
  {
    return a.j();
  }
  
  public void g()
  {
    a.d();
  }
  
  public boolean h()
  {
    return a.a();
  }
  
  public boolean i()
  {
    return a.b();
  }
  
  public Bundle j()
  {
    return a.c();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.iy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */