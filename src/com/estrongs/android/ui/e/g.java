package com.estrongs.android.ui.e;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import java.util.List;

class g
  implements MenuItem.OnMenuItemClickListener
{
  g(f paramf) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    if (f.a(a) == null) {
      f.b(a);
    }
    paramMenuItem = a.a.subList(5, a.a.size());
    f.a(a).a(paramMenuItem);
    f.a(a, true);
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */