package com.estrongs.android.pop.app;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import android.widget.ListView;
import com.estrongs.android.pop.utils.aa;
import com.estrongs.android.ui.view.ag;

class cv
  implements MenuItem.OnMenuItemClickListener
{
  cv(HideListActivity paramHideListActivity) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    if ((HideListActivity.b(a) != null) && (HideListActivity.b(a).length > 0))
    {
      HideListActivity.a(a, true);
      aa.e();
    }
    try
    {
      aa.b();
      aa.e = false;
      HideListActivity.a(a, aa.f());
      HideListActivity.a(a, new cx(a, a, 2130903155, HideListActivity.b(a)));
      HideListActivity.a(a).setAdapter(HideListActivity.c(a));
      HideListActivity.c(a).notifyDataSetChanged();
      ag.a(a, 2131428156, 1);
      return false;
    }
    catch (Exception paramMenuItem)
    {
      for (;;) {}
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.cv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */