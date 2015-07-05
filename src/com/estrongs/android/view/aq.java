package com.estrongs.android.view;

import android.view.View;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.estrongs.a.a.m;
import com.estrongs.fs.util.j;

class aq
  implements Runnable
{
  aq(am paramam, m paramm) {}
  
  public void run()
  {
    ak.z(b.a).setVisibility(8);
    ak.l(b.a).setVisibility(0);
    ak.b(b.a).setVisibility(0);
    ak.b(b.a).setIndeterminate(false);
    ak.A(b.a).setText(2131428123);
    if ((a.l) && (a.m) && (a.n))
    {
      ak.w(b.a).setText(ak.a(b.a, ak.m(b.a) - a.f, a.b));
      ak.x(b.a).setVisibility(0);
      ak.B(b.a).setText(j.c(a.b) + "/s");
    }
    ak.o(b.a).setVisibility(0);
    if (!a.m)
    {
      ak.o(b.a).setVisibility(8);
      ak.b(b.a).setIndeterminate(true);
    }
    if (ak.t(b.a) == 1) {
      ak.o(b.a).setVisibility(0);
    }
    if (a.n)
    {
      ak.x(b.a).setVisibility(0);
      return;
    }
    ak.x(b.a).setVisibility(8);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.aq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */