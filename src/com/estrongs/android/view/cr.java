package com.estrongs.android.view;

import android.view.View;
import android.widget.Adapter;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.fs.h;

class cr
  implements AdapterView.OnItemClickListener
{
  cr(cq paramcq) {}
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    paramAdapterView = (h)paramAdapterView.getAdapter().getItem(paramInt);
    paramView = FileExplorerActivity.J();
    if (paramView != null) {
      paramView.b(paramAdapterView.getAbsolutePath());
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.cr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */