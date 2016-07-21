package com.estrongs.android.ui.e;

import android.content.Intent;
import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.preference.FtpServerPreference;

class an
  implements MenuItem.OnMenuItemClickListener
{
  an(m paramm) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    paramMenuItem = new Intent(m.a(a), FtpServerPreference.class);
    m.a(a).startActivity(paramMenuItem);
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.an
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */