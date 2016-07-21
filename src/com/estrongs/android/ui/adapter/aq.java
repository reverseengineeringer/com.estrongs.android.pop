package com.estrongs.android.ui.adapter;

import android.os.Environment;
import android.view.View;
import android.view.View.OnClickListener;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.view.ak;

class aq
  implements View.OnClickListener
{
  aq(ListAdapter_NewNavi paramListAdapter_NewNavi) {}
  
  public void onClick(View paramView)
  {
    if (!Environment.getExternalStorageState().equals("mounted"))
    {
      ak.a(ListAdapter_NewNavi.a(a), 2131231850, 1);
      return;
    }
    ListAdapter_NewNavi.a(a).f("pic://");
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.adapter.aq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */