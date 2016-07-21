package com.flurry.sdk;

import java.util.Map;

class aa$4
  implements am.a
{
  aa$4(aa paramaa, af paramaf) {}
  
  public void a(am paramam)
  {
    for (;;)
    {
      synchronized (aa.c(b))
      {
        aa.c(b).remove(a.a());
        aa.a(b, a);
        if (paramam.a())
        {
          long l = paramam.c();
          kg.a(3, aa.l(), "Precaching: Download success: " + a.a() + " size: " + l);
          a.a(l);
          aa.a(b, a, al.d);
          f.a().a("precachingDownloadSuccess", 1);
          js.a().b(new aa.4.1(this));
          return;
        }
      }
      kg.a(3, aa.l(), "Precaching: Download error: " + a.a());
      aa.a(b, a, al.g);
      f.a().a("precachingDownloadError", 1);
    }
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.aa.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */