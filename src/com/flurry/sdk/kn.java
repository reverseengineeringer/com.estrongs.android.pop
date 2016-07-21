package com.flurry.sdk;

public class kn<RequestObjectType, ResponseObjectType>
  extends kp
{
  private kn.a<RequestObjectType, ResponseObjectType> a;
  private RequestObjectType b;
  private ResponseObjectType c;
  private lb<RequestObjectType> d;
  private lb<ResponseObjectType> e;
  
  private void r()
  {
    a(new kn.1(this));
  }
  
  private void s()
  {
    if (a == null) {}
    while (e()) {
      return;
    }
    a.a(this, c);
  }
  
  public void a()
  {
    r();
    super.a();
  }
  
  public void a(kn.a<RequestObjectType, ResponseObjectType> parama)
  {
    a = parama;
  }
  
  public void a(lb<RequestObjectType> paramlb)
  {
    d = paramlb;
  }
  
  public void a(RequestObjectType paramRequestObjectType)
  {
    b = paramRequestObjectType;
  }
  
  public void b(lb<ResponseObjectType> paramlb)
  {
    e = paramlb;
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.kn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */