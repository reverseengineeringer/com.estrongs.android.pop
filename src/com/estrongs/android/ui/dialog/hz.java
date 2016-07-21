package com.estrongs.android.ui.dialog;

import android.widget.TextView;
import com.estrongs.android.pop.app.diskusage.a;
import com.estrongs.fs.b.ao;
import com.estrongs.fs.h;

class hz
  implements Runnable
{
  hz(hq paramhq) {}
  
  public void run()
  {
    com.estrongs.fs.b.ap localap = hq.e(a).b();
    if (com.estrongs.android.util.ap.aY(a.c.getPath()))
    {
      hq.k(a).setText(2131232213);
      hq.l(a).setText(String.valueOf(e));
    }
    for (;;)
    {
      hq.a(a, hq.m(a), c);
      if (com.estrongs.android.util.ap.bl(hq.a(a))) {
        hq.a(a, hq.n(a), d);
      }
      try
      {
        if ((hq.e(a) != null) && (a.l != null)) {
          a.l.b(hq.e(a).b());
        }
        return;
      }
      catch (Exception localException) {}
      String str = e + " " + a.d + ", " + f + " " + a.e;
      hq.l(a).setText(str);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.hz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */