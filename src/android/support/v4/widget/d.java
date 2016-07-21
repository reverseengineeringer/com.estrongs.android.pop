package android.support.v4.widget;

import android.support.v4.view.cn;

class d
  implements Runnable
{
  private d(a parama) {}
  
  public void run()
  {
    if (!a.a(a)) {
      return;
    }
    if (a.b(a))
    {
      a.a(a, false);
      a.c(a).a();
    }
    c localc = a.c(a);
    if ((localc.c()) || (!a.d(a)))
    {
      a.b(a, false);
      return;
    }
    if (a.e(a))
    {
      a.c(a, false);
      a.f(a);
    }
    localc.d();
    int i = localc.g();
    int j = localc.h();
    a.a(i, j);
    cn.a(a.g(a), this);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.widget.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */