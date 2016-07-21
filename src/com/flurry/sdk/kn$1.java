package com.flurry.sdk;

import java.io.InputStream;
import java.io.OutputStream;

class kn$1
  implements kp.c
{
  kn$1(kn paramkn) {}
  
  public void a(kp paramkp)
  {
    kn.d(a);
  }
  
  public void a(kp paramkp, InputStream paramInputStream)
  {
    if (!paramkp.g()) {}
    while (kn.c(a) == null) {
      return;
    }
    kn.a(a, kn.c(a).b(paramInputStream));
  }
  
  public void a(kp paramkp, OutputStream paramOutputStream)
  {
    if ((kn.a(a) != null) && (kn.b(a) != null)) {
      kn.b(a).a(paramOutputStream, kn.a(a));
    }
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.kn.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */