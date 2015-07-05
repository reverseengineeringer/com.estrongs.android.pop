package com.estrongs.android.ui.e;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.spfs.SPFileObject;
import com.estrongs.android.pop.spfs.dialog.FlickrPhotoPrivacyDialog;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.dialog.cg;
import com.estrongs.android.ui.dialog.ct;
import com.estrongs.android.ui.view.ag;
import com.estrongs.android.util.am;
import com.estrongs.fs.h;
import java.util.List;

class gj
  implements MenuItem.OnMenuItemClickListener
{
  gj(cp paramcp) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    paramMenuItem = cp.b(a);
    if (paramMenuItem.size() == 0) {
      ag.a(cp.a(a).getBaseContext(), 2131427774, 0);
    }
    for (;;)
    {
      return true;
      if (am.aq(cp.a(a).z()))
      {
        ad.a(cp.a(a)).h(true);
        new ct(cp.a(a)).a(2131427404).b(2131428074).a(2131427339, new gk(this)).b().show();
        return false;
      }
      paramMenuItem = (h)paramMenuItem.get(0);
      new FlickrPhotoPrivacyDialog(cp.a(a), new gl(this, paramMenuItem), (SPFileObject)paramMenuItem).show();
      cp.a(a).s();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.gj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */