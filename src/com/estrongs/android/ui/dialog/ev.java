package com.estrongs.android.ui.dialog;

import android.app.Activity;
import android.widget.EditText;
import com.estrongs.android.a.u;
import com.estrongs.android.pop.ad;
import com.estrongs.android.util.am;
import com.estrongs.android.util.bd;

class ev
  implements Runnable
{
  ev(es parames, String paramString) {}
  
  public void run()
  {
    if (!es.a(b, a))
    {
      ((Activity)es.b(b)).runOnUiThread(new ew(this));
      u.a();
      return;
    }
    String str2 = es.c(b).getText().toString().trim();
    String str1 = str2;
    if (str2.length() == 0) {
      str1 = am.c(a);
    }
    if (!es.d(b)) {
      ad.a(es.b(b)).a(a, str1);
    }
    for (;;)
    {
      u.a();
      ((Activity)es.b(b)).runOnUiThread(new ex(this));
      return;
      str2 = ad.a(es.b(b)).d(es.e(b));
      ad.a(es.b(b)).c(es.e(b));
      ad.a(es.b(b)).a(a, str1, ad.a(es.b(b)).g(es.e(b)));
      if (bd.b(str2)) {
        ad.a(es.b(b)).b(a, str2);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.ev
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */