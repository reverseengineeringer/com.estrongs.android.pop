package com.estrongs.android.pop.view;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemLongClickListener;
import com.estrongs.android.pop.spfs.CreateSiteFileObject;
import com.estrongs.android.view.aw;
import com.estrongs.fs.h;

class du
  implements AdapterView.OnItemLongClickListener
{
  du(FileExplorerActivity paramFileExplorerActivity) {}
  
  public boolean onItemLongClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    aw localaw = a.y();
    if ((localaw != null) && (((h)localaw.e(paramInt) instanceof CreateSiteFileObject))) {
      return true;
    }
    return a.L.onItemLongClick(paramAdapterView, paramView, paramInt, paramLong);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.du
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */