package com.estrongs.android.pop.app.cleaner;

import android.support.v7.widget.RecyclerView;
import com.estrongs.android.cleaner.a;
import com.estrongs.android.ui.a.b;
import com.estrongs.android.ui.view.ScanProgressView;
import com.estrongs.android.view.w;

class e
  implements Runnable
{
  e(c paramc, int paramInt) {}
  
  public void run()
  {
    b.b.w().a();
    b.b.v().g();
    c.a(b).a(c.a(b, a));
    c.c(b).setPadding(0, c.b(b)[0], 0, 0);
    c.c(b).addOnScrollListener(new f(this));
    c.a(b).a(a);
    new g(this).run();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.cleaner.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */