package com.estrongs.android.pop.app.imageviewer;

import android.view.View;
import android.view.View.OnClickListener;
import com.estrongs.android.pop.app.aa;
import com.estrongs.android.pop.app.r;

class az
  implements View.OnClickListener
{
  az(ViewImage21 paramViewImage21) {}
  
  public void onClick(View paramView)
  {
    if (ViewImage21.a(a, a.m)) {
      ViewImage21.b(a, a.m);
    }
    if (ViewImage21.k(a).p())
    {
      if (ViewImage21.a(a))
      {
        ViewImage21.l(a);
        return;
      }
      ViewImage21.m(a);
      a.a(a.c, true);
      return;
    }
    if (ViewImage21.n(a) == null) {
      ViewImage21.o(a);
    }
    ViewImage21.n(a).show();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.imageviewer.az
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */