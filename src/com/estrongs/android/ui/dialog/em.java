package com.estrongs.android.ui.dialog;

import android.widget.TextView;
import com.estrongs.android.pop.app.diskusage.a;
import com.estrongs.fs.b.ao;

class em
  implements Runnable
{
  em(ee paramee) {}
  
  public void run()
  {
    com.estrongs.fs.b.ap localap = ee.d(a).b();
    a.c.setText(e + " " + a.d + ", " + f + " " + a.e);
    ee.a(a, a.b, c);
    if (com.estrongs.android.util.ap.bl(ee.f(a))) {
      ee.a(a, ee.j(a), d);
    }
    try
    {
      if ((ee.d(a) != null) && (a.l != null)) {
        a.l.b(ee.d(a).b());
      }
      return;
    }
    catch (Exception localException) {}
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.em
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */