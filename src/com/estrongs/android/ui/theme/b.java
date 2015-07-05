package com.estrongs.android.ui.theme;

import android.content.res.Resources;
import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.ui.dialog.ct;
import java.util.List;

class b
  implements MenuItem.OnMenuItemClickListener
{
  b(ModifyThemeActivity paramModifyThemeActivity) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    paramMenuItem = ModifyThemeActivity.a(a).g();
    if (paramMenuItem == null) {
      return false;
    }
    ai localai = (ai)paramMenuItem.get(ModifyThemeActivity.b(a));
    paramMenuItem = c;
    if (ModifyThemeActivity.b(a) == 0) {
      paramMenuItem = a.getResources().getString(2131428152);
    }
    new ct(a).a(2131428190).b(a.getString(2131428191, new Object[] { paramMenuItem })).b(2131427339, new d(this, localai)).c(2131427340, new c(this)).c();
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.theme.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */