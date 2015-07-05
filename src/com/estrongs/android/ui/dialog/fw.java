package com.estrongs.android.ui.dialog;

import android.app.Activity;
import android.widget.EditText;
import com.estrongs.android.a.u;
import com.estrongs.android.pop.ad;
import com.estrongs.android.util.am;
import com.estrongs.android.util.bd;

class fw
  implements Runnable
{
  fw(fs paramfs, String paramString) {}
  
  public void run()
  {
    if (!fs.a(b, a))
    {
      ((Activity)fs.f(b)).runOnUiThread(new fx(this));
      u.a();
      return;
    }
    String str2 = fs.g(b).getText().toString().trim();
    String str1 = str2;
    if (str2.length() == 0) {
      str1 = am.c(a);
    }
    if (!fs.h(b)) {
      ad.a(fs.f(b)).a(a, str1);
    }
    for (;;)
    {
      u.a();
      ((Activity)fs.f(b)).runOnUiThread(new fy(this));
      return;
      str2 = ad.a(fs.f(b)).d(fs.i(b));
      ad.a(fs.f(b)).c(fs.i(b));
      ad.a(fs.f(b)).a(a, str1, ad.a(fs.f(b)).g(fs.i(b)));
      if (bd.b(str2)) {
        ad.a(fs.f(b)).b(a, str2);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.fw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */