package com.estrongs.android.ui.adapter;

import android.view.View;
import android.view.View.OnClickListener;
import com.estrongs.android.pop.app.network.EsNetworkActivity;
import com.estrongs.android.pop.view.FileExplorerActivity;

class be
  implements View.OnClickListener
{
  be(ListAdapter_NewNavi paramListAdapter_NewNavi) {}
  
  public void onClick(View paramView)
  {
    ListAdapter_NewNavi.a(a).o();
    EsNetworkActivity.a(ListAdapter_NewNavi.a(a), null, false);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.adapter.be
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */