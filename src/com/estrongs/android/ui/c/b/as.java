package com.estrongs.android.ui.c.b;

import android.view.View;
import android.view.View.OnClickListener;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.pcs.r;
import com.estrongs.android.util.a;
import com.estrongs.android.util.am;

class as
  implements View.OnClickListener
{
  as(u paramu) {}
  
  public void onClick(View paramView)
  {
    paramView = am.k() + "/files/";
    at localat = new at(this, paramView);
    if (r.a().b())
    {
      a.a.b(paramView);
      a.a("Home_PCS", "Home_PCS");
      a.b("Home_PCS_UV", "Home_PCS_UV");
      return;
    }
    if ((ad.a(a.a).c()) || (ad.a(a.a).e()))
    {
      a.a.a(new au(this, localat));
      return;
    }
    a.a.a(new av(this, localat));
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.c.b.as
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */