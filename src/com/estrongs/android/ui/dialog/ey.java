package com.estrongs.android.ui.dialog;

import android.app.Activity;
import android.widget.EditText;
import com.estrongs.android.d.u;
import com.estrongs.android.pop.ad;
import com.estrongs.android.util.ap;
import com.estrongs.android.util.bk;

class ey
  implements Runnable
{
  ey(ev paramev, String paramString) {}
  
  public void run()
  {
    if (!ev.a(b, a))
    {
      ((Activity)ev.b(b)).runOnUiThread(new ez(this));
      u.a();
      return;
    }
    String str2 = ev.c(b).getText().toString().trim();
    String str1 = str2;
    if (str2.length() == 0) {
      str1 = ap.c(a);
    }
    if (!ev.d(b)) {
      ad.a(ev.b(b)).a(a, str1);
    }
    for (;;)
    {
      u.a();
      ((Activity)ev.b(b)).runOnUiThread(new fa(this));
      return;
      str2 = ad.a(ev.b(b)).d(ev.e(b));
      ad.a(ev.b(b)).c(ev.e(b));
      ad.a(ev.b(b)).a(a, str1, ad.a(ev.b(b)).g(ev.e(b)));
      if (bk.b(str2)) {
        ad.a(ev.b(b)).b(a, str2);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.ey
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */