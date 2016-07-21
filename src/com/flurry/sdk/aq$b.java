package com.flurry.sdk;

import java.io.BufferedInputStream;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.util.zip.GZIPInputStream;

public class aq$b
  implements Closeable
{
  private final ai.c b;
  private final InputStream c;
  private final GZIPInputStream d;
  private final BufferedInputStream e;
  private boolean f;
  
  private aq$b(aq paramaq, ai.c paramc, boolean paramBoolean)
  {
    if (paramc == null) {
      throw new IllegalArgumentException("Snapshot cannot be null");
    }
    b = paramc;
    c = b.a(0);
    if (c == null) {
      throw new IOException("Snapshot inputstream is null");
    }
    if (paramBoolean)
    {
      d = new GZIPInputStream(c);
      if (d == null) {
        throw new IOException("Gzip inputstream is null");
      }
      e = new BufferedInputStream(d);
      return;
    }
    d = null;
    e = new BufferedInputStream(c);
  }
  
  public InputStream a()
  {
    return e;
  }
  
  public void close()
  {
    if (f) {
      return;
    }
    f = true;
    lt.a(e);
    lt.a(d);
    lt.a(c);
    lt.a(b);
  }
  
  protected void finalize()
  {
    super.finalize();
    close();
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.aq.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */