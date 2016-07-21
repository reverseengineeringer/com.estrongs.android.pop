package com.flurry.sdk;

import android.text.TextUtils;
import java.net.HttpCookie;
import java.util.Iterator;
import java.util.List;

class o$4
  implements kn.a<Void, Void>
{
  o$4(o paramo) {}
  
  public void a(kn<Void, Void> paramkn, Void paramVoid)
  {
    kg.a(3, o.h(), "BCookie request: HTTP status code is:" + paramkn.h());
    if (paramkn.f())
    {
      paramkn = paramkn.b("Set-Cookie");
      if (paramkn != null)
      {
        paramkn = paramkn.iterator();
        while (paramkn.hasNext())
        {
          paramVoid = HttpCookie.parse((String)paramkn.next());
          if (paramVoid != null)
          {
            paramVoid = paramVoid.iterator();
            while (paramVoid.hasNext())
            {
              HttpCookie localHttpCookie = (HttpCookie)paramVoid.next();
              if ((HttpCookie.domainMatches(".yahoo.com", localHttpCookie.getDomain())) && ("B".equalsIgnoreCase(localHttpCookie.getName())))
              {
                kg.a(3, o.h(), "Found BCookie");
                o.a(a, localHttpCookie.getValue());
                o.b(a, localHttpCookie.getDomain());
              }
            }
          }
        }
      }
    }
    if (TextUtils.isEmpty(o.b(a)))
    {
      o.a(a, o.c(a) << 1);
      kg.a(3, o.h(), "BCookie request failed, backing off: " + o.c(a) + "ms");
      js.a().b(o.d(a), o.c(a));
      return;
    }
    o.e(a);
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.o.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */