package com.estrongs.android.ui.e;

import android.content.Intent;
import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.pop.app.RecommAcitivity;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.util.a;

class bn
  implements MenuItem.OnMenuItemClickListener
{
  bn(w paramw) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    paramMenuItem = new Intent(a.b, RecommAcitivity.class);
    paramMenuItem.setFlags(268435456);
    paramMenuItem.putExtra("com.estrongs.intent.extra.TITLE", 2131428487);
    ((FileExplorerActivity)a.b).a(paramMenuItem);
    paramMenuItem = a.a();
    if (paramMenuItem != null) {
      paramMenuItem.c("Recommend_Show", "Recommend_Show");
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.bn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */