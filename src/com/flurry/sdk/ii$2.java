package com.flurry.sdk;

class ii$2
  implements kn.a<byte[], String>
{
  ii$2(ii paramii, ij paramij, ik paramik) {}
  
  public void a(kn<byte[], String> paramkn, String paramString)
  {
    kg.a(3, ii.b(), "Pulse report to " + a.i() + " for " + a.m() + ", HTTP status code is: " + paramkn.h());
    int i = paramkn.h();
    b.a((int)paramkn.c());
    b.e = i;
    if (!paramkn.f())
    {
      Exception localException = paramkn.j();
      if (paramkn.d())
      {
        if (paramkn.i()) {
          kg.a(3, ii.b(), "Timeout occured when trying to connect to: " + a.i() + ". Exception: " + paramkn.j().getMessage());
        }
        for (;;)
        {
          ii.a(c, b, a);
          return;
          kg.a(3, ii.b(), "Manually managed http request timeout occured for: " + a.i());
        }
      }
      kg.a(3, ii.b(), "Error occured when trying to connect to: " + a.i() + ". Exception: " + localException.getMessage());
      ii.a(c, b, a, paramString);
      return;
    }
    if ((i >= 200) && (i < 300))
    {
      ii.b(c, b, a);
      return;
    }
    if ((i >= 300) && (i < 400))
    {
      ii.a(c, b, a, paramkn);
      return;
    }
    kg.a(3, ii.b(), a.m() + " report failed sending to : " + a.i());
    ii.a(c, b, a, paramString);
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.ii.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */