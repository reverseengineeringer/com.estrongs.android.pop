package com.estrongs.android.ui.adapter;

import android.view.View;
import android.view.View.OnClickListener;
import com.estrongs.android.j.c;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.app.shortcut.ShortcutFormat;
import com.estrongs.android.pop.utils.dd;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.d.i;
import com.estrongs.android.util.ap;
import com.estrongs.android.view.WebViewWrapper;
import com.estrongs.fs.d;

class cv
  implements View.OnClickListener
{
  cv(ListAdapter_NewNavi paramListAdapter_NewNavi, ShortcutFormat paramShortcutFormat, String paramString) {}
  
  public void onClick(View paramView)
  {
    try
    {
      if ((ListAdapter_NewNavi.h(c) != null) && (a.getAttribute("searchEngineKey") != null))
      {
        ListAdapter_NewNavi.h(c).a("Search_Wan");
        ListAdapter_NewNavi.h(c).c("Search_Wan_UV");
      }
      try
      {
        paramView = a.targetLocation;
        if (ap.v(paramView))
        {
          paramView = ListAdapter_NewNavi.a(c).d(paramView);
          if ((paramView == null) || (!(paramView instanceof WebViewWrapper)) || (!dd.a(b))) {
            return;
          }
          ((WebViewWrapper)paramView).a(ad.a(FexApplication.a()).aM(), b);
          return;
        }
        if (!ap.bm(paramView)) {
          break label204;
        }
        paramView = ap.E(paramView);
        if (!d.a(ListAdapter_NewNavi.a(c)).h(paramView)) {
          break label191;
        }
        if (ListAdapter_NewNavi.i(c).c() < 12)
        {
          ListAdapter_NewNavi.a(c).g(paramView);
          return;
        }
      }
      catch (Exception paramView)
      {
        paramView.printStackTrace();
        return;
      }
      ListAdapter_NewNavi.a(c).a(2131232454);
      return;
      label191:
      ListAdapter_NewNavi.a(c).a(null, paramView);
      return;
      label204:
      if (ap.ci(paramView))
      {
        ListAdapter_NewNavi.a(c).f(paramView);
        return;
      }
      if (d.a(ListAdapter_NewNavi.a(c)).b(paramView))
      {
        if ((d.a(ListAdapter_NewNavi.a(c)).h(paramView)) || (ap.V(paramView)) || (ap.X(paramView)) || (ap.Z(paramView)) || (ap.ag(paramView)))
        {
          if (ListAdapter_NewNavi.i(c).c() < 12)
          {
            ListAdapter_NewNavi.a(c).g(paramView);
            return;
          }
          ListAdapter_NewNavi.a(c).a(2131232454);
          return;
        }
        ListAdapter_NewNavi.a(c).a(null, paramView);
        return;
      }
      ListAdapter_NewNavi.a(c).a(2131231719);
      return;
    }
    catch (Exception paramView)
    {
      for (;;) {}
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.adapter.cv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */