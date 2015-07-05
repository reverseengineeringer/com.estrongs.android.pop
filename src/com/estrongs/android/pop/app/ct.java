package com.estrongs.android.pop.app;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ListView;
import com.estrongs.android.pop.utils.aa;
import com.estrongs.android.pop.utils.af;

class ct
  implements View.OnClickListener
{
  ct(HideListActivity paramHideListActivity) {}
  
  public void onClick(View paramView)
  {
    int i = ((Integer)paramView.getTag()).intValue();
    if (i == -1) {
      return;
    }
    paramView = HideListActivity.a(a).onSaveInstanceState();
    af localaf = HideListActivity.b(a)[i];
    HideListActivity.a(a, true);
    aa.c(b);
    HideListActivity.a(a, aa.f());
    if ((HideListActivity.b(a) == null) || (HideListActivity.b(a).length == 0))
    {
      localaf = new af(null, false, null);
      HideListActivity.a(a, new cx(a, a, 2130903155, new af[] { localaf }));
    }
    for (;;)
    {
      HideListActivity.a(a).setAdapter(HideListActivity.c(a));
      HideListActivity.c(a).notifyDataSetChanged();
      try
      {
        HideListActivity.a(a).onRestoreInstanceState(paramView);
        try
        {
          aa.b();
          aa.e = false;
          return;
        }
        catch (Exception paramView)
        {
          return;
        }
        HideListActivity.a(a, new cx(a, a, 2130903155, HideListActivity.b(a)));
      }
      catch (Exception paramView)
      {
        for (;;) {}
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.ct
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */