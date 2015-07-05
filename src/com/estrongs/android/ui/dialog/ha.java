package com.estrongs.android.ui.dialog;

import android.content.Context;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.a.f;
import com.estrongs.android.util.am;
import com.estrongs.android.view.aw;

class ha
  extends f
{
  ha(gz paramgz, Context paramContext)
  {
    super(paramContext);
  }
  
  public void a()
  {
    aw localaw = null;
    if (FileExplorerActivity.J() != null) {
      localaw = FileExplorerActivity.J().y();
    }
    if (localaw != null)
    {
      if ((b.mContext instanceof FileExplorerActivity))
      {
        if (am.T(localaw.c())) {
          a = 1;
        }
      }
      else {
        return;
      }
      a = 0;
      return;
    }
    a = 0;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.ha
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */