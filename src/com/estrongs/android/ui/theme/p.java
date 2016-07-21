package com.estrongs.android.ui.theme;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.ui.adapter.dr;

class p
  implements MenuItem.OnMenuItemClickListener
{
  p(ThemeActivity paramThemeActivity) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    int i = ThemeActivity.c(a).a();
    al localal = ThemeActivity.c(a).b(i);
    if (a.getPackageName().equals(c))
    {
      paramMenuItem.setEnabled(false);
      return false;
    }
    localal.d(a);
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.theme.p
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */