package com.estrongs.android.ui.e;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.pop.app.PopAudioPlayer;
import com.estrongs.android.pop.app.a.al;
import com.estrongs.android.pop.app.a.ao;
import com.estrongs.android.ui.dialog.ct;
import com.estrongs.android.ui.view.ag;
import java.util.List;

class hn
  implements MenuItem.OnMenuItemClickListener
{
  hn(hl paramhl) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    List localList = ao.a().j();
    localList.remove(ao.a().e());
    if (localList.size() == 0)
    {
      ag.a(hl.a(a), 2131428325, 0);
      return true;
    }
    String[] arrayOfString = new String[localList.size() + 1];
    int i = 0;
    while (i < localList.size())
    {
      String str = ((al)localList.get(i)).a();
      paramMenuItem = str;
      if (str == null) {
        paramMenuItem = hl.a(a).getString(((al)localList.get(i)).b());
      }
      arrayOfString[i] = paramMenuItem;
      i += 1;
    }
    arrayOfString[localList.size()] = hl.a(a).getString(2131428316);
    new ct(hl.a(a)).a(hl.a(a).getString(2131428315)).a(arrayOfString, -1, new hp(this, localList)).d(false).a(new ho(this)).c();
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.hn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */