package com.estrongs.android.ui.drag;

import android.os.Handler;

class i
  implements Runnable
{
  private int b;
  
  i(d paramd) {}
  
  void a(int paramInt)
  {
    b = paramInt;
  }
  
  public void run()
  {
    if (d.b(a) != null)
    {
      if (b != 0) {
        break label39;
      }
      d.b(a).k_();
      d.a(a, 0);
    }
    label39:
    do
    {
      do
      {
        return;
        if (b == 1)
        {
          d.b(a).b();
          d.a(a, 0);
          return;
        }
        if (b != 2) {
          break;
        }
      } while ((d.c(a)) || (d.d(a) != 1));
      d.b(a).c();
      d.e(a).postDelayed(this, 25L);
      return;
    } while ((b != 3) || (d.c(a)) || (d.d(a) != 1));
    d.b(a).d();
    d.e(a).postDelayed(this, 25L);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.drag.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */