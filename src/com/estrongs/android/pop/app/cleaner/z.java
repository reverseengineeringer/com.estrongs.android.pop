package com.estrongs.android.pop.app.cleaner;

import android.os.Handler;
import com.estrongs.android.cleaner.a;
import com.estrongs.android.view.w;

class z
  implements Runnable
{
  z(v paramv) {}
  
  public void run()
  {
    int i = (int)(System.currentTimeMillis() - v.e(a));
    if (i < v.c(a))
    {
      v.a(a, a.b.v().b());
      long l = i * v.g(a) / v.c(a);
      a.b.a(l);
    }
    for (;;)
    {
      if (!v.h(a))
      {
        a.b.y();
        a.b.u().postDelayed(this, 200L);
      }
      v.a(a).notifyItemRangeChanged(0, v.a(a).getItemCount());
      return;
      a.b.a(a.b.v().b());
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.cleaner.z
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */