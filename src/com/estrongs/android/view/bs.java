package com.estrongs.android.view;

import android.view.View;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.estrongs.a.a.m;

class bs
  implements Runnable
{
  bs(br parambr, m paramm) {}
  
  public void run()
  {
    bo.l(b.a).setVisibility(0);
    bo.o(b.a).setVisibility(8);
    bo.b(b.a).setIndeterminate(true);
    bo.a(b.a).setIndeterminate(true);
    if ((a.l) && (a.m) && (a.n))
    {
      bo.w(b.a).setText(bo.a(b.a, 0L, 0));
      bo.x(b.a).setVisibility(0);
      return;
    }
    bo.x(b.a).setVisibility(8);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.bs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */