package com.estrongs.android.ui.e;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.pop.a;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.pop.view.utils.AppRunner;
import com.estrongs.android.ui.theme.ai;
import com.estrongs.android.ui.theme.al;
import com.estrongs.android.ui.view.ag;
import com.estrongs.android.util.am;
import com.estrongs.fs.h;
import java.util.List;

class eo
  implements MenuItem.OnMenuItemClickListener
{
  eo(cp paramcp) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    if (cp.b(a).size() == 0) {
      ag.a(cp.a(a).getBaseContext(), 2131427774, 0);
    }
    String str;
    do
    {
      return true;
      str = ((h)cp.b(a).get(0)).getAbsolutePath();
    } while (str == null);
    int i;
    if (am.ba(str))
    {
      i = 1;
      paramMenuItem = str;
    }
    Object localObject;
    for (;;)
    {
      localObject = al.a(cp.a(a)).a();
      if (localObject == null) {
        break;
      }
      localObject = new ep(this, paramMenuItem, ((ai)localObject).a() + "background.dat");
      if (i == 0) {
        break label189;
      }
      ((Runnable)localObject).run();
      return true;
      paramMenuItem = a.d + "/" + am.d(str);
      i = 0;
    }
    ag.a(cp.a(a).getBaseContext(), "Sorry, cant set background as themedata is not available", 0);
    return true;
    label189:
    AppRunner.a(cp.a(a), str, paramMenuItem, (Runnable)localObject, false);
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.eo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */