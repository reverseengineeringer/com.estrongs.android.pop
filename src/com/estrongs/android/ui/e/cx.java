package com.estrongs.android.ui.e;

import android.content.Context;
import com.estrongs.android.pop.m;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.dialog.ix;
import com.estrongs.android.util.am;
import com.estrongs.android.widget.ac;
import com.estrongs.android.widget.ae;
import com.estrongs.fs.b.a;
import com.estrongs.fs.h;

class cx
  implements ac
{
  cx(cv paramcv, ae paramae) {}
  
  public boolean a(h paramh)
  {
    FileExplorerActivity localFileExplorerActivity = FileExplorerActivity.J();
    if (!am.K(paramh.getAbsolutePath())) {
      return false;
    }
    a locala = new a(cp.b(b.a), paramh, false);
    locala.setDescription(String.format(b.a.b.getString(2131428726), new Object[] { am.bL(paramh.getAbsolutePath()) }));
    locala.setTaskDecisionListener(new m(localFileExplorerActivity));
    paramh = new ix(localFileExplorerActivity, localFileExplorerActivity.getString(2131427460), locala);
    paramh.a(false);
    paramh.show();
    locala.a(paramh);
    locala.execute();
    a.k();
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.cx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */