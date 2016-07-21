package com.flurry.sdk;

import java.io.Closeable;
import java.io.IOException;
import java.io.OutputStream;
import java.util.zip.GZIPOutputStream;

public class aq$c
  implements Closeable
{
  private final ai.a b;
  private final OutputStream c;
  private final GZIPOutputStream d;
  private final aq.a e;
  private boolean f;
  
  private aq$c(aq paramaq, ai.a parama, boolean paramBoolean)
  {
    if (parama == null) {
      throw new IllegalArgumentException("Editor cannot be null");
    }
    b = parama;
    c = b.a(0);
    if (c == null) {
      throw new IOException("Editor outputstream is null");
    }
    if (paramBoolean)
    {
      d = new GZIPOutputStream(c);
      if (d == null) {
        throw new IOException("Gzip outputstream is null");
      }
      e = new aq.a(d, null);
      return;
    }
    d = null;
    e = new aq.a(c, null);
  }
  
  public OutputStream a()
  {
    return e;
  }
  
  public void close()
  {
    boolean bool = true;
    if (f) {}
    do
    {
      return;
      f = true;
      lt.a(e);
      lt.a(d);
      lt.a(c);
    } while (b == null);
    if (e == null) {}
    while (bool)
    {
      try
      {
        b.b();
        return;
      }
      catch (IOException localIOException)
      {
        kg.a(3, aq.e(), "Exception closing editor for cache: " + aq.a(a), localIOException);
        return;
      }
      bool = aq.a.a(e);
    }
    b.a();
  }
  
  protected void finalize()
  {
    super.finalize();
    close();
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.aq.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */