package com.estrongs.android.pop.app.analysis.view;

import android.os.Handler;
import java.util.List;

class l
  implements Runnable
{
  l(i parami) {}
  
  public void run()
  {
    if ((i.c(a) < i.d(a).size() - 1) && (!da).get(i.c(a))).a))
    {
      da).get(i.c(a))).a = true;
      i.e(a).notifyItemChanged(i.c(a));
    }
    if (i.d(a).size() - i.c(a) > i.g(a)) {
      i.h(a);
    }
    do
    {
      i.k(a).postDelayed(new m(this), 500L);
      while (i.c(a) < i.d(a).size() - 1)
      {
        i.k(a).postDelayed(i.l(a), Math.round(Math.random() * 1000.0D) + 1000L);
        return;
        if (i.c(a) < i.d(a).size() - 1) {
          i.h(a);
        }
      }
    } while (!i.b(a));
    i.k(a).sendEmptyMessageDelayed(1, Math.round(Math.random() * 1000.0D) + 1000L);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.analysis.view.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */