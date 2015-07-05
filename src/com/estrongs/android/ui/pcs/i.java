package com.estrongs.android.ui.pcs;

import android.view.View;
import android.view.View.OnClickListener;

class i
  implements View.OnClickListener
{
  i(d paramd) {}
  
  public void onClick(View paramView)
  {
    d.b(a).dismiss();
    a.dismiss();
    if (r.a().b())
    {
      if ((d.c(a)) && (a.b != null)) {
        a.b.a(true, "pcs_temp_mode", r.a().e());
      }
      return;
    }
    if (!d.b(a).d()) {}
    for (paramView = new a(d.d(a), false, true);; paramView = new a(d.d(a)))
    {
      paramView.a(a.b);
      paramView.a();
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.pcs.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */