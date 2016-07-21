package com.estrongs.android.pop.view;

import android.support.v7.widget.RecyclerView;
import android.view.View;
import com.estrongs.android.pop.spfs.CreateSiteFileObject;
import com.estrongs.android.view.cp;
import com.estrongs.android.view.cr;
import com.estrongs.fs.h;

class bq
  implements cp
{
  bq(FileExplorerActivity paramFileExplorerActivity) {}
  
  public boolean a(RecyclerView paramRecyclerView, View paramView, int paramInt, boolean paramBoolean)
  {
    cr localcr = a.O();
    if ((localcr != null) && (((h)localcr.e(paramInt) instanceof CreateSiteFileObject))) {
      return true;
    }
    return a.I.a(paramRecyclerView, paramView, paramInt, paramBoolean);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.bq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */