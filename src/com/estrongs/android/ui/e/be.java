package com.estrongs.android.ui.e;

import android.content.Intent;
import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.j.c;
import com.estrongs.android.pop.app.RecommAcitivity;
import com.estrongs.android.pop.view.FileExplorerActivity;

class be
  implements MenuItem.OnMenuItemClickListener
{
  be(m paramm) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    paramMenuItem = new Intent(m.a(a), RecommAcitivity.class);
    paramMenuItem.setFlags(268435456);
    paramMenuItem.putExtra("com.estrongs.intent.extra.TITLE", 2131232474);
    m.a(a).a(paramMenuItem);
    paramMenuItem = c.a(m.a(a));
    if (paramMenuItem != null) {
      paramMenuItem.a("Recommend_Show");
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.be
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */