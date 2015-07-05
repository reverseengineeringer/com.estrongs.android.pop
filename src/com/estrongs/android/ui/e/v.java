package com.estrongs.android.ui.e;

import android.content.Context;
import android.content.Intent;
import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.pop.app.ESNetSettingActivity;

class v
  implements MenuItem.OnMenuItemClickListener
{
  v(u paramu) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    paramMenuItem = new Intent(a.b, ESNetSettingActivity.class);
    paramMenuItem.setFlags(268435456);
    a.b.startActivity(paramMenuItem);
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.v
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */