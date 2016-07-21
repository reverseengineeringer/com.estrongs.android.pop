package com.flurry.sdk;

import java.util.List;

class am$3
  implements kn.a<Void, Void>
{
  am$3(am paramam) {}
  
  public void a(kn<Void, Void> paramkn, Void paramVoid)
  {
    if (a.b()) {
      return;
    }
    int i = paramkn.h();
    kg.a(3, am.i(), "Downloader: HTTP HEAD status code is:" + i + " for url: " + am.f(a));
    if (paramkn.f())
    {
      am.a(a, am.a(a, paramkn));
      paramkn = paramkn.b("Accept-Ranges");
      if ((am.d(a) > 0L) && (paramkn != null) && (!paramkn.isEmpty()))
      {
        am.b(a, "bytes".equals(((String)paramkn.get(0)).trim()));
        paramkn = a;
        long l = am.d(a) / am.i(a);
        if (am.d(a) % am.i(a) > 0L)
        {
          i = 1;
          am.a(paramkn, (int)(i + l));
        }
      }
      for (;;)
      {
        if ((am.e(a) <= 0L) || (am.d(a) <= am.e(a))) {
          break label307;
        }
        kg.a(3, am.i(), "Downloader: Size limit exceeded -- limit: " + am.e(a) + ", content-length: " + am.d(a) + " bytes!");
        js.a().b(new am.3.1(this));
        return;
        i = 0;
        break;
        am.a(a, 1);
      }
      label307:
      js.a().b(new am.3.2(this));
      return;
    }
    js.a().b(new am.3.3(this));
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.am.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */