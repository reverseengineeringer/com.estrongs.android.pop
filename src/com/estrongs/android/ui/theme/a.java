package com.estrongs.android.ui.theme;

import android.content.res.Resources;
import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.ui.dialog.cv;
import java.util.List;

class a
  implements MenuItem.OnMenuItemClickListener
{
  a(ModifyThemeActivity paramModifyThemeActivity) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    paramMenuItem = ModifyThemeActivity.a(a).g();
    if (paramMenuItem == null) {
      return false;
    }
    al localal = (al)paramMenuItem.get(ModifyThemeActivity.b(a));
    paramMenuItem = d;
    if (ModifyThemeActivity.b(a) == 0) {
      paramMenuItem = a.getResources().getString(2131232415);
    }
    new cv(a).a(2131232429).b(a.getString(2131232428, new Object[] { paramMenuItem })).b(2131231270, new c(this, localal)).c(2131231265, new b(this)).c();
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.theme.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */