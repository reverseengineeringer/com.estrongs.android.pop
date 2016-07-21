package com.estrongs.android.ui.adapter;

import android.content.pm.PackageManager;
import android.view.View;
import android.view.View.OnClickListener;
import com.estrongs.android.pop.utils.w;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.pop.view.utils.v;

class bh
  implements View.OnClickListener
{
  bh(ListAdapter_NewNavi paramListAdapter_NewNavi, v paramv) {}
  
  public void onClick(View paramView)
  {
    try
    {
      if (w.a(a.f))
      {
        paramView = ListAdapter_NewNavi.a(b).getPackageManager().getLaunchIntentForPackage(a.f);
        if (paramView != null) {
          ListAdapter_NewNavi.a(b).startActivity(paramView);
        }
      }
      else
      {
        w.a(ListAdapter_NewNavi.a(b), a);
        return;
      }
    }
    catch (Exception paramView) {}
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.adapter.bh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */