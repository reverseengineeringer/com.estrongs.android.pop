package com.flurry.sdk;

import android.app.ProgressDialog;

class ew$8$1
  extends ly
{
  ew$8$1(ew.8 param8) {}
  
  public void a()
  {
    kg.a(3, ew.f(), "Failed to load view in 10 seconds.");
    if (ew.g(a.a).isShowing()) {
      ew.g(a.a).dismiss();
    }
    ew.a(a.a, ew.a.g);
    ec.a(ed.n, ew.a(a.a), "Request timed out");
    ew.b(a.a);
    ew.c(a.a).a();
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.ew.8.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */