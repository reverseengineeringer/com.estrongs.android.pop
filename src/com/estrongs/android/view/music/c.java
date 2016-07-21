package com.estrongs.android.view.music;

import com.estrongs.android.pop.app.gq;

class c
  implements Runnable
{
  c(a parama) {}
  
  public void run()
  {
    long l2;
    if (a.e(a).j() != null) {
      if (a.e(a).j().e())
      {
        l2 = a.e(a).j().m();
        if (l2 <= 0L) {
          a.d(a).a(0L, l2);
        }
      }
    }
    for (;;)
    {
      a.c(a);
      return;
      long l3 = a.e(a).j().c();
      long l1 = l3;
      if (l3 > l2) {
        l1 = l2;
      }
      a.d(a).a(l1, l2);
      continue;
      a.d(a).a(0L, 1000L);
      a.d(a).a(false);
      continue;
      a.d(a).a();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.music.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */