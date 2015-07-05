package com.c.a.a;

import com.c.a.a;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

class f
  extends e
{
  f(h paramh, j paramj)
  {
    super(paramh, '\003', paramj);
  }
  
  public InputStream a()
  {
    g();
    if (j) {
      throw new IOException("input stream already open");
    }
    a.a("openInputStream");
    j = true;
    f();
    return i;
  }
  
  public OutputStream c()
  {
    g();
    if (h) {
      throw new IOException("output already open");
    }
    if (l) {
      throw new IOException("the request phase has already ended");
    }
    h = true;
    g = new n(a.d, this);
    return g;
  }
}

/* Location:
 * Qualified Name:     com.c.a.a.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */