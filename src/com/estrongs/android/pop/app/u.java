package com.estrongs.android.pop.app;

class u
  implements Runnable
{
  u(t paramt) {}
  
  public void run()
  {
    if (!r.a(a.a).f()) {
      a.a.dismiss();
    }
    while (a.a.isDismissed()) {
      return;
    }
    r.e(a.a);
    r.f(a.a);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.u
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */