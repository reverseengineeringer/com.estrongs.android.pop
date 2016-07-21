package com.estrongs.android.ui.e;

import android.content.Intent;
import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.preference.RecyclePreference;

class bc
  implements MenuItem.OnMenuItemClickListener
{
  bc(m paramm) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    paramMenuItem = new Intent(m.a(a), RecyclePreference.class);
    m.a(a).startActivity(paramMenuItem);
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.bc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */