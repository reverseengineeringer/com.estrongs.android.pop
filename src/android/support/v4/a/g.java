package android.support.v4.a;

import android.view.View;

class g
  implements Runnable
{
  g(f paramf) {}
  
  public void run()
  {
    float f = (float)(f.a(a) - f.b(a)) * 1.0F / (float)f.c(a);
    if ((f > 1.0F) || (a.c.getParent() == null)) {
      f = 1.0F;
    }
    f.a(a, f);
    f.d(a);
    if (f.e(a) >= 1.0F)
    {
      f.f(a);
      return;
    }
    a.c.postDelayed(f.g(a), 16L);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.a.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */