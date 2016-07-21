package com.estrongs.android.ui.adapter;

import android.view.View;
import android.view.View.OnClickListener;
import com.estrongs.android.j.c;
import com.estrongs.android.pop.view.FileExplorerActivity;

class au
  implements View.OnClickListener
{
  au(ListAdapter_NewNavi paramListAdapter_NewNavi) {}
  
  public void onClick(View paramView)
  {
    ListAdapter_NewNavi.a(a).f("app://user");
    if (ListAdapter_NewNavi.h(a) != null) {
      ListAdapter_NewNavi.h(a).a("AppManager_Show");
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.adapter.au
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */