package com.c.a.a;

import b.b.b;
import b.b.c;
import b.b.d;
import com.c.a.a;
import java.io.IOException;

public class h
  extends t
  implements b
{
  private e a = null;
  
  public h(b.a.a.e parame, i parami)
  {
    super(parame, parami);
    i = false;
    b = false;
  }
  
  private c a(c paramc, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
  {
    int k = 2;
    if (paramBoolean1) {}
    Object localObject;
    for (int j = 1;; j = 0)
    {
      if (paramBoolean2) {
        k = 0;
      }
      int i = (byte)(k | j);
      localObject = (j)paramc;
      a(133, new byte[] { i, 0 }, (j)localObject);
      localObject = f();
      localObject = j.a(localObject[0], (byte[])localObject, 3);
      a((j)paramc, (j)localObject);
      if ((paramBoolean3) || (((j)localObject).b() != 193) || (!((j)localObject).d())) {
        break;
      }
      paramc = j.b(paramc);
      b((j)localObject, paramc);
      return a(paramc, paramBoolean1, paramBoolean2, true);
    }
    return (c)localObject;
  }
  
  private c b(c paramc, boolean paramBoolean)
  {
    f(paramc);
    if (b) {
      throw new IOException("Session already connected");
    }
    int i = v.a(f.c);
    int j = v.b(f.c);
    Object localObject1 = (j)paramc;
    a(128, new byte[] { 16, 0, i, j }, (j)localObject1);
    localObject1 = f();
    if (localObject1.length < 6)
    {
      if (localObject1.length == 3) {
        throw new IOException("Invalid response from OBEX server " + v.a(localObject1[0]));
      }
      throw new IOException("Invalid response from OBEX server");
    }
    int k = v.a(localObject1[5], localObject1[6]);
    if (k < 255) {
      throw new IOException("Invalid MTU " + k);
    }
    if (k < d) {
      d = k;
    }
    a.a("mtu selected", d);
    localObject1 = j.a(localObject1[0], (byte[])localObject1, 7);
    Object localObject2 = ((j)localObject1).a(203);
    if (localObject2 != null) {
      c = ((Long)localObject2).longValue();
    }
    a((j)paramc, (j)localObject1);
    if ((!paramBoolean) && (((j)localObject1).b() == 193) && (((j)localObject1).d()))
    {
      paramc = j.b(paramc);
      b((j)localObject1, (j)paramc);
      return b(paramc, true);
    }
    if (((j)localObject1).b() == 160) {
      b = true;
    }
    return (c)localObject1;
  }
  
  private void g()
  {
    if (!b) {
      throw new IOException("Session not connected");
    }
    if (a != null)
    {
      if (!a.j()) {
        throw new IOException("Client is already in an operation");
      }
      a = null;
    }
  }
  
  public c a()
  {
    return t.d();
  }
  
  public c a(c paramc)
  {
    return b(paramc, false);
  }
  
  c a(c paramc, boolean paramBoolean)
  {
    a(130, (j)paramc);
    Object localObject = f();
    localObject = j.a(localObject[0], (byte[])localObject, 3);
    a((j)paramc, (j)localObject);
    if ((!paramBoolean) && (((j)localObject).b() == 193) && (((j)localObject).d()))
    {
      paramc = j.b(paramc);
      b((j)localObject, paramc);
      return a(paramc, true);
    }
    return (c)localObject;
  }
  
  public c a(c paramc, boolean paramBoolean1, boolean paramBoolean2)
  {
    f(paramc);
    g();
    return a(paramc, paramBoolean1, paramBoolean2, false);
  }
  
  public void a(long paramLong)
  {
    if ((paramLong < 0L) || (paramLong > 4294967295L)) {
      throw new IllegalArgumentException("Invalid connectionID " + paramLong);
    }
    c = paramLong;
  }
  
  public c b(c paramc)
  {
    f(paramc);
    g();
    if (!b) {
      throw new IOException("Session not connected");
    }
    a(129, (j)paramc);
    paramc = f();
    b = false;
    if (a != null)
    {
      a.e();
      a = null;
    }
    return j.a(paramc[0], paramc, 3);
  }
  
  public d c(c paramc)
  {
    f(paramc);
    g();
    a = new f(this, (j)paramc);
    return a;
  }
  
  public d d(c paramc)
  {
    f(paramc);
    g();
    a = new g(this, (j)paramc);
    return a;
  }
  
  public c e(c paramc)
  {
    f(paramc);
    g();
    return a(paramc, false);
  }
  
  public void e()
  {
    if (a != null)
    {
      a.e();
      a = null;
    }
    super.e();
  }
}

/* Location:
 * Qualified Name:     com.c.a.a.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */