package com.estrongs.android.pop.app;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import android.widget.ListView;
import com.estrongs.android.pop.utils.ad;
import com.estrongs.android.ui.view.ak;

class cy
  implements MenuItem.OnMenuItemClickListener
{
  cy(HideListActivity paramHideListActivity) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    if ((HideListActivity.b(a) != null) && (HideListActivity.b(a).length > 0))
    {
      HideListActivity.a(a, true);
      ad.e();
    }
    try
    {
      ad.b();
      ad.e = false;
      HideListActivity.a(a, ad.f());
      HideListActivity.a(a, new cz(a, a, 2130903262, HideListActivity.b(a)));
      HideListActivity.a(a).setAdapter(HideListActivity.c(a));
      HideListActivity.c(a).notifyDataSetChanged();
      ak.a(a, 2131231561, 1);
      return false;
    }
    catch (Exception paramMenuItem)
    {
      for (;;) {}
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.cy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */