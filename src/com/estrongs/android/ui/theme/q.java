package com.estrongs.android.ui.theme;

import android.content.Intent;
import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.ui.adapter.dr;

class q
  implements MenuItem.OnMenuItemClickListener
{
  q(ThemeActivity paramThemeActivity) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    paramMenuItem = new Intent(a, ModifyThemeActivity.class);
    paramMenuItem.putExtra("theme_data_index", ThemeActivity.c(a).a());
    a.startActivityForResult(paramMenuItem, 4132);
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.theme.q
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */