package com.estrongs.android.ui.adapter;

import android.os.Environment;
import android.view.View;
import android.view.View.OnClickListener;
import com.estrongs.android.j.c;
import com.estrongs.android.pop.app.analysis.a;
import com.estrongs.android.pop.b;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.view.ak;

class bi
  implements View.OnClickListener
{
  bi(ListAdapter_NewNavi paramListAdapter_NewNavi) {}
  
  public void onClick(View paramView)
  {
    if (!Environment.getExternalStorageState().equals("mounted")) {
      ak.a(ListAdapter_NewNavi.a(a), 2131231850, 1);
    }
    for (;;)
    {
      return;
      try
      {
        ListAdapter_NewNavi.h(a).a("function", "fastaccess_analysis_click");
        if (a.c())
        {
          a.a().a(true);
          return;
        }
      }
      catch (Exception paramView)
      {
        for (;;)
        {
          paramView.printStackTrace();
        }
        ListAdapter_NewNavi.a(a).f("du://" + b.b());
        try
        {
          if (ListAdapter_NewNavi.h(a) != null)
          {
            ListAdapter_NewNavi.h(a).a("Diskusage_Clicked");
            ListAdapter_NewNavi.h(a).c("Diskusage_UV");
            return;
          }
        }
        catch (Exception paramView)
        {
          paramView.printStackTrace();
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.adapter.bi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */