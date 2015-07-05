package com.estrongs.android.ui.dialog;

import android.widget.TextView;
import com.estrongs.android.pop.app.diskusage.a;
import com.estrongs.fs.b.an;

class ej
  implements Runnable
{
  ej(eb parameb) {}
  
  public void run()
  {
    an localan = eb.a(a).b();
    a.c.setText(e + " " + a.d + ", " + f + " " + a.e);
    eb.a(a, a.b, c);
    if (com.estrongs.android.util.am.ba(eb.c(a))) {
      eb.a(a, eb.g(a), d);
    }
    try
    {
      if ((eb.a(a) != null) && (a.l != null)) {
        a.l.b(eb.a(a).b());
      }
      return;
    }
    catch (Exception localException) {}
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.ej
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */