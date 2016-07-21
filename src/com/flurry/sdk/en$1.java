package com.flurry.sdk;

class en$1
  implements kn.a<String, String>
{
  en$1(en paramen, en.a parama) {}
  
  public void a(kn<String, String> paramkn, String paramString)
  {
    if (paramString != null)
    {
      paramkn = b.b(paramString);
      if ((paramkn != null) && (!paramkn.c()))
      {
        a.a(paramkn);
        return;
      }
      a.a(-1, paramString);
      return;
    }
    if (paramkn.h() == 401)
    {
      a.a(401, "Not Authorized");
      return;
    }
    a.a(-1, "Request token failed.");
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.en.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */