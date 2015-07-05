package com.estrongs.android.pop.app;

import android.content.Intent;
import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.utils.ci;
import com.estrongs.android.ui.dialog.ct;
import com.estrongs.android.ui.e.iw;
import com.estrongs.android.util.am;
import java.text.MessageFormat;

class jl
  implements MenuItem.OnMenuItemClickListener
{
  jl(PopVideoPlayer paramPopVideoPlayer) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    paramMenuItem = a.getIntent().getData();
    String str = PopVideoPlayer.a(a, paramMenuItem);
    if (str == null) {
      return true;
    }
    boolean bool = ad.a(FexApplication.a()).aD();
    if (bool) {
      if (ci.a(str) == ci.c) {
        bool = true;
      }
    }
    for (;;)
    {
      int i;
      if (bool)
      {
        i = 2131428403;
        label62:
        if (!bool) {
          break label166;
        }
      }
      label166:
      for (paramMenuItem = MessageFormat.format(a.getString(2131428419), new Object[] { am.d(str) });; paramMenuItem = a.getText(2131427871) + " " + am.d(str))
      {
        new ct(a).a(i).b(paramMenuItem).b(2131427341, new jn(this, str, bool)).c(2131427342, new jm(this)).c();
        PopVideoPlayer.D(a).d();
        return true;
        bool = false;
        break;
        i = 2131427347;
        break label62;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.jl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */