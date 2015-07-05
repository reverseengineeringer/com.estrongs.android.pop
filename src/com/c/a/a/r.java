package com.c.a.a;

import b.b.c;
import com.c.a.a;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

class r
  extends p
  implements l, o
{
  protected r(s params, j paramj, boolean paramBoolean)
  {
    super(params, paramj);
    l = new m(this);
    a(paramj, paramBoolean);
  }
  
  private void g()
  {
    e = true;
    a.a(160, null);
    e();
    throw new IOException("Operation aborted by client");
  }
  
  public InputStream a()
  {
    if (d) {
      throw new IOException("operation closed");
    }
    if (m) {
      throw new IOException("input stream already open");
    }
    a.a("openInputStream");
    m = true;
    return l;
  }
  
  public void a(m paramm)
  {
    if ((f) || (h))
    {
      paramm.a(null, true);
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
    int i = 72;
    if (paramBoolean) {
      i = 73;
    }
    localj.a(i, paramArrayOfByte);
    if (c != null)
    {
      j.a(localj, c);
      c = null;
    }
    a.a(144, localj);
    f();
  }
  
  public OutputStream c()
  {
    if (d) {
      throw new IOException("operation closed");
    }
    if (j != null) {
      throw new IOException("output stream already open");
    }
    j = new n(a.d, this);
    return j;
  }
  
  public void e()
  {
    a.a("server close put operation");
    if (l != null)
    {
      l.close();
      l = null;
    }
    if (j != null)
    {
      j.close();
      j = null;
    }
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
    localObject = j.a(localObject[0], (byte[])localObject, 3);
    if (!a.a((j)localObject))
    {
      h = true;
      a.a(193, null);
      return bool;
    }
    j.a(b, (c)localObject);
    a((c)localObject, bool);
    return bool;
    g();
    return bool;
  }
}

/* Location:
 * Qualified Name:     com.c.a.a.r
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */