package com.flurry.sdk;

class dq$2
  implements kn.a<Void, String>
{
  dq$2(dq paramdq, String paramString, fm paramfm, int paramInt, au paramau) {}
  
  public void a(kn<Void, String> paramkn, String paramString)
  {
    int i = paramkn.h();
    kg.a(3, dq.f(), "VAST resolver: HTTP status code is:" + i + " for url: " + a);
    fm localfm = null;
    if (paramkn.f())
    {
      kg.a(3, dq.f(), "VAST resolver response:" + paramString + " for url: " + a);
      localfm = fm.a(b, fo.a(paramString));
    }
    if (localfm == null)
    {
      kg.a(3, dq.f(), "VAST resolver failed for frame: " + c);
      d.a(c, new fm.a().a().b());
    }
    for (;;)
    {
      js.a().b(new dq.2.1(this));
      return;
      kg.a(3, dq.f(), "VAST resolver successful for frame: " + c);
      d.a(c, localfm);
    }
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.dq.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */