package com.c.a.a;

import b.b.g;
import java.io.IOException;

public class u
  implements g
{
  private b.a.a.f a;
  private i b;
  
  public u(b.a.a.f paramf, i parami)
  {
    a = paramf;
    b = parami;
  }
  
  public b.a.a.a a(b.b.f paramf)
  {
    return a(paramf, null);
  }
  
  public b.a.a.a a(b.b.f paramf, b.b.a parama)
  {
    try
    {
      if (a == null) {
        throw new IOException("Session closed");
      }
    }
    finally {}
    if (paramf == null) {
      throw new NullPointerException("handler is null");
    }
    paramf = new s(a.a(), paramf, parama, b);
    paramf.a();
    return paramf;
  }
  
  public void e()
  {
    b.a.a.f localf = a;
    a = null;
    if (localf != null) {
      localf.e();
    }
  }
}

/* Location:
 * Qualified Name:     com.c.a.a.u
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */