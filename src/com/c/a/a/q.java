package com.c.a.a;

import b.b.c;
import com.c.a.a;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public class q
  extends p
  implements l, o
{
  protected q(s params, j paramj, boolean paramBoolean)
  {
    super(params, paramj);
    if (paramBoolean)
    {
      g = true;
      f = true;
    }
    l = new m(this);
    a(paramj, paramBoolean);
  }
  
  private void g()
  {
    f = true;
    g = true;
    e = true;
    a.a(160, null);
    throw new IOException("Operation aborted");
  }
  
  public InputStream a()
  {
    if (d) {
      throw new IOException("operation closed");
    }
    if (m) {
      throw new IOException("input stream already open");
    }
    m = true;
    return l;
  }
  
  public void a(m paramm)
  {
    if ((g) || (h))
    {
      l.a(null, true);
      return;
    }
    a.a("server operation reply continue");
    a.a(144, c);
    c = null;
    f();
  }
  
  public void a(boolean paramBoolean, byte[] paramArrayOfByte)
  {
    if (a.i)
    {
      f();
      if (a.i) {
        throw new IOException("Client not requesting data");
      }
    }
    j localj = t.c();
    int i = 144;
    int k;
    int j;
    if (paramBoolean)
    {
      if (e) {
        i = 160;
      }
      k = 73;
      j = i;
    }
    for (i = k;; i = 72)
    {
      localj.a(i, paramArrayOfByte);
      if (c != null)
      {
        j.a(localj, c);
        c = null;
      }
      a.a(j, localj);
      if (!e) {
        f();
      }
      return;
      j = 144;
    }
  }
  
  public OutputStream c()
  {
    if (d) {
      throw new IOException("operation closed");
    }
    if (j != null) {
      throw new IOException("output stream already open");
    }
    g = true;
    j = new n(a.d, this);
    a.a(144, c);
    c = null;
    return j;
  }
  
  public void e()
  {
    if (j != null)
    {
      j.close();
      j = null;
    }
    l.close();
    super.e();
  }
  
  protected boolean f()
  {
    Object localObject = a.f();
    int i = localObject[0] & 0xFF;
    if ((i & 0x80) != 0) {}
    for (boolean bool = true;; bool = false)
    {
      if (bool)
      {
        a.a("server operation got final packet");
        f = true;
      }
      switch (i)
      {
      default: 
        h = true;
        a.a("server operation invalid request", v.c(i), i);
        a.a(192, null);
        return bool;
      }
    }
    if (bool) {
      g = true;
    }
    localObject = j.a(localObject[0], (byte[])localObject, 3);
    j.a(b, (c)localObject);
    a((c)localObject, bool);
    return bool;
    g();
    return bool;
  }
}

/* Location:
 * Qualified Name:     com.c.a.a.q
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */