package com.flurry.sdk;

public class eh
  extends el
{
  protected kp.a a()
  {
    return kp.a.c;
  }
  
  public void a(eg parameg, String paramString, eh.a parama)
  {
    kn localkn = new kn();
    localkn.a(b());
    localkn.a(a());
    localkn.d(20000);
    localkn.a("Content-Type", em.f());
    localkn.b(new lc());
    a("oauth_verifier", paramString);
    a(localkn, parameg);
    localkn.a(new eh.1(this, parama));
    jq.a().a(this, localkn);
  }
  
  protected String b()
  {
    return ea.a();
  }
  
  public void c()
  {
    jq.a().a(this);
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.eh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */