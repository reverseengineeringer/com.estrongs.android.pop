package com.estrongs.android.ui.e;

import android.content.Context;
import android.content.Intent;
import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.ui.preference.RecyclePreference;

class bl
  implements MenuItem.OnMenuItemClickListener
{
  bl(w paramw) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    paramMenuItem = new Intent(a.b, RecyclePreference.class);
    a.b.startActivity(paramMenuItem);
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.bl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */