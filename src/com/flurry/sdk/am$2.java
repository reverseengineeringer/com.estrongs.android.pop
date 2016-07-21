package com.flurry.sdk;

import java.io.IOException;
import java.io.InputStream;

class am$2
  extends kp.b
{
  am$2(am paramam) {}
  
  public void a(kp paramkp)
  {
    if (a.b()) {
      return;
    }
    int i = paramkp.h();
    kg.a(3, am.i(), "Downloader: Download status code is:" + i + " for url: " + am.f(a));
    am.a(a, paramkp.f());
    js.a().b(new am.2.1(this));
  }
  
  public void a(kp paramkp, InputStream paramInputStream)
  {
    if (a.b()) {
      throw new IOException("Downloader: request cancelled");
    }
    am.a(a, am.a(a, paramkp));
    if (am.d(a) > am.e(a)) {
      throw new IOException("Downloader: content length: " + am.d(a) + " exceeds size limit: " + am.e(a));
    }
    try
    {
      paramInputStream = new at(paramInputStream, am.e(a));
      a.g();
    }
    finally
    {
      try
      {
        lt.a(paramInputStream, a.f());
        a.g();
        lt.a(paramInputStream);
        return;
      }
      finally {}
      paramkp = finally;
      paramInputStream = null;
    }
    lt.a(paramInputStream);
    throw paramkp;
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.am.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */