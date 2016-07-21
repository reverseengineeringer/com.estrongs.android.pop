package com.estrongs.android.ui.e;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.pop.app.PopAudioPlayer;
import com.estrongs.android.pop.app.c.j;
import com.estrongs.android.pop.app.c.m;
import com.estrongs.android.ui.dialog.cv;
import com.estrongs.android.ui.view.ak;
import java.util.List;

class iv
  implements MenuItem.OnMenuItemClickListener
{
  iv(iq paramiq) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    List localList = m.a().j();
    localList.remove(m.a().e());
    if (localList.size() == 0)
    {
      ak.a(iq.a(a), 2131231044, 0);
      return true;
    }
    String[] arrayOfString = new String[localList.size() + 1];
    int i = 0;
    while (i < localList.size())
    {
      String str = ((j)localList.get(i)).a();
      paramMenuItem = str;
      if (str == null) {
        paramMenuItem = iq.a(a).getString(((j)localList.get(i)).b());
      }
      arrayOfString[i] = paramMenuItem;
      i += 1;
    }
    arrayOfString[localList.size()] = iq.a(a).getString(2131231703);
    new cv(iq.a(a)).a(iq.a(a).getString(2131231706)).a(arrayOfString, -1, new ix(this, localList)).d(false).a(new iw(this)).c();
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.iv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */