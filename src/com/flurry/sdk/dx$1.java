package com.flurry.sdk;

import android.content.Context;
import java.lang.ref.WeakReference;

class dx$1
  implements kb<lg>
{
  dx$1(dx paramdx) {}
  
  public void a(lg paramlg)
  {
    if ((dx.a(a) != null) && (b != dx.a(a).get())) {
      return;
    }
    switch (dx.5.a[c.ordinal()])
    {
    default: 
      return;
    case 1: 
      a.a(b, (Context)a.get());
      return;
    case 2: 
      a.a((Context)a.get());
      return;
    case 3: 
      a.b((Context)a.get());
      return;
    }
    kc.a().b("com.flurry.android.sdk.FlurrySessionEvent", dx.b(a));
    a.a();
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.dx.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */