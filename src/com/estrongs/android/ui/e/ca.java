package com.estrongs.android.ui.e;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.pop.app.f.f;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.util.ap;

class ca
  implements MenuItem.OnMenuItemClickListener
{
  ca(m paramm) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    paramMenuItem = m.a(a).P();
    if (ap.br(paramMenuItem))
    {
      if (!ap.bg(paramMenuItem)) {
        break label38;
      }
      m.a(a).Z();
    }
    for (;;)
    {
      return true;
      label38:
      if ((ap.J(paramMenuItem)) || (ap.S(paramMenuItem)) || (ap.cj(paramMenuItem)) || (ap.M(paramMenuItem))) {
        m.a(a).a(f.a(paramMenuItem));
      } else {
        m.a(a).a(2131232313);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.ca
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */