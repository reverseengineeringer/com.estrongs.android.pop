package com.estrongs.android.ui.controller;

import android.view.MenuItem.OnMenuItemClickListener;
import android.view.View;
import android.view.View.OnClickListener;
import com.estrongs.android.j.c;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.view.a.a;

class t
  implements View.OnClickListener
{
  t(h paramh, a parama) {}
  
  public void onClick(View paramView)
  {
    try
    {
      a.c().onMenuItemClick(a);
      boolean bool = "#home_page#".equals(b.a.P());
      if (bool) {}
      try
      {
        paramView = b.a.at();
        if (paramView != null)
        {
          paramView.a("Home_FAB");
          paramView.c("Home_FAB_UV");
        }
        return;
      }
      catch (Exception paramView)
      {
        paramView.printStackTrace();
        return;
      }
      return;
    }
    catch (Exception paramView)
    {
      paramView.printStackTrace();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.controller.t
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */