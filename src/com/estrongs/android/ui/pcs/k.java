package com.estrongs.android.ui.pcs;

import android.view.View;
import android.view.View.OnClickListener;

class k
  implements View.OnClickListener
{
  k(f paramf) {}
  
  public void onClick(View paramView)
  {
    f.b(a).dismiss();
    a.dismiss();
    if (u.a().b())
    {
      if ((f.c(a)) && (a.b != null)) {
        a.b.a(true, "pcs_temp_mode", u.a().e());
      }
      return;
    }
    if (!f.b(a).d()) {}
    for (paramView = new c(f.d(a), false, true);; paramView = new c(f.d(a)))
    {
      paramView.a(a.b);
      paramView.a();
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.pcs.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */