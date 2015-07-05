package com.c.a.a;

import b.b.c;
import b.b.d;
import com.c.a.a;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;

abstract class e
  implements d, k, l, o
{
  protected h a;
  protected char b;
  protected c c;
  protected boolean d;
  protected boolean e;
  protected boolean f;
  protected n g;
  protected boolean h = false;
  protected m i;
  protected boolean j = false;
  protected boolean k = false;
  protected boolean l = false;
  protected boolean m = false;
  protected j n = null;
  protected Object o;
  private boolean p = false;
  
  e(h paramh, char paramChar, j paramj)
  {
    a = paramh;
    b = paramChar;
    d = false;
    e = false;
    o = new Object();
    i = new m(this);
    a(paramj);
  }
  
  private void b(j paramj)
  {
    for (;;)
    {
      Object localObject;
      try
      {
        a.a(b, paramj);
        localObject = a.f();
        localObject = j.a(localObject[0], (byte[])localObject, 3);
        a.a((j)localObject, null);
        int i1 = ((j)localObject).b();
        a.a("client operation got reply", v.c(i1), i1);
        switch (i1)
        {
        case 193: 
          k = true;
          f = false;
          a((c)localObject);
          a((c)localObject, true);
          return;
        }
      }
      finally
      {
        k = true;
      }
      if ((!p) && (((j)localObject).d()))
      {
        a.a("client resend request with auth response");
        paramj = j.b(paramj);
        a.b((j)localObject, paramj);
        p = true;
        b(paramj);
        return;
      }
      k = true;
      f = false;
      a((c)localObject);
      throw new IOException("Authentication Failure");
      a((c)localObject);
      a((c)localObject, true);
      e = false;
      f = false;
      return;
      a((c)localObject);
      a((c)localObject, false);
      f = true;
      return;
    }
  }
  
  private void k()
  {
    try
    {
      l();
      return;
    }
    finally
    {
      e = false;
      i.close();
      m();
    }
  }
  
  private void l()
  {
    while ((!j()) && (f))
    {
      a.a("operation expects operation end");
      a(i);
    }
  }
  
  private void m()
  {
    if (g != null) {
      synchronized (o)
      {
        if (g != null) {
          g.close();
        }
        g = null;
        return;
      }
    }
  }
  
  protected void a(c paramc)
  {
    if (c != null) {
      j.a(paramc, c);
    }
    c = paramc;
  }
  
  protected void a(c paramc, boolean paramBoolean)
  {
    byte[] arrayOfByte = (byte[])paramc.a(72);
    Object localObject = arrayOfByte;
    boolean bool = paramBoolean;
    if (arrayOfByte == null)
    {
      paramc = (byte[])paramc.a(73);
      localObject = paramc;
      bool = paramBoolean;
      if (paramc != null)
      {
        m = true;
        bool = true;
        localObject = paramc;
      }
    }
    if (localObject != null)
    {
      a.a("client received Data eof: " + bool + " len: ", localObject.length);
      i.a((byte[])localObject, bool);
    }
    while (!bool) {
      return;
    }
    i.a(null, bool);
  }
  
  protected void a(j paramj)
  {
    n = paramj;
  }
  
  public void a(m paramm)
  {
    b(n);
    n = null;
  }
  
  public void a(boolean paramBoolean, byte[] paramArrayOfByte)
  {
    if (l) {
      return;
    }
    if (n != null)
    {
      b(n);
      n = null;
    }
    int i1 = 72;
    if (paramBoolean)
    {
      b = ((char)(b | 0x80));
      i1 = 73;
      a.a("client Request Phase ended");
      l = true;
    }
    j localj = t.c();
    localj.a(i1, paramArrayOfByte);
    b(localj);
  }
  
  public DataInputStream b()
  {
    return new DataInputStream(a());
  }
  
  public void b(c paramc)
  {
    if (paramc == null) {
      throw new NullPointerException("headers are null");
    }
    j.a(paramc);
    g();
    if (l) {
      throw new IOException("the request phase has already ended");
    }
    if (n != null)
    {
      b(n);
      n = null;
    }
    b((j)paramc);
  }
  
  public DataOutputStream d()
  {
    return new DataOutputStream(c());
  }
  
  public void e()
  {
    try
    {
      f();
      return;
    }
    finally
    {
      k();
      if (!d)
      {
        d = true;
        a.a("client operation closed");
      }
    }
  }
  
  protected void f()
  {
    if (l) {
      return;
    }
    a.a("client ends Request Phase");
    e = false;
    l = true;
    b = ((char)(b | 0x80));
    b(n);
    n = null;
  }
  
  protected void g()
  {
    if (d) {
      throw new IOException("operation closed");
    }
  }
  
  public c h()
  {
    g();
    f();
    return j.b(c);
  }
  
  public int i()
  {
    g();
    f();
    m();
    l();
    return c.b();
  }
  
  public boolean j()
  {
    return (d) || (k);
  }
}

/* Location:
 * Qualified Name:     com.c.a.a.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */