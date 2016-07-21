package com.estrongs.android.pop.app;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ListView;
import com.estrongs.android.pop.utils.ad;
import com.estrongs.android.pop.utils.aj;

class cw
  implements View.OnClickListener
{
  cw(HideListActivity paramHideListActivity) {}
  
  public void onClick(View paramView)
  {
    int i = ((Integer)paramView.getTag()).intValue();
    if (i == -1) {
      return;
    }
    paramView = HideListActivity.a(a).onSaveInstanceState();
    aj localaj = HideListActivity.b(a)[i];
    HideListActivity.a(a, true);
    ad.c(b);
    HideListActivity.a(a, ad.f());
    if ((HideListActivity.b(a) == null) || (HideListActivity.b(a).length == 0))
    {
      localaj = new aj(null, false, null);
      HideListActivity.a(a, new cz(a, a, 2130903262, new aj[] { localaj }));
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
          ad.b();
          ad.e = false;
          return;
        }
        catch (Exception paramView)
        {
          return;
        }
        HideListActivity.a(a, new cz(a, a, 2130903262, HideListActivity.b(a)));
      }
      catch (Exception paramView)
      {
        for (;;) {}
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.cw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */