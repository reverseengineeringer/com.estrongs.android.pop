package com.duapps.ad.offerwall.ui;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListView;
import com.duapps.ad.entity.AdData;
import com.duapps.ad.stats.p;

class c
  implements AdapterView.OnItemClickListener
{
  c(OfferWallAct paramOfferWallAct) {}
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if (paramInt < OfferWallAct.a(a).getHeaderViewsCount()) {}
    do
    {
      do
      {
        return;
        paramInt -= OfferWallAct.a(a).getHeaderViewsCount();
      } while (paramInt >= OfferWallAct.b(a).getCount());
      paramAdapterView = OfferWallAct.b(a).getItem(paramInt);
    } while (!(paramAdapterView instanceof AdData));
    if (OfferWallAct.c(a) == null) {
      OfferWallAct.a(a, new com.duapps.ad.stats.c(a.getApplicationContext()));
    }
    OfferWallAct.c(a).a(new p((AdData)paramAdapterView));
  }
}

/* Location:
 * Qualified Name:     com.duapps.ad.offerwall.ui.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */