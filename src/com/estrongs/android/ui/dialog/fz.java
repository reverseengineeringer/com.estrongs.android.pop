package com.estrongs.android.ui.dialog;

import android.app.Activity;
import android.widget.EditText;
import com.estrongs.android.d.u;
import com.estrongs.android.pop.ad;
import com.estrongs.android.util.ap;
import com.estrongs.android.util.bk;

class fz
  implements Runnable
{
  fz(fv paramfv, String paramString) {}
  
  public void run()
  {
    if (!fv.a(b, a))
    {
      ((Activity)fv.f(b)).runOnUiThread(new ga(this));
      u.a();
      return;
    }
    String str2 = fv.g(b).getText().toString().trim();
    String str1 = str2;
    if (str2.length() == 0) {
      str1 = ap.c(a);
    }
    if (!fv.h(b)) {
      ad.a(fv.f(b)).a(a, str1);
    }
    for (;;)
    {
      u.a();
      ((Activity)fv.f(b)).runOnUiThread(new gb(this));
      return;
      str2 = ad.a(fv.f(b)).d(fv.i(b));
      ad.a(fv.f(b)).c(fv.i(b));
      ad.a(fv.f(b)).a(a, str1, ad.a(fv.f(b)).g(fv.i(b)));
      if (bk.b(str2)) {
        ad.a(fv.f(b)).b(a, str2);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.fz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */