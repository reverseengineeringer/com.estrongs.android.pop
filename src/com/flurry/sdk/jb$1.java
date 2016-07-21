package com.flurry.sdk;

import android.content.Context;
import java.lang.ref.WeakReference;

class jb$1
  implements kb<lg>
{
  jb$1(jb paramjb) {}
  
  public void a(lg paramlg)
  {
    if ((jb.a(a) != null) && (b != jb.a(a).get())) {
      return;
    }
    switch (jb.8.a[c.ordinal()])
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
    kc.a().b("com.flurry.android.sdk.FlurrySessionEvent", jb.b(a));
    a.a(d);
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.jb.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */