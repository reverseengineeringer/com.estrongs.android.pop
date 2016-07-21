package com.estrongs.android.ui.e;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.spfs.SPFileObject;
import com.estrongs.android.pop.spfs.dialog.FlickrPhotoPrivacyDialog;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.dialog.ci;
import com.estrongs.android.ui.dialog.cv;
import com.estrongs.android.ui.view.ak;
import com.estrongs.android.util.ap;
import com.estrongs.fs.h;
import java.util.List;

class gp
  implements MenuItem.OnMenuItemClickListener
{
  gp(cr paramcr) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    paramMenuItem = cr.a(a);
    if (paramMenuItem.size() == 0) {
      ak.a(cr.b(a).getBaseContext(), 2131231551, 0);
    }
    for (;;)
    {
      return true;
      if (ap.aA(cr.b(a).P()))
      {
        ad.a(cr.b(a)).g(true);
        new cv(cr.b(a)).a(2131231718).b(2131232444).a(2131231270, new gq(this)).b().show();
        return false;
      }
      paramMenuItem = (h)paramMenuItem.get(0);
      new FlickrPhotoPrivacyDialog(cr.b(a), new gr(this, paramMenuItem), (SPFileObject)paramMenuItem).show();
      cr.b(a).B();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.gp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */