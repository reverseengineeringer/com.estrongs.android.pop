package com.flurry.sdk;

import java.util.Collections;

class gs$5
  implements kn.a<Void, String>
{
  gs$5(gs paramgs, String paramString) {}
  
  public void a(kn<Void, String> paramkn, String paramString)
  {
    int i = paramkn.h();
    kg.a(3, gs.c(b), "Prerender: HTTP status code is:" + i + " for url: " + a);
    if (paramkn.f())
    {
      paramkn = ma.c(a);
      if (b.getAdController().e(bb.f.a()))
      {
        b.a(bb.f, Collections.emptyMap(), b.getAdController(), 0);
        b.getAdController().f(bb.f.a());
      }
      js.a().a(new gs.5.1(this, paramkn, paramString));
      return;
    }
    js.a().a(new gs.5.2(this));
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.gs.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */