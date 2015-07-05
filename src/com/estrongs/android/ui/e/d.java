package com.estrongs.android.ui.e;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import java.util.List;

class d
  implements MenuItem.OnMenuItemClickListener
{
  d(c paramc) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    if (c.a(a) == null) {
      c.b(a);
    }
    paramMenuItem = a.a.subList(5, a.a.size());
    c.a(a).a(paramMenuItem);
    c.a(a, true);
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */