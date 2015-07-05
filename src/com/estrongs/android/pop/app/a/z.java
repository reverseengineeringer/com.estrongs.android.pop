package com.estrongs.android.pop.app.a;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.pop.app.PopAudioPlayer;
import com.estrongs.android.ui.dialog.ct;

class z
  implements MenuItem.OnMenuItemClickListener
{
  z(e parame) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    paramMenuItem = e.a(a).getString(2131427939);
    String str1 = e.a(a).getString(2131427941);
    String str2 = e.a(a).getString(2131427940);
    ct localct = new ct(e.a(a)).a(2131427939);
    aa localaa = new aa(this);
    localct.a(new String[] { paramMenuItem, str1, str2 }, -1, localaa).d(false).c();
    a.d();
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.a.z
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */