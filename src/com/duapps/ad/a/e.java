package com.duapps.ad.a;

import android.net.Uri;
import com.google.android.gms.ads.formats.b;
import com.google.android.gms.ads.formats.f;
import com.google.android.gms.ads.formats.h;
import java.util.List;

public class e
{
  public h a;
  public f b;
  
  public e(f paramf)
  {
    b = paramf;
  }
  
  public e(h paramh)
  {
    a = paramh;
  }
  
  public boolean a()
  {
    return b != null;
  }
  
  public boolean b()
  {
    return a != null;
  }
  
  public String c()
  {
    if (a()) {
      return b.b().toString();
    }
    if (b()) {
      return a.b().toString();
    }
    return null;
  }
  
  public String d()
  {
    if (a()) {
      return b.d().toString();
    }
    if (b()) {
      return a.d().toString();
    }
    return null;
  }
  
  public String e()
  {
    if (a()) {
      return b.f().toString();
    }
    if (b()) {
      return a.f().toString();
    }
    return null;
  }
  
  public String f()
  {
    Object localObject2 = null;
    Object localObject1 = localObject2;
    if (a())
    {
      List localList = b.c();
      localObject1 = localObject2;
      if (localList != null)
      {
        localObject1 = localObject2;
        if (localList.size() > 0) {
          localObject1 = ((b)localList.get(0)).b().toString();
        }
      }
    }
    return (String)localObject1;
  }
  
  public String g()
  {
    Object localObject2 = null;
    Object localObject3;
    Object localObject1;
    if (a())
    {
      localObject3 = b.e();
      localObject1 = localObject2;
      if (localObject3 != null) {
        localObject1 = ((b)localObject3).b().toString();
      }
    }
    do
    {
      do
      {
        do
        {
          return (String)localObject1;
          localObject1 = localObject2;
        } while (!b());
        localObject3 = a.c();
        localObject1 = localObject2;
      } while (localObject3 == null);
      localObject1 = localObject2;
    } while (((List)localObject3).size() <= 0);
    return ((b)((List)localObject3).get(0)).b().toString();
  }
  
  public float h()
  {
    if (a())
    {
      Double localDouble = b.g();
      if (localDouble != null) {
        return (float)(localDouble.doubleValue() + 0.0D);
      }
    }
    return 4.5F;
  }
}

/* Location:
 * Qualified Name:     com.duapps.ad.a.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */