package com.estrongs.android.view;

import android.view.View;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.estrongs.a.a.m;
import com.estrongs.fs.util.j;

class bw
  implements Runnable
{
  bw(br parambr, m paramm) {}
  
  public void run()
  {
    bo.l(b.a).setVisibility(0);
    bo.b(b.a).setVisibility(0);
    bo.b(b.a).setIndeterminate(false);
    bo.o(b.a).setVisibility(0);
    if (!a.m)
    {
      bo.o(b.a).setVisibility(8);
      bo.b(b.a).setIndeterminate(true);
    }
    if ((a.l) && (a.m) && (a.n))
    {
      bo.w(b.a).setText(bo.a(b.a, bo.c(b.a) - a.f, a.b));
      bo.x(b.a).setVisibility(0);
      bo.B(b.a).setText(j.c(a.b) + "/s");
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.bw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */