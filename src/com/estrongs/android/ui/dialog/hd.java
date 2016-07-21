package com.estrongs.android.ui.dialog;

import android.content.Context;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.adapter.f;
import com.estrongs.android.util.ap;
import com.estrongs.android.view.cr;

class hd
  extends f
{
  hd(hc paramhc, Context paramContext)
  {
    super(paramContext);
  }
  
  public void a()
  {
    cr localcr = null;
    if (FileExplorerActivity.X() != null) {
      localcr = FileExplorerActivity.X().O();
    }
    if (localcr != null)
    {
      if ((b.mContext instanceof FileExplorerActivity))
      {
        if (ap.X(localcr.c())) {
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
 * Qualified Name:     com.estrongs.android.ui.dialog.hd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */