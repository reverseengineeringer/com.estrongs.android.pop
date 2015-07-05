package com.estrongs.android.ui.dialog;

import android.widget.TextView;
import com.estrongs.android.pop.app.diskusage.a;
import com.estrongs.fs.b.an;
import com.estrongs.fs.h;

class hw
  implements Runnable
{
  hw(hn paramhn) {}
  
  public void run()
  {
    an localan = hn.b(a).b();
    if (com.estrongs.android.util.am.aO(a.c.getPath()))
    {
      hn.h(a).setText(2131427588);
      hn.i(a).setText(String.valueOf(e));
    }
    for (;;)
    {
      hn.a(a, hn.j(a), c);
      if (com.estrongs.android.util.am.ba(hn.a(a))) {
        hn.a(a, hn.k(a), d);
      }
      try
      {
        if ((hn.b(a) != null) && (a.l != null)) {
          a.l.b(hn.b(a).b());
        }
        return;
      }
      catch (Exception localException) {}
      String str = e + " " + a.d + ", " + f + " " + a.e;
      hn.i(a).setText(str);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.hw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */