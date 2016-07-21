package com.estrongs.android.pop.app;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.ui.dialog.cv;

class ey
  implements MenuItem.OnMenuItemClickListener
{
  ey(PopAudioPlayer paramPopAudioPlayer) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    paramMenuItem = a.getString(2131231709);
    String str1 = a.getString(2131231708);
    String str2 = a.getString(2131231707);
    cv localcv = new cv(a).a(2131231709);
    ez localez = new ez(this);
    localcv.a(new String[] { paramMenuItem, str1, str2 }, -1, localez).d(false).c();
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.ey
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */