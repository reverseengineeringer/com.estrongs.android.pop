package com.c.a.a;

import com.c.a.a;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

class g
  extends e
{
  g(h paramh, j paramj)
  {
    super(paramh, '\002', paramj);
  }
  
  public InputStream a()
  {
    g();
    if (j) {
      throw new IOException("input stream already open");
    }
    a.a("openInputStream");
    j = true;
    e = true;
    return i;
  }
  
  public OutputStream c()
  {
    g();
    if (h) {
      throw new IOException("output already open");
    }
    h = true;
    g = new n(a.d, this);
    e = true;
    return g;
  }
}

/* Location:
 * Qualified Name:     com.c.a.a.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */