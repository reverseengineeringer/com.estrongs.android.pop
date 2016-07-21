package com.estrongs.android.pop.app.network;

import android.content.Intent;
import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.pop.app.ESNetSettingActivity;

class h
  implements MenuItem.OnMenuItemClickListener
{
  h(EsNetworkActivity paramEsNetworkActivity) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    paramMenuItem = new Intent(a, ESNetSettingActivity.class);
    paramMenuItem.setFlags(268435456);
    a.startActivity(paramMenuItem);
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.network.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */