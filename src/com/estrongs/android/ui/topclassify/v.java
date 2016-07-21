package com.estrongs.android.ui.topclassify;

import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.app.i;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.adapter.ListAdapter_NewNavi;

class v
  implements View.OnClickListener
{
  v(t paramt) {}
  
  public void onClick(View paramView)
  {
    paramView = (d)paramView.getTag();
    FileExplorerActivity localFileExplorerActivity;
    if ((e != null) && (e.d))
    {
      e.d = false;
      if ("finder://".equals(a)) {
        ad.a(a.a).z(true);
      }
    }
    else
    {
      paramView = a;
      com.estrongs.android.j.d.b(a.a, paramView);
      localFileExplorerActivity = (FileExplorerActivity)a.a;
      if ((TextUtils.isEmpty(paramView)) || (!paramView.equals("applocker"))) {
        break label130;
      }
      i.a(localFileExplorerActivity);
    }
    label130:
    do
    {
      return;
      ad.a(a.a).e(e.c);
      break;
      if ((!TextUtils.isEmpty(paramView)) && (paramView.equals("hideList")))
      {
        ListAdapter_NewNavi.a(localFileExplorerActivity);
        return;
      }
      if ((!TextUtils.isEmpty(paramView)) && (paramView.equals("finder://")))
      {
        com.estrongs.android.pop.app.finder.a.a().a(localFileExplorerActivity);
        return;
      }
    } while (TextUtils.isEmpty(paramView));
    localFileExplorerActivity.f(paramView);
    t.a(a).notifyItemChanged(1);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.topclassify.v
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */