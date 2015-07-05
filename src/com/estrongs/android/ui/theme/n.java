package com.estrongs.android.ui.theme;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.ui.a.db;

class n
  implements MenuItem.OnMenuItemClickListener
{
  n(ThemeActivity paramThemeActivity) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    int i = ThemeActivity.c(a).a();
    ai localai = ThemeActivity.c(a).c(i);
    if (a.getPackageName().equals(b))
    {
      paramMenuItem.setEnabled(false);
      return false;
    }
    localai.c(a);
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.theme.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */