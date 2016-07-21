package com.duapps.ad.offerwall.ui;

import android.view.View;
import android.view.View.OnClickListener;
import com.dianxinos.a.a.d;
import com.duapps.ad.entity.AdData;
import com.duapps.ad.stats.c;
import com.duapps.ad.stats.p;

public class h
  implements View.OnClickListener
{
  public h(g paramg) {}
  
  public void onClick(View paramView)
  {
    paramView = paramView.findViewById(d.duapps_ad_toolbox_item_action_tv).getTag();
    if ((paramView != null) && ((paramView instanceof AdData)))
    {
      if (g.a(a) == null) {
        g.a(a, new c(g.b(a)));
      }
      g.a(a).a(new p((AdData)paramView));
    }
  }
}

/* Location:
 * Qualified Name:     com.duapps.ad.offerwall.ui.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */