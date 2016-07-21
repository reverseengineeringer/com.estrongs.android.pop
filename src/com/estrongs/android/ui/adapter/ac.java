package com.estrongs.android.ui.adapter;

import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.util.bf;

class ac
  implements bf
{
  ac(ListAdapter_NewNavi paramListAdapter_NewNavi) {}
  
  public void a()
  {
    if (ListAdapter_NewNavi.a(a).ao())
    {
      ListAdapter_NewNavi.b(a);
      return;
    }
    ListAdapter_NewNavi.a(a).runOnUiThread(new ad(this));
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.adapter.ac
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */