package com.estrongs.android.ui.e;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.pop.view.utils.AppRunner;
import com.estrongs.android.ui.view.ak;
import com.estrongs.fs.h;
import java.util.List;

class el
  implements MenuItem.OnMenuItemClickListener
{
  el(cr paramcr) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    if (cr.a(a).size() == 0) {
      ak.a(cr.b(a).getBaseContext(), 2131231551, 0);
    }
    for (;;)
    {
      return true;
      AppRunner.t(cr.b(a), ((h)cr.a(a).get(0)).getAbsolutePath());
      cr.b(a).B();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.el
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */