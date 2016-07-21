package com.estrongs.android.ui.e;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.pop.a;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.pop.view.utils.AppRunner;
import com.estrongs.android.ui.theme.al;
import com.estrongs.android.ui.theme.at;
import com.estrongs.android.ui.view.ak;
import com.estrongs.android.util.ap;
import com.estrongs.fs.h;
import java.util.List;

class ew
  implements MenuItem.OnMenuItemClickListener
{
  ew(cr paramcr) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    if (cr.a(a).size() == 0) {
      ak.a(cr.b(a).getBaseContext(), 2131231551, 0);
    }
    String str;
    do
    {
      return true;
      str = ((h)cr.a(a).get(0)).getAbsolutePath();
    } while (str == null);
    int i;
    if (ap.bl(str))
    {
      i = 1;
      paramMenuItem = str;
    }
    Object localObject;
    for (;;)
    {
      localObject = at.a(cr.b(a)).a();
      if (localObject == null) {
        break;
      }
      localObject = new ex(this, paramMenuItem, ((al)localObject).d() + "background.dat");
      if (i == 0) {
        break label189;
      }
      ((Runnable)localObject).run();
      return true;
      paramMenuItem = a.f + "/" + ap.d(str);
      i = 0;
    }
    ak.a(cr.b(a).getBaseContext(), "Sorry, cant set background as themedata is not available", 0);
    return true;
    label189:
    AppRunner.a(cr.b(a), str, paramMenuItem, (Runnable)localObject, false);
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.ew
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */