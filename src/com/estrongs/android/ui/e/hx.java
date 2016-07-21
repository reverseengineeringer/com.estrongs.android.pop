package com.estrongs.android.ui.e;

import com.estrongs.android.pop.m;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.dialog.jh;
import com.estrongs.android.util.ap;
import com.estrongs.android.widget.ab;
import com.estrongs.android.widget.ad;
import com.estrongs.fs.b.a;
import com.estrongs.fs.h;

class hx
  implements ab
{
  hx(hv paramhv, ad paramad) {}
  
  public boolean a(h paramh)
  {
    FileExplorerActivity localFileExplorerActivity = FileExplorerActivity.X();
    if (!ap.M(paramh.getAbsolutePath())) {
      return false;
    }
    a locala = new a(cr.a(b.a), paramh, false);
    locala.setDescription(String.format(localFileExplorerActivity.getString(2131230907), new Object[] { ap.cc(paramh.getAbsolutePath()) }));
    locala.setTaskDecisionListener(new m(localFileExplorerActivity));
    paramh = new jh(localFileExplorerActivity, localFileExplorerActivity.getString(2131232173), locala);
    paramh.a(false);
    paramh.show();
    locala.a(paramh);
    locala.execute();
    a.k();
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.hx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */