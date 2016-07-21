package com.estrongs.android.ui.adapter;

import android.view.View;
import android.view.View.OnClickListener;
import com.estrongs.android.j.c;
import com.estrongs.android.pop.view.FileExplorerActivity;

class ax
  implements View.OnClickListener
{
  ax(ListAdapter_NewNavi paramListAdapter_NewNavi) {}
  
  public void onClick(View paramView)
  {
    ListAdapter_NewNavi.a(a).d("net://");
    try
    {
      ListAdapter_NewNavi.h(a).a("function", "fastaccess_cloud_click");
      return;
    }
    catch (Exception paramView)
    {
      paramView.printStackTrace();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.adapter.ax
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */