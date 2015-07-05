package com.estrongs.android.view;

import android.view.View;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.estrongs.a.a.m;

class an
  implements Runnable
{
  an(am paramam, m paramm) {}
  
  public void run()
  {
    ak.l(b.a).setVisibility(0);
    ak.o(b.a).setVisibility(8);
    ak.b(b.a).setIndeterminate(true);
    ak.a(b.a).setIndeterminate(true);
    if ((a.l) && (a.m) && (a.n))
    {
      ak.w(b.a).setText(ak.a(b.a, 0L, 0));
      ak.x(b.a).setVisibility(0);
      return;
    }
    ak.x(b.a).setVisibility(8);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.an
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */