package com.estrongs.android.ui.e;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.view.ak;
import com.estrongs.android.util.ap;
import com.estrongs.fs.h;
import com.estrongs.fs.impl.local.i;
import java.util.List;

class gl
  implements MenuItem.OnMenuItemClickListener
{
  gl(cr paramcr) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    paramMenuItem = cr.a(a);
    if (paramMenuItem.size() == 0) {
      ak.a(cr.b(a).getBaseContext(), 2131231551, 0);
    }
    while (paramMenuItem.size() != 1) {
      return true;
    }
    String str = ((h)paramMenuItem.get(0)).getAbsolutePath();
    paramMenuItem = str;
    if (!i.h(str)) {
      paramMenuItem = ap.bB(str);
    }
    cr.b(a).d(paramMenuItem);
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.gl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */