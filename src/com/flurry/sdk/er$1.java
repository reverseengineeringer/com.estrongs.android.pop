package com.flurry.sdk;

import java.util.List;

class er$1
  implements kn.a<Void, String>
{
  er$1(er paramer, er.a parama) {}
  
  public void a(kn<Void, String> paramkn, String paramString)
  {
    if (paramString != null)
    {
      int i = eb.a(paramString);
      if (i == 200)
      {
        paramkn = eb.b(paramString);
        if (!paramkn.isEmpty())
        {
          a.a(paramkn);
          return;
        }
        a.a(-1, paramString);
        return;
      }
      a.a(i, paramString);
      return;
    }
    if (paramkn.h() == 401)
    {
      a.a(401, "Not Authorized");
      return;
    }
    a.a(-1, "Invalid user info");
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.er.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */