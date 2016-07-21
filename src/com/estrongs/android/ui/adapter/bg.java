package com.estrongs.android.ui.adapter;

import android.view.View;
import android.view.View.OnClickListener;
import com.estrongs.android.j.c;
import com.estrongs.android.pop.utils.w;

class bg
  implements View.OnClickListener
{
  bg(ListAdapter_NewNavi paramListAdapter_NewNavi) {}
  
  public void onClick(View paramView)
  {
    w.a(ListAdapter_NewNavi.a(a));
    if (ListAdapter_NewNavi.h(a) != null) {
      ListAdapter_NewNavi.h(a).a("TaskManager_Show");
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.adapter.bg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */