package com.flurry.sdk;

import android.content.Context;
import java.lang.ref.WeakReference;

class jr$1
  implements kb<lg>
{
  jr$1(jr paramjr) {}
  
  public void a(lg paramlg)
  {
    if ((jr.a(a) != null) && (b != jr.a(a).get())) {
      return;
    }
    switch (jr.4.a[c.ordinal()])
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
    kc.a().b("com.flurry.android.sdk.FlurrySessionEvent", jr.b(a));
    a.a();
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.jr.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */