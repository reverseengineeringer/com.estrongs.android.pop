package com.estrongs.android.ui.c.b;

import android.view.View;
import android.view.View.OnClickListener;
import com.estrongs.android.pop.app.network.EsNetworkActivity;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.util.a;

class y
  implements View.OnClickListener
{
  y(u paramu) {}
  
  public void onClick(View paramView)
  {
    a.a.k();
    EsNetworkActivity.a(a.a, null, false);
    a.a("Home_Net_Mgr", "Home_Net_Mgr");
    a.b("Home_Net_Mgr_UV", "Home_Net_Mgr_UV");
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.c.b.y
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */