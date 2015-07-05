package com.estrongs.android.view;

import android.view.View;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.estrongs.a.a.m;
import com.estrongs.fs.util.j;

class ar
  implements Runnable
{
  ar(am paramam, m paramm) {}
  
  public void run()
  {
    ak.l(b.a).setVisibility(0);
    ak.b(b.a).setVisibility(0);
    ak.b(b.a).setIndeterminate(false);
    ak.o(b.a).setVisibility(0);
    if (!a.m)
    {
      ak.o(b.a).setVisibility(8);
      ak.b(b.a).setIndeterminate(true);
    }
    if ((a.l) && (a.m) && (a.n))
    {
      ak.w(b.a).setText(ak.a(b.a, ak.c(b.a) - a.f, a.b));
      ak.x(b.a).setVisibility(0);
      ak.B(b.a).setText(j.c(a.b) + "/s");
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.ar
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */