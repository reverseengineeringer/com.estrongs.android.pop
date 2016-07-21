package com.estrongs.android.pop.app;

import android.content.Intent;
import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.utils.cr;
import com.estrongs.android.ui.dialog.cv;
import com.estrongs.android.ui.e.ju;
import com.estrongs.android.util.ap;
import java.text.MessageFormat;

class ka
  implements MenuItem.OnMenuItemClickListener
{
  ka(PopVideoPlayer paramPopVideoPlayer) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    paramMenuItem = a.getIntent().getData();
    String str = PopVideoPlayer.a(a, paramMenuItem);
    if (str == null) {
      return true;
    }
    boolean bool = ad.a(FexApplication.a()).aE();
    if (bool) {
      if (cr.a(str) == cr.c) {
        bool = true;
      }
    }
    for (;;)
    {
      int i;
      if (bool)
      {
        i = 2131230878;
        label62:
        if (!bool) {
          break label166;
        }
      }
      label166:
      for (paramMenuItem = MessageFormat.format(a.getString(2131232254), new Object[] { ap.d(str) });; paramMenuItem = a.getText(2131232545) + " " + ap.d(str))
      {
        new cv(a).a(i).b(paramMenuItem).b(2131231273, new kc(this, str, bool)).c(2131231269, new kb(this)).c();
        PopVideoPlayer.E(a).d();
        return true;
        bool = false;
        break;
        i = 2131230845;
        break label62;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.ka
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */