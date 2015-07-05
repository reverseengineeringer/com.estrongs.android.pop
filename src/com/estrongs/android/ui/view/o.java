package com.estrongs.android.ui.view;

import android.app.Activity;
import android.os.Handler;
import android.widget.EditText;
import com.estrongs.android.a.u;
import com.estrongs.android.pop.ad;
import com.estrongs.android.util.am;

class o
  implements Runnable
{
  o(b paramb) {}
  
  public void run()
  {
    if ((!b.b(a, b.k(a))) && (!b.l(a)))
    {
      b.o(a).post(new p(this));
      u.a();
    }
    for (;;)
    {
      return;
      String str2 = b.p(a).getText().toString().trim();
      String str1 = str2;
      if (str2.length() == 0) {
        str1 = am.c(b.k(a));
      }
      b.c(a, b.k(a));
      if (!b.q(a)) {
        ad.a(b.r(a)).a(b.k(a), str1);
      }
      for (;;)
      {
        u.a();
        if (b.w(a) == null) {
          break;
        }
        b.y(a).runOnUiThread(new q(this));
        return;
        ad.a(b.t(a)).a(b.s(a), false);
        ad.a(b.v(a)).a(b.k(a), str1, ad.a(b.u(a)).g(b.s(a)));
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.view.o
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */