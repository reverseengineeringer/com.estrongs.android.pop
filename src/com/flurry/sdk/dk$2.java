package com.flurry.sdk;

import android.text.TextUtils;
import java.util.List;

class dk$2
  implements kn.a<Void, Void>
{
  dk$2(dk paramdk, dj paramdj) {}
  
  public void a(kn<Void, Void> paramkn, Void paramVoid)
  {
    kg.a(3, dk.b(), "AsyncReportInfo request: HTTP status code is:" + paramkn.h());
    int i = paramkn.h();
    if ((i >= 200) && (i < 300))
    {
      kg.a(3, dk.b(), "Send report successful to url: " + paramkn.b());
      dk.a(b, a);
      if ((kg.c() <= 3) && (kg.d())) {
        js.a().a(new dk.2.1(this, paramkn));
      }
      dk.a(b, a, i);
    }
    for (;;)
    {
      return;
      if ((i >= 300) && (i < 400))
      {
        Object localObject = null;
        List localList = paramkn.b("Location");
        paramVoid = (Void)localObject;
        if (localList != null)
        {
          paramVoid = (Void)localObject;
          if (localList.size() > 0) {
            paramVoid = ma.b((String)localList.get(0), a.t());
          }
        }
        if (TextUtils.isEmpty(paramVoid))
        {
          kg.a(3, dk.b(), "Send report successful to url: " + paramkn.b());
          dk.b(b, a);
          if ((kg.c() <= 3) && (kg.d())) {
            js.a().a(new dk.2.2(this, paramkn));
          }
          dk.a(b, a, i);
          return;
        }
        kg.a(3, dk.b(), "Send report redirecting to url: " + paramVoid);
        a.c(paramVoid);
        b.a(a);
        return;
      }
      kg.a(3, dk.b(), "Send report failed to url: " + paramkn.b());
      if (ma.h(a.t())) {
        dk.c(b, a);
      }
      while (a.r() == 0)
      {
        dk.a(b, a, i);
        return;
        kg.a(3, dk.b(), "Oops! url: " + paramkn.b() + " is invalid, aborting transmission");
        dk.d(b, a);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.dk.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */