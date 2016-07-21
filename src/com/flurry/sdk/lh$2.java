package com.flurry.sdk;

class lh$2
  implements kb<jv>
{
  lh$2(lh paramlh) {}
  
  public void a(jv paramjv)
  {
    switch (lh.5.a[b.ordinal()])
    {
    default: 
      return;
    case 1: 
      kg.a(3, lh.h(), "Automatic onStartSession for context:" + a);
      lh.a(a, a);
      return;
    case 2: 
      kg.a(3, lh.h(), "Automatic onEndSession for context:" + a);
      a.d(a);
      return;
    }
    kg.a(3, lh.h(), "Automatic onEndSession (destroyed) for context:" + a);
    a.d(a);
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.lh.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */