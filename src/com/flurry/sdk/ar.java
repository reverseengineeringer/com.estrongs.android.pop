package com.flurry.sdk;

import android.text.TextUtils;
import java.io.IOException;
import java.io.OutputStream;

public class ar
  extends am
{
  private static final String d = ar.class.getSimpleName();
  protected final aq a;
  protected final String b;
  protected aq.c c;
  
  public ar(aq paramaq, String paramString)
  {
    a = paramaq;
    b = paramString;
  }
  
  protected OutputStream f()
  {
    if (c != null) {
      return c.a();
    }
    if (a == null) {
      throw new IOException("No cache specified");
    }
    if (TextUtils.isEmpty(b)) {
      throw new IOException("No cache key specified");
    }
    c = a.b(b);
    if (c == null) {
      throw new IOException("Could not open writer for key: " + b);
    }
    return c.a();
  }
  
  protected void g()
  {
    lt.a(c);
    c = null;
  }
  
  protected void h()
  {
    if (a == null) {}
    while (TextUtils.isEmpty(b)) {
      return;
    }
    try
    {
      a.c(b);
      return;
    }
    catch (Exception localException)
    {
      kg.a(3, d, "Error removing result for key: " + b + " -- " + localException);
    }
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.ar
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */