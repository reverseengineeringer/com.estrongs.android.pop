package com.estrongs.android.pop.app.a;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.pop.app.PopAudioPlayer;
import com.estrongs.android.ui.dialog.ct;
import com.estrongs.android.ui.view.ag;
import java.util.List;

class o
  implements MenuItem.OnMenuItemClickListener
{
  o(e parame) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    List localList = ao.a().j();
    localList.remove(ao.a().e());
    if (localList.size() == 0)
    {
      ag.a(e.a(a), 2131428325, 0);
      return true;
    }
    String[] arrayOfString = new String[localList.size() + 1];
    int i = 0;
    while (i < localList.size())
    {
      String str = ((al)localList.get(i)).a();
      paramMenuItem = str;
      if (str == null) {
        paramMenuItem = e.a(a).getString(((al)localList.get(i)).b());
      }
      arrayOfString[i] = paramMenuItem;
      i += 1;
    }
    arrayOfString[localList.size()] = e.a(a).getString(2131428316);
    new ct(e.a(a)).a(e.a(a).getString(2131428315)).a(arrayOfString, -1, new p(this, localList)).d(false).c();
    a.d();
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.a.o
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */