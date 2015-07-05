package com.estrongs.android.ui.a;

import android.view.View;
import android.view.View.OnClickListener;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.app.shortcut.ShortcutFormat;
import com.estrongs.android.pop.utils.cu;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.d.e;
import com.estrongs.android.util.am;
import com.estrongs.android.view.WebViewWrapper;
import com.estrongs.fs.d;

class cj
  implements View.OnClickListener
{
  cj(aa paramaa, ShortcutFormat paramShortcutFormat, String paramString) {}
  
  public void onClick(View paramView)
  {
    try
    {
      paramView = a.targetLocation;
      if (am.t(paramView))
      {
        paramView = aa.a(c).b(paramView);
        if ((paramView == null) || (!(paramView instanceof WebViewWrapper)) || (!cu.a(b))) {
          return;
        }
        ((WebViewWrapper)paramView).a(ad.a(FexApplication.a()).aL(), b);
        return;
      }
      if (!am.bb(paramView)) {
        break label151;
      }
      paramView = am.C(paramView);
      if (!d.a(aa.a(c)).h(paramView)) {
        break label138;
      }
      if (e.c() < 12)
      {
        aa.a(c).e(paramView);
        return;
      }
    }
    catch (Exception paramView)
    {
      paramView.printStackTrace();
      return;
    }
    aa.a(c).a(2131428177);
    return;
    label138:
    aa.a(c).a(null, paramView);
    return;
    label151:
    if (am.bQ(paramView))
    {
      aa.a(c).d(paramView);
      return;
    }
    if (d.a(aa.a(c)).b(paramView))
    {
      if ((d.a(aa.a(c)).h(paramView)) || (am.S(paramView)) || (am.T(paramView)) || (am.U(paramView)) || (am.W(paramView)))
      {
        if (e.c() < 12)
        {
          aa.a(c).e(paramView);
          return;
        }
        aa.a(c).a(2131428177);
        return;
      }
      aa.a(c).a(null, paramView);
      return;
    }
    aa.a(c).a(2131427399);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.a.cj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */